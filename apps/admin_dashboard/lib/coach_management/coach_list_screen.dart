import 'package:flutter/material.dart';
import 'package:core/core.dart';

class CoachListScreen extends StatelessWidget {
  const CoachListScreen({super.key});

  // Helper method to fetch user data
  Future<User> _fetchUser(BuildContext context, String userId) async {
    final userBloc =UserBloc(userRepository: RepositoryProvider.of(context)); 
    userBloc.add(UserEvent.getUserById(userId));
    final state = await userBloc.stream.firstWhere(
      (state) => state is LoadedUser || state is User_Error,
    );
    if (state is LoadedUser) {
      return state.user;
    } else if (state is User_Error) {
      throw Exception(state.message);
    }
    throw Exception('Không thể tải thông tin người dùng');
  }

  // Helper method to fetch sport names for a coach
  Future<List<String>> _fetchSportNames(
    BuildContext context,
    String userId,
  ) async {
    final sportUserBloc = context.read<SportUserBloc>();
    sportUserBloc.add(SportUserEvent.getAllSportUserByUserId(userId));
    final state = await sportUserBloc.stream.firstWhere(
      (state) => state is LoadedSportUsers || state is Sport_User_Error,
    );
    if (state is LoadedSportUsers) {
      return state.sportUsers
          .map((sa) => state.sports[sa.sportId]?.name ?? 'N/A')
          .toList();
    } else if (state is Sport_User_Error) {
      throw Exception(state.message);
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    // Cache for user and sport data to avoid redundant fetches
    final userCache = <String, Future<User>>{};
    final sportNamesCache = <String, Future<List<String>>>{};

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  CoachBloc(coachRepository: RepositoryProvider.of(context))
                    ..add(const CoachEvent.getAllCoaches(page: 1, limit: 10)),
        ),
        BlocProvider(
          create:
              (context) =>
                  UserBloc(userRepository: RepositoryProvider.of(context)),
        ),
        BlocProvider(
          create:
              (context) => SportUserBloc(
                sportUserRepository: RepositoryProvider.of(context),
                sportRepository: RepositoryProvider.of(context),
              ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<CoachBloc, CoachState>(
          listener: (context, state) {
            if (state is Coach_Success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              context.read<CoachBloc>().add(
                const CoachEvent.getAllCoaches(page: 1, limit: 10),
              ); // Refresh danh sách sau khi xóa
            } else if (state is Coach_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<Coach> coaches = [];

            if (state is LoadedCoaches) {
              currentPage = state.currentPage;
              hasMore = state.hasMore;
              coaches = state.coaches;
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
                            'Họ tên',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Giới tính',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày sinh',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Môn thể thao',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Cấp độ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày tạo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày cập nhật',
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
                          coaches.isEmpty && state is! Coach_Loading
                              ? [
                                const DataRow(
                                  cells: [
                                    DataCell(
                                      Center(
                                        child: Text(
                                          'Không có huấn luyện viên nào',
                                        ),
                                      ),
                                    ),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                  ],
                                ),
                              ]
                              : coaches.map((coach) {
                                final userFuture = userCache.putIfAbsent(
                                  coach.userId,
                                  () => _fetchUser(context, coach.userId),
                                );
                                final sportNamesFuture = sportNamesCache
                                    .putIfAbsent(
                                      coach.userId,
                                      () => _fetchSportNames(
                                        context,
                                        coach.userId,
                                      ),
                                    );

                                return DataRow(
                                  cells: [
                                    DataCell(
                                      FutureBuilder<User>(
                                        future: userFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(
                                              snapshot.data!.fullName,
                                            );
                                          }
                                          return const Text(
                                            'Không tìm thấy người dùng',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(
                                      FutureBuilder<User>(
                                        future: userFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(snapshot.data!.gender);
                                          }
                                          return const Text(
                                            'Không tìm thấy người dùng',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(
                                      FutureBuilder<User>(
                                        future: userFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(
                                              formatUtcToLocal(
                                                snapshot.data!.dateOfBirth,
                                              ),
                                            );
                                          }
                                          return const Text(
                                            'Không tìm thấy người dùng',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(
                                      FutureBuilder<List<String>>(
                                        future: sportNamesFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(
                                              snapshot.data!.isEmpty
                                                  ? 'Không có môn thể thao'
                                                  : snapshot.data!.join(', '),
                                            );
                                          }
                                          return const Text(
                                            'Không tìm thấy môn thể thao',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(Text(coach.level)),
                                    DataCell(
                                      FutureBuilder<User>(
                                        future: userFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(
                                              formatUtcToLocal(
                                                snapshot.data!.createdAt,
                                              ),
                                            );
                                          }
                                          return const Text(
                                            'Không tìm thấy người dùng',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(
                                      FutureBuilder<User>(
                                        future: userFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text('Đang tải...');
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Lỗi: ${snapshot.error}',
                                            );
                                          } else if (snapshot.hasData) {
                                            return Text(
                                              formatUtcToLocal(
                                                snapshot.data!.updatedAt,
                                              ),
                                            );
                                          }
                                          return const Text(
                                            'Không tìm thấy người dùng',
                                          );
                                        },
                                      ),
                                    ),
                                    DataCell(
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Color.fromARGB(
                                                255,
                                                174,
                                                180,
                                                186,
                                              ),
                                            ),
                                            tooltip: 'Sửa',
                                            onPressed: () {
                                              ScaffoldMessenger.of(
                                                context,
                                              ).showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                    'Chức năng sửa đang được phát triển',
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                            tooltip: 'Xóa',
                                            onPressed: () {
                                              if (coach.id != null) {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                        title: const Text(
                                                          'Xác nhận xóa',
                                                        ),
                                                        content: FutureBuilder<
                                                          User
                                                        >(
                                                          future: userFuture,
                                                          builder: (
                                                            context,
                                                            snapshot,
                                                          ) {
                                                            String name =
                                                                coach.id!;
                                                            if (snapshot
                                                                .hasData) {
                                                              name =
                                                                  snapshot
                                                                      .data!
                                                                      .fullName;
                                                            }
                                                            return Text(
                                                              'Bạn có chắc muốn xóa huấn luyện viên $name?',
                                                            );
                                                          },
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
                                                                    CoachBloc
                                                                  >()
                                                                  .add(
                                                                    CoachEvent.deleteCoach(
                                                                      coach.id!,
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
                if (state is Coach_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is Coach_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedCoach)
                  const Center(
                    child: Text('Không hiển thị huấn luyện viên đơn'),
                  ),
                if (state is! Coach_Loading && state is! Coach_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed:
                              currentPage > 1
                                  ? () {
                                    context.read<CoachBloc>().add(
                                      CoachEvent.getAllCoaches(
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
                                    context.read<CoachBloc>().add(
                                      CoachEvent.getAllCoaches(
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
