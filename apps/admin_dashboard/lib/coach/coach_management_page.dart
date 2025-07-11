import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:data_table_2/data_table_2.dart';

class CoachManagementPage extends StatefulWidget {
  const CoachManagementPage({super.key});

  @override
  State<CoachManagementPage> createState() => _CoachManagementPageState();
}

class _CoachManagementPageState extends State<CoachManagementPage> {
  final int _limit = 10; // Số lượng huấn luyện viên trên mỗi trang

  @override
  void initState() {
    super.initState();
    // Tải trang đầu tiên với vai trò "Huấn luyện viên"
    _loadCoaches(1);
  }

  void _loadCoaches(int page) {
    context.read<UserBloc>().add(
      UserEvent.getUsersByRoleWithPagination(
        role: 'Huấn luyện viên', // Chỉ cần thay đổi role ở đây
        page: page,
        limit: _limit,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            // Chỉ hiển thị loading nếu chưa có dữ liệu
            if (state is User_Loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is User_Error) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Đã xảy ra lỗi: ${state.message}'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => _loadCoaches(1),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              );
            }

            if (state is LoadedUsers) {
              // Quan trọng: Kiểm tra xem dữ liệu trong state có phải là của HLV không
              if (state.users.isEmpty ||
                  state.users.first.role != 'Huấn luyện viên') {
                // Nếu state đang giữ dữ liệu của VĐV, ta sẽ thấy loading
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Danh sách Huấn luyện viên',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Thêm mới'),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Bảng dữ liệu
                  Expanded(
                    child: DataTable2(
                      columnSpacing: 20,
                      minWidth: 800,
                      columns: const [
                        DataColumn2(label: Text('Ảnh'), fixedWidth: 60),
                        DataColumn2(
                          label: Text('Họ và Tên'),
                          size: ColumnSize.L,
                        ),
                        DataColumn2(label: Text('Email'), size: ColumnSize.L),
                        DataColumn2(
                          label: Text('Số điện thoại'),
                          size: ColumnSize.M,
                        ),
                        DataColumn2(
                          label: Text('Giới tính'),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: Text('Hành động'),
                          fixedWidth: 120,
                          numeric: true,
                        ),
                      ],
                      rows: List<DataRow>.generate(state.users.length, (index) {
                        final user = state.users[index];
                        return DataRow(
                          cells: [
                            DataCell(
                              CircleAvatar(
                                backgroundImage:
                                    user.imageUrl.isNotEmpty
                                        ? NetworkImage(user.imageUrl)
                                        : null,
                                child:
                                    user.imageUrl.isEmpty
                                        ? const Icon(Icons.person)
                                        : null,
                              ),
                            ),
                            DataCell(Text(user.fullName)),
                            DataCell(Text(user.email)),
                            DataCell(Text(user.phoneNumber)),
                            DataCell(Text(user.gender)),
                            DataCell(
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  // Nút phân trang
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Trang: ${state.currentPage}"),
                      IconButton(
                        icon: const Icon(Icons.chevron_left),
                        onPressed:
                            state.currentPage > 1
                                ? () => _loadCoaches(state.currentPage - 1)
                                : null,
                      ),
                      IconButton(
                        icon: const Icon(Icons.chevron_right),
                        onPressed:
                            state.hasMore
                                ? () => _loadCoaches(state.currentPage + 1)
                                : null,
                      ),
                    ],
                  ),
                ],
              );
            }
            return const Center(child: Text("Chọn một mục để xem."));
          },
        ),
      ),
    );
  }
}
