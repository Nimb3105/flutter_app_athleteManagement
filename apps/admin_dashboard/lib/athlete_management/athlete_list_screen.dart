import 'package:flutter/material.dart';
import 'package:core/core.dart';

class AthleteListScreen extends StatelessWidget {
  const AthleteListScreen({super.key});

  // Helper method to fetch user data
  Future<User> _fetchUser(BuildContext context, String userId) async {
  final userBloc = UserBloc(userRepository: RepositoryProvider.of(context)); // Tạo mới UserBloc
  userBloc.add(UserEvent.getUserById(userId));
  final state = await userBloc.stream.firstWhere(
    (state) => state is LoadedUser || state is User_Error,
    orElse: () => throw Exception('No matching state'),
  ).timeout(Duration(seconds: 5), onTimeout: () => throw Exception('Timeout'));
  if (state is LoadedUser) {
    return state.user;
  } else if (state is User_Error) {
    throw Exception(state.message);
  }
  throw Exception('Không thể tải thông tin người dùng');
}

  // Helper method to fetch sport names for an athlete
  Future<List<String>> _fetchSportNames(BuildContext context, String userId) async {
    final sportUserBloc = context.read<SportUserBloc>();
    sportUserBloc.add(SportUserEvent.getAllSportUserByUserId(userId));
    final state = await sportUserBloc.stream.firstWhere(
      (state) => state is LoadedSportUsers || state is Sport_User_Error,
    );
    if (state is LoadedSportUsers) {
      return state.sportUsers.map((sa) => state.sports[sa.sportId]?.name ?? 'N/A').toList();
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
          create: (context) => AthleteBloc(
            athleteRepository: RepositoryProvider.of(context),
          )..add(const AthleteEvent.getAllAthletes(page: 1, limit: 10)),
        ),
        BlocProvider(
          create: (context) => UserBloc(userRepository: RepositoryProvider.of(context)),
        ),
        BlocProvider(
          create: (context) => SportUserBloc(
            sportUserRepository: RepositoryProvider.of(context),
            sportRepository: RepositoryProvider.of(context),
          ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AthleteBloc, AthleteState>(
          listener: (context, state) {
            if (state is Athlete_Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              context.read<AthleteBloc>().add(
                const AthleteEvent.getAllAthletes(page: 1, limit: 10),
              ); // Refresh danh sách sau khi xóa
            } else if (state is Athlete_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Lỗi: ${state.message}')),
              );
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<Athlete> athletes = [];

            if (state is LoadedAthletes) {
              currentPage = state.currentPage;
              hasMore = state.hasMore;
              athletes = state.athletes;
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
                      rows: athletes.isEmpty && state is! Athlete_Loading
                          ? [
                              const DataRow(
                                cells: [
                                  DataCell(
                                    Center(child: Text('Không có vận động viên nào')),
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
                          : athletes.map((athlete) {
                              final userFuture = userCache.putIfAbsent(
                                athlete.userId,
                                () => _fetchUser(context, athlete.userId),
                              );
                              
                              final sportNamesFuture = sportNamesCache.putIfAbsent(
                                athlete.userId,
                                () => _fetchSportNames(context, athlete.userId),
                              );

                              return DataRow(
                                cells: [
                                  DataCell(
                                    FutureBuilder<User>(
                                      future: userFuture,
                                      builder: (context, snapshot) {
                                        // Thêm log
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return const Text('Đang tải...');
                                        } else if (snapshot.hasError) {
                                          return Text('Lỗi: ${snapshot.error}');
                                        } else if (snapshot.hasData) {
                                          return Text(snapshot.data!.fullName);
                                        }
                                        return const Text('Không tìm thấy người dùng');
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    FutureBuilder<User>(
                                      future: userFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return const Text('Đang tải...');
                                        } else if (snapshot.hasError) {
                                          return Text('Lỗi: ${snapshot.error}');
                                        } else if (snapshot.hasData) {
                                          return Text(snapshot.data!.gender);
                                        }
                                        return const Text('Không tìm thấy người dùng');
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    FutureBuilder<User>(
                                      future: userFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return const Text('Đang tải...');
                                        } else if (snapshot.hasError) {
                                          return Text('Lỗi: ${snapshot.error}');
                                        } else if (snapshot.hasData) {
                                          return Text(formatUtcToLocal(snapshot.data!.dateOfBirth));
                                        }
                                        return const Text('Không tìm thấy người dùng');
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    FutureBuilder<List<String>>(
                                      future: sportNamesFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
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
                                        return const Text('Không tìm thấy môn thể thao');
                                      },
                                    ),
                                  ),
                                  DataCell(Text(athlete.athleteType)),
                                  DataCell(
                                    FutureBuilder<User>(
                                      future: userFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return const Text('Đang tải...');
                                        } else if (snapshot.hasError) {
                                          return Text('Lỗi: ${snapshot.error}');
                                        } else if (snapshot.hasData) {
                                          return Text(formatUtcToLocal(snapshot.data!.createdAt));
                                        }
                                        return const Text('Không tìm thấy người dùng');
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    FutureBuilder<User>(
                                      future: userFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return const Text('Đang tải...');
                                        } else if (snapshot.hasError) {
                                          return Text('Lỗi: ${snapshot.error}');
                                        } else if (snapshot.hasData) {
                                          return Text(formatUtcToLocal(snapshot.data!.updatedAt));
                                        }
                                        return const Text('Không tìm thấy người dùng');
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
                                            color: Color.fromARGB(255, 174, 180, 186),
                                          ),
                                          tooltip: 'Sửa',
                                          onPressed: () {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                                content: Text('Chức năng sửa đang được phát triển'),
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
                                            if (athlete.id != null) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                  title: const Text('Xác nhận xóa'),
                                                  content: FutureBuilder<User>(
                                                    future: userFuture,
                                                    builder: (context, snapshot) {
                                                      String name = athlete.id!;
                                                      if (snapshot.hasData) {
                                                        name = snapshot.data!.fullName;
                                                      }
                                                      return Text('Bạn có chắc muốn xóa vận động viên $name?');
                                                    },
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () => Navigator.pop(context),
                                                      child: const Text('Hủy'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        context.read<AthleteBloc>().add(
                                                              AthleteEvent.deleteAthlete(athlete.id!),
                                                            );
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        'Xóa',
                                                        style: TextStyle(color: Colors.red),
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
                if (state is Athlete_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is Athlete_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedAthlete)
                  const Center(child: Text('Không hiển thị vận động viên đơn')),
                if (state is! Athlete_Loading && state is! Athlete_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: currentPage > 1
                              ? () {
                                  context.read<AthleteBloc>().add(
                                        AthleteEvent.getAllAthletes(
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
                          onPressed: hasMore
                              ? () {
                                  context.read<AthleteBloc>().add(
                                        AthleteEvent.getAllAthletes(
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