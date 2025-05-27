import 'package:flutter/material.dart';
import 'package:core/core.dart';

class CoachListScreen extends StatelessWidget {
  const CoachListScreen({super.key});

  // Helper method to fetch user data and cache results
  Future<User> _fetchUser(BuildContext context, String userId) async {
    final userBloc = context.read<UserBloc>();
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

  // Helper method to fetch sport names for an coach
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
                    ..add(const CoachEvent.getAllCoaches()),
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
              context.read<CoachBloc>().add(const CoachEvent.getAllCoaches());
            } else if (state is Coach_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            if (state is Coach_Initial) {
              return const Center(child: Text('Khởi tạo...'));
            } else if (state is Coach_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedCoaches) {
              if (state.coaches.isEmpty) {
                return const Center(child: Text('Không có vận động viên nào'));
              }
              return SingleChildScrollView(
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
                      label: Text('Môn thể thao', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    DataColumn(
                      label: Text(
                        'Loại',
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
                      state.coaches.map((coach) {
                        // Cache user and sport fetches
                        final userFuture = userCache.putIfAbsent(
                          coach.userId,
                          () => _fetchUser(context, coach.userId),
                        );
                        final sportNamesFuture = sportNamesCache.putIfAbsent(
                          coach.userId,
                          () => _fetchSportNames(context, coach.userId),
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
                                    return Text('Lỗi: ${snapshot.error}');
                                  } else if (snapshot.hasData) {
                                    return Text(snapshot.data!.fullName);
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
                                    return Text('Lỗi: ${snapshot.error}');
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
                                    return Text('Lỗi: ${snapshot.error}');
                                  } else if (snapshot.hasData) {
                                    return Text(
                                      snapshot.data!.dateOfBirth.toString(),
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
                                    return Text('Lỗi: ${snapshot.error}');
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
                                    return Text('Lỗi: ${snapshot.error}');
                                  } else if (snapshot.hasData) {
                                    return Text(
                                      snapshot.data!.createdAt.toString(),
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
                                    return Text('Lỗi: ${snapshot.error}');
                                  } else if (snapshot.hasData) {
                                    return Text(
                                      snapshot.data!.updatedAt.toString(),
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
                                      color: Colors.blue,
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
                                                content: Text(
                                                  'Bạn có chắc muốn xóa vận động viên ${coach.id}?',
                                                ),
                                                actions: [
                                                  TextButton(
                                                    onPressed:
                                                        () => Navigator.pop(
                                                          context,
                                                        ),
                                                    child: const Text('Hủy'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      context
                                                          .read<CoachBloc>()
                                                          .add(
                                                            CoachEvent.deleteCoach(
                                                              coach.id!,
                                                            ),
                                                          );
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'Xóa',
                                                      style: TextStyle(
                                                        color: Colors.red,
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
              );
            } else if (state is LoadedCoach) {
              return const Center(
                child: Text('Không hiển thị vận động viên đơn'),
              );
            }
            return const Center(child: Text('Trạng thái không xác định'));
          },
        ),
      ),
    );
  }
}
