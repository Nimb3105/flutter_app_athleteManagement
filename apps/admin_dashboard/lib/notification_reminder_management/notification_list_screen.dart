import 'package:flutter/material.dart';
import 'package:core/core.dart';

class CustomNotificationListScreen extends StatelessWidget {
  const CustomNotificationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => CustomNotificationBloc(
                notificationRepository: RepositoryProvider.of(context),
              )..add(
                const CustomNotificationEvent.getAllCustomNotifications(
                  page: 1,
                  limit: 10,
                ),
              ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<CustomNotificationBloc, CustomNotificationState>(
          listener: (context, state) {
            if (state is Notification_Success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              context.read<CustomNotificationBloc>().add(
                const CustomNotificationEvent.getAllCustomNotifications(
                  page: 1,
                  limit: 10,
                ),
              ); // Refresh danh sách sau khi xóa
            } else if (state is Notification_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<CustomNotification> notifications = [];

            if (state is LoadedCustomNotification) {
              currentPage = state.curentPage;
              hasMore = state.hasMore;
              notifications = state.customNotifications;
            }

            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Nội dung',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Trạng thái',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày gửi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tác vụ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      rows:
                          notifications.isEmpty &&
                                  state is! Notification_Loading
                              ? [
                                const DataRow(
                                  cells: [
                                    DataCell(
                                      Center(
                                        child: Text('Không có thông báo nào'),
                                      ),
                                    ),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                  ],
                                ),
                              ]
                              : notifications.map((notification) {
                                return DataRow(
                                  cells: [
                                    DataCell(Text(notification.content)),
                                    DataCell(Text(notification.status)),
                                    DataCell(
                                      Text(
                                        formatUtcToLocal(notification.sentDate),
                                      ),
                                    ),
                                    DataCell(
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.check_circle,
                                              color: Color.fromARGB(
                                                255,
                                                174,
                                                180,
                                                186,
                                              ),
                                            ),
                                            tooltip: 'Đánh dấu đã đọc',
                                            onPressed:
                                                notification.status == 'Unread'
                                                    ? () {
                                                      if (notification.userId !=
                                                          null) {
                                                        context
                                                            .read<
                                                              CustomNotificationBloc
                                                            >()
                                                            .add(
                                                              CustomNotificationEvent.markNotificationsAsRead(
                                                                notification
                                                                    .userId!,
                                                              ),
                                                            );
                                                      }
                                                    }
                                                    : null,
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                            tooltip: 'Xóa',
                                            onPressed: () {
                                              if (notification.id != null) {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                        title: const Text(
                                                          'Xác nhận xóa',
                                                        ),
                                                        content: Text(
                                                          'Bạn có chắc muốn xóa thông báo "${notification.content}"?',
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                            onPressed:
                                                                () =>
                                                                    Navigator.pop(
                                                                      context,
                                                                    ),
                                                            child: const Text(
                                                              'Hủy',
                                                            ),
                                                          ),
                                                          TextButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                    CustomNotificationBloc
                                                                  >()
                                                                  .add(
                                                                    CustomNotificationEvent.deleteNotification(
                                                                      notification
                                                                          .id!,
                                                                    ),
                                                                  );
                                                              Navigator.pop(
                                                                context,
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Xóa',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                    ),
                  ),
                ),
                if (state is Notification_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is Notification_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedNotification)
                  const Center(child: Text('Không hiển thị thông báo đơn')),
                if (state is! Notification_Loading &&
                    state is! Notification_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed:
                              currentPage > 1
                                  ? () {
                                    context.read<CustomNotificationBloc>().add(
                                      CustomNotificationEvent.getAllCustomNotifications(
                                        page: currentPage - 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Previous'),
                        ),
                        const SizedBox(width: 16),
                        Text('Trang $currentPage'),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed:
                              hasMore
                                  ? () {
                                    context.read<CustomNotificationBloc>().add(
                                      CustomNotificationEvent.getAllCustomNotifications(
                                        page: currentPage + 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
