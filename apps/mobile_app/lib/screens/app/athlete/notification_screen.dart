// notification_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create:
            (context) => NotificationBloc(
              notificationRepository: NotificationRepository(
                baseUrl: ApiConstants.baseUrl,
              ),
            ),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String testUserId = '6824be31b8f47d8d90907228';
  bool _showNotifications = false;
  Timer? _timer;

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      debugPrint('Timer: Gọi GetNotificationsByUserId cho userId: $testUserId');
      context.read<NotificationBloc>().add(
        const GetNotificationsByUserId(testUserId),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    debugPrint(
      'Khởi tạo: Gọi GetNotificationsByUserId cho userId: $testUserId',
    );
    context.read<NotificationBloc>().add(
      const GetNotificationsByUserId(testUserId),
    );
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Trang chủ vận động viên'),
            const SizedBox(width: 8),
            BlocBuilder<NotificationBloc, NotificationState>(
              builder: (context, state) {
                int unreadCount = 0;
                if (state is LoadedNotifications) {
                  unreadCount =
                      state.notifications
                          .where((n) => n.status == 'Unread')
                          .length;
                  debugPrint('Số thông báo Unread: $unreadCount');
                }
                debugPrint('Trạng thái chuông: ${state.runtimeType}');
                return InkWell(
                  onTap: () {
                    debugPrint(
                      'Nhấn chuông: Chuyển _showNotifications = ${_showNotifications ? 'false' : 'true'}',
                    );
                    setState(() {
                      _showNotifications = !_showNotifications;
                    });
                    if (_showNotifications) {
                      debugPrint(
                        'Tạm dừng Timer và gửi MarkNotificationsAsRead',
                      );
                      _timer?.cancel(); // Tạm dừng Timer
                      context.read<NotificationBloc>().add(
                        const MarkNotificationsAsRead(testUserId),
                      );
                      // Khởi động lại Timer sau 2 giây
                      Future.delayed(const Duration(seconds: 2), _startTimer);
                    }
                  },
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: unreadCount > 0 ? Colors.yellow : null,
                      ),
                      if (unreadCount > 0)
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$unreadCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body:
          _showNotifications
              ? BlocBuilder<NotificationBloc, NotificationState>(
                builder: (context, state) {
                  debugPrint('Trạng thái thân trang: ${state.runtimeType}');
                  if (state is Notification_Initial) {
                    return const Center(
                      child: Text('Nhấn vào chuông để xem thông báo'),
                    );
                  } else if (state is Notification_Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is LoadedNotification) {
                    return Center(
                      child: Text('Thông báo: ${state.notification.content}'),
                    );
                  } else if (state is LoadedNotifications) {
                    return ListView.builder(
                      itemCount: state.notifications.length,
                      itemBuilder: (context, index) {
                        final notification = state.notifications[index];
                        return ListTile(
                          title: Text(notification.content),
                          subtitle: Text(
                            'Loại: ${notification.type} | Trạng thái: ${notification.status}',
                          ),
                          trailing: Text(
                            notification.sentDate.toLocal().toString().split(
                              '.',
                            )[0],
                          ),
                        );
                      },
                    );
                  } else if (state is Notification_Success) {
                    return Center(child: Text(state.message));
                  } else if (state is Notification_Error) {
                    return Center(child: Text('Lỗi: ${state.message}'));
                  } else {
                    return const Center(
                      child: Text('Trạng thái không xác định'),
                    );
                  }
                },
              )
              : const Center(
                child: Text('Chào mừng đến với trang chủ vận động viên'),
              ),
    );
  }
}
