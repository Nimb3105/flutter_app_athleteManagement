// import 'package:flutter/material.dart';
// import 'package:core/core.dart';

// class CoachListScreen extends StatelessWidget {
//   const CoachListScreen({super.key});

//   // Helper method to fetch user data
//   Future<User> _fetchUser(BuildContext context, String userId) async {
//     final userBloc = UserBloc(userRepository: RepositoryProvider.of(context));
//     userBloc.add(UserEvent.getUserById(userId));
//     final state = await userBloc.stream.firstWhere(
//       (state) => state is LoadedUser || state is User_Error,
//     );
//     if (state is LoadedUser) {
//       return state.user;
//     } else if (state is User_Error) {
//       throw Exception(state.message);
//     }
//     throw Exception('Không thể tải thông tin người dùng');
//   }

//   // Helper method to fetch sport names for a coach
//   Future<List<String>> _fetchSportNames(
//     BuildContext context,
//     String userId,
//   ) async {
//     final sportUserBloc = context.read<SportUserBloc>();
//     sportUserBloc.add(SportUserEvent.getAllSportUserByUserId(userId));
//     final state = await sportUserBloc.stream.firstWhere(
//       (state) => state is LoadedSportUsers || state is Sport_User_Error,
//     );
//     if (state is LoadedSportUsers) {
//       return state.sportUsers
//           .map((sa) => state.sports[sa.sportId]?.name ?? 'N/A')
//           .toList();
//     } else if (state is Sport_User_Error) {
//       throw Exception(state.message);
//     }
//     return [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Cache for user and sport data to avoid redundant fetches
//     final userCache = <String, Future<User>>{};
//     final sportNamesCache = <String, Future<List<String>>>{};

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create:
//               (context) =>
//                   CoachBloc(coachRepository: RepositoryProvider.of(context))
//                     ..add(const CoachEvent.getAllCoaches(page: 1, limit: 10)),
//         ),
//         BlocProvider(
//           create:
//               (context) =>
//                   UserBloc(userRepository: RepositoryProvider.of(context)),
//         ),
//         BlocProvider(
//           create:
//               (context) => SportUserBloc(
//                 sportUserRepository: RepositoryProvider.of(context),
//                 sportRepository: RepositoryProvider.of(context),
//               ),
//         ),
//       ],
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: BlocConsumer<CoachBloc, CoachState>(
//           listener: (context, state) {
//             if (state is Coach_Success) {
//               ScaffoldMessenger.of(
//                 context,
//               ).showSnackBar(SnackBar(content: Text(state.message)));
//               context.read<CoachBloc>().add(
//                 const CoachEvent.getAllCoaches(page: 1, limit: 10),
//               ); // Refresh danh sách sau khi xóa
//             } else if (state is Coach_Error) {
//               ScaffoldMessenger.of(
//                 context,
//               ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
//             }
//           },
//           builder: (context, state) {
//             int currentPage = 1;
//             bool hasMore = true;
//             List<Coach> coaches = [];

//             if (state is LoadedCoaches) {
//               currentPage = state.currentPage;
//               hasMore = state.hasMore;
//               coaches = state.coaches;
//             }

//             return Column(
//               children: [
//                 Expanded(
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: DataTable(
//                       columns: const [
//                         DataColumn(
//                           label: Text(
//                             'Họ tên',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Giới tính',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Ngày sinh',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Môn thể thao',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Cấp độ',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Ngày tạo',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Ngày cập nhật',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Text(
//                             'Tác vụ',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                       rows:
//                           coaches.isEmpty && state is! Coach_Loading
//                               ? [
//                                 const DataRow(
//                                   cells: [
//                                     DataCell(
//                                       Center(
//                                         child: Text(
//                                           'Không có huấn luyện viên nào',
//                                         ),
//                                       ),
//                                     ),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                     DataCell(SizedBox.shrink()),
//                                   ],
//                                 ),
//                               ]
//                               : coaches.map((coach) {
//                                 final userFuture = userCache.putIfAbsent(
//                                   coach.userId,
//                                   () => _fetchUser(context, coach.userId),
//                                 );
//                                 final sportNamesFuture = sportNamesCache
//                                     .putIfAbsent(
//                                       coach.userId,
//                                       () => _fetchSportNames(
//                                         context,
//                                         coach.userId,
//                                       ),
//                                     );

//                                 return DataRow(
//                                   cells: [
//                                     DataCell(
//                                       FutureBuilder<User>(
//                                         future: userFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(
//                                               snapshot.data!.fullName,
//                                             );
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy người dùng',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(
//                                       FutureBuilder<User>(
//                                         future: userFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(snapshot.data!.gender);
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy người dùng',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(
//                                       FutureBuilder<User>(
//                                         future: userFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(
//                                               formatUtcToLocal(
//                                                 snapshot.data!.dateOfBirth,
//                                               ),
//                                             );
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy người dùng',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(
//                                       FutureBuilder<List<String>>(
//                                         future: sportNamesFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(
//                                               snapshot.data!.isEmpty
//                                                   ? 'Không có môn thể thao'
//                                                   : snapshot.data!.join(', '),
//                                             );
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy môn thể thao',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(Text(coach.level)),
//                                     DataCell(
//                                       FutureBuilder<User>(
//                                         future: userFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(
//                                               formatUtcToLocal(
//                                                 snapshot.data!.createdAt,
//                                               ),
//                                             );
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy người dùng',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(
//                                       FutureBuilder<User>(
//                                         future: userFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.waiting) {
//                                             return const Text('Đang tải...');
//                                           } else if (snapshot.hasError) {
//                                             return Text(
//                                               'Lỗi: ${snapshot.error}',
//                                             );
//                                           } else if (snapshot.hasData) {
//                                             return Text(
//                                               formatUtcToLocal(
//                                                 snapshot.data!.updatedAt,
//                                               ),
//                                             );
//                                           }
//                                           return const Text(
//                                             'Không tìm thấy người dùng',
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                     DataCell(
//                                       Row(
//                                         mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           IconButton(
//                                             icon: const Icon(
//                                               Icons.edit,
//                                               color: Color.fromARGB(
//                                                 255,
//                                                 174,
//                                                 180,
//                                                 186,
//                                               ),
//                                             ),
//                                             tooltip: 'Sửa',
//                                             onPressed: () {
//                                               ScaffoldMessenger.of(
//                                                 context,
//                                               ).showSnackBar(
//                                                 const SnackBar(
//                                                   content: Text(
//                                                     'Chức năng sửa đang được phát triển',
//                                                   ),
//                                                 ),
//                                               );
//                                             },
//                                           ),
//                                           IconButton(
//                                             icon: const Icon(
//                                               Icons.delete,
//                                               color: Colors.red,
//                                             ),
//                                             tooltip: 'Xóa',
//                                             onPressed: () {
//                                               if (coach.id != null) {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (context) => AlertDialog(
//                                                         title: const Text(
//                                                           'Xác nhận xóa',
//                                                         ),
//                                                         content: FutureBuilder<
//                                                           User
//                                                         >(
//                                                           future: userFuture,
//                                                           builder: (
//                                                             context,
//                                                             snapshot,
//                                                           ) {
//                                                             String name =
//                                                                 coach.id!;
//                                                             if (snapshot
//                                                                 .hasData) {
//                                                               name =
//                                                                   snapshot
//                                                                       .data!
//                                                                       .fullName;
//                                                             }
//                                                             return Text(
//                                                               'Bạn có chắc muốn xóa huấn luyện viên $name?',
//                                                             );
//                                                           },
//                                                         ),
//                                                         actions: [
//                                                           TextButton(
//                                                             onPressed:
//                                                                 () =>
//                                                                     Navigator.pop(
//                                                                       context,
//                                                                     ),
//                                                             child: const Text(
//                                                               'Hủy',
//                                                             ),
//                                                           ),
//                                                           TextButton(
//                                                             onPressed: () {
//                                                               context
//                                                                   .read<
//                                                                     CoachBloc
//                                                                   >()
//                                                                   .add(
//                                                                     CoachEvent.deleteCoach(
//                                                                       coach.id!,
//                                                                     ),
//                                                                   );
//                                                               Navigator.pop(
//                                                                 context,
//                                                               );
//                                                             },
//                                                             child: const Text(
//                                                               'Xóa',
//                                                               style: TextStyle(
//                                                                 color:
//                                                                     Colors.red,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                 );
//                                               }
//                                             },
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 );
//                               }).toList(),
//                     ),
//                   ),
//                 ),
//                 if (state is Coach_Loading)
//                   const Center(child: CircularProgressIndicator()),
//                 if (state is Coach_Initial)
//                   const Center(child: Text('Khởi tạo...')),
//                 if (state is LoadedCoach)
//                   const Center(
//                     child: Text('Không hiển thị huấn luyện viên đơn'),
//                   ),
//                 if (state is! Coach_Loading && state is! Coach_Initial)
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed:
//                               currentPage > 1
//                                   ? () {
//                                     context.read<CoachBloc>().add(
//                                       CoachEvent.getAllCoaches(
//                                         page: currentPage - 1,
//                                         limit: 10,
//                                       ),
//                                     );
//                                   }
//                                   : null,
//                           child: const Text('Previous'),
//                         ),
//                         const SizedBox(width: 16),
//                         Text('Trang $currentPage'),
//                         const SizedBox(width: 16),
//                         ElevatedButton(
//                           onPressed:
//                               hasMore
//                                   ? () {
//                                     context.read<CoachBloc>().add(
//                                       CoachEvent.getAllCoaches(
//                                         page: currentPage + 1,
//                                         limit: 10,
//                                       ),
//                                     );
//                                   }
//                                   : null,
//                           child: const Text('Next'),
//                         ),
//                       ],
//                     ),
//                   ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:admin_dashboard/coach_management/coach_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:intl/intl.dart';

class CoachListScreen extends StatelessWidget {
  const CoachListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int limit = 10;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => CoachBloc(
                coachRepository: RepositoryProvider.of(context),
              )..add(const CoachEvent.getAllCoaches(page: 1, limit: limit)),
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
        BlocProvider(
          create:
              (context) =>
                  SportBloc(sportRepository: RepositoryProvider.of(context)),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CoachBloc, CoachState>(
            listener: (context, coachState) {
              if (coachState is LoadedCoaches) {
                for (var coach in coachState.coaches) {
                  context.read<UserBloc>().add(
                    UserEvent.getUserById(coach.userId),
                  );
                  context.read<SportUserBloc>().add(
                    SportUserEvent.getAllSportUserByUserId(coach.userId),
                  );
                }
              }
              if (coachState is Coach_Success) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(coachState.message)));
                context.read<CoachBloc>().add(
                  const CoachEvent.getAllCoaches(page: 1, limit: limit),
                );
              }
              if (coachState is Coach_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(coachState.message)));
              }
            },
          ),
          BlocListener<UserBloc, UserState>(
            listener: (context, userState) {
              if (userState is User_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(userState.message)));
              }
            },
          ),
          BlocListener<SportUserBloc, SportUserState>(
            listener: (context, sportUserState) {
              if (sportUserState is LoadedSportUsers ||
                  sportUserState is LoadedMultipleSportUsers) {
                Map<String, Sport> sports =
                    sportUserState is LoadedSportUsers
                        ? sportUserState.sports
                        : (sportUserState as LoadedMultipleSportUsers).sports;
                for (var sportId in sports.keys) {
                  context.read<SportBloc>().add(
                    SportEvent.getSportById(sportId),
                  );
                }
              }
              if (sportUserState is Sport_User_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(sportUserState.message)));
              }
            },
          ),
          BlocListener<SportBloc, SportState>(
            listener: (context, sportState) {
              if (sportState is Sport_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(sportState.message)));
              }
            },
          ),
        ],
        child: BlocBuilder<CoachBloc, CoachState>(
          builder: (context, coachState) {
            return BlocBuilder<UserBloc, UserState>(
              builder: (context, userState) {
                return BlocBuilder<SportUserBloc, SportUserState>(
                  builder: (context, sportUserState) {
                    return BlocBuilder<SportBloc, SportState>(
                      builder: (context, sportState) {
                        // Map to store user data and errors by userId
                        Map<String, User?> userMap = {};
                        Map<String, String?> userErrorMap = {};

                        // Map to store sport user data by userId
                        Map<String, List<SportUser>> sportUserMap = {};

                        // Map to store sport data and errors by sportId
                        Map<String, Sport?> sportMap = {};
                        Map<String, String?> sportErrorMap = {};

                        // Handle UserState
                        if (userState is LoadedUser) {
                          userMap[userState.user.id ?? ''] = userState.user;
                        } else if (userState is LoadedUsers) {
                          for (var user in userState.users) {
                            userMap[user.id ?? ''] = user;
                          }
                        } else if (userState is LoadedMultipleUsers) {
                          userMap = userState.users;
                          userErrorMap = userState.errors;
                        } else if (userState is User_Error) {
                          userErrorMap[userState.message] = userState.message;
                        }

                        // Handle SportUserState
                        if (sportUserState is LoadedSportUser) {
                          if (!sportUserMap.containsKey(
                            sportUserState.sportUser.userId,
                          )) {
                            sportUserMap[sportUserState.sportUser.userId] = [];
                          }
                          sportUserMap[sportUserState.sportUser.userId]!.add(
                            sportUserState.sportUser,
                          );
                        } else if (sportUserState is LoadedSportUsers) {
                          for (var sportUser in sportUserState.sportUsers) {
                            if (!sportUserMap.containsKey(sportUser.userId)) {
                              sportUserMap[sportUser.userId] = [];
                            }
                            sportUserMap[sportUser.userId]!.add(sportUser);
                          }
                          sportMap.addAll(sportUserState.sports);
                        } else if (sportUserState is LoadedMultipleSportUsers) {
                          sportUserMap = sportUserState.sportUsers;
                          sportMap.addAll(sportUserState.sports);
                        }

                        // Handle SportState
                        if (sportState is LoadedSport) {
                          sportMap[sportState.sport.id ?? ''] =
                              sportState.sport;
                        } else if (sportState is LoadedSports) {
                          for (var sport in sportState.sports) {
                            sportMap[sport.id ?? ''] = sport;
                          }
                        } else if (sportState is Sport_Error) {
                          sportErrorMap[sportState.message] =
                              sportState.message;
                        }

                        // Handle CoachState
                        if (coachState is Coach_Initial ||
                            coachState is Coach_Loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (coachState is LoadedCoach) {
                          return const Center(child: Text('Unexpected state'));
                        }
                        if (coachState is LoadedCoaches) {
                          return _buildDataTable(
                            context,
                            coachState.coaches,
                            coachState.currentPage,
                            coachState.limit,
                            coachState.hasMore,
                            userMap,
                            userErrorMap,
                            sportUserMap,
                            sportMap,
                            sportErrorMap,
                          );
                        }
                        if (coachState is Coach_Error) {
                          return Center(
                            child: Text('Coach Error: ${coachState.message}'),
                          );
                        }
                        if (coachState is Coach_Success) {
                          return const Center(child: Text('Unexpected state'));
                        }
                        return const Center(child: Text('Unknown state'));
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildDataTable(
    BuildContext context,
    List<Coach> coaches,
    int currentPage,
    int limit,
    bool hasMore,
    Map<String, User?> userMap,
    Map<String, String?> userErrorMap,
    Map<String, List<SportUser>> sportUserMap,
    Map<String, Sport?> sportMap,
    Map<String, String?> sportErrorMap,
  ) {
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy HH:mm');
    return Column(
      children: [
        Expanded(
          child: DataTable2(
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 900,
            columns: const [
              DataColumn2(label: Text('Coach-ID')),
              DataColumn2(label: Text('User-ID')),
              DataColumn2(label: Text('Họ và tên')),
              DataColumn2(label: Text('Giới tính')),
              DataColumn2(label: Text('Ngày sinh')),
              DataColumn2(label: Text('Môn thể thao')),
              DataColumn2(label: Text('Cấp độ')),
              DataColumn2(label: Text('Ngày tạo')),
              DataColumn2(label: Text('Ngày cập nhật')),
              DataColumn2(label: Text('Tác vụ')),
            ],
            rows:
                coaches.isEmpty
                    ? [
                      const DataRow2(
                        cells: [
                          DataCell(
                            Center(child: Text('Không có huấn luyện viên nào')),
                          ),
                          DataCell(SizedBox.shrink()),
                          DataCell(SizedBox.shrink()),
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
                      return DataRow2(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder:
                          //         (_) =>
                          //             CoachDetailScreen(userId: coach.userId),
                          //   ),
                          // );
                          
                        },
                        cells: [
                          DataCell(Text(coach.id ?? 'N/A')),
                          DataCell(Text(coach.userId)),
                          DataCell(
                            Text(
                              userMap[coach.userId]?.fullName ??
                                  (userErrorMap[coach.userId] != null
                                      ? 'Error: ${userErrorMap[coach.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            Text(
                              userMap[coach.userId]?.gender ??
                                  (userErrorMap[coach.userId] != null
                                      ? 'Error: ${userErrorMap[coach.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            Text(
                              userMap[coach.userId]?.dateOfBirth != null
                                  ? dateFormat.format(
                                    userMap[coach.userId]!.dateOfBirth,
                                  )
                                  : (userErrorMap[coach.userId] != null
                                      ? 'Error: ${userErrorMap[coach.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            sportUserMap[coach.userId]?.isNotEmpty == true
                                ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      sportUserMap[coach.userId]!.map((
                                        sportUser,
                                      ) {
                                        return Text(
                                          sportMap[sportUser.sportId]?.name ??
                                              (sportErrorMap[sportUser
                                                          .sportId] !=
                                                      null
                                                  ? 'Error: ${sportErrorMap[sportUser.sportId]}'
                                                  : 'Loading...'),
                                        );
                                      }).toList(),
                                )
                                : const Text('N/A'),
                          ),
                          DataCell(Text(coach.level)),
                          DataCell(
                            Text(
                              userMap[coach.userId]?.createdAt != null
                                  ? dateFormat.format(
                                    userMap[coach.userId]!.createdAt,
                                  )
                                  : (userErrorMap[coach.userId] != null
                                      ? 'Error: ${userErrorMap[coach.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            Text(
                              userMap[coach.userId]?.updatedAt != null
                                  ? dateFormat.format(
                                    userMap[coach.userId]!.updatedAt,
                                  )
                                  : (userErrorMap[coach.userId] != null
                                      ? 'Error: ${userErrorMap[coach.userId]}'
                                      : 'Loading...'),
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
                                              title: const Text('Xác nhận xóa'),
                                              content: Text(
                                                'Bạn có chắc muốn xóa huấn luyện viên ${userMap[coach.userId]?.fullName ?? coach.id}?',
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
        ),
        _buildPagination(context, currentPage, limit, hasMore),
      ],
    );
  }

  Widget _buildPagination(
    BuildContext context,
    int currentPage,
    int limit,
    bool hasMore,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed:
              currentPage > 1
                  ? () {
                    context.read<CoachBloc>().add(
                      CoachEvent.getAllCoaches(
                        page: currentPage - 1,
                        limit: limit,
                      ),
                    );
                  }
                  : null,
          child: const Text('Previous'),
        ),
        const SizedBox(width: 16),
        Text('Page $currentPage'),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed:
              hasMore
                  ? () {
                    context.read<CoachBloc>().add(
                      CoachEvent.getAllCoaches(
                        page: currentPage + 1,
                        limit: limit,
                      ),
                    );
                  }
                  : null,
          child: const Text('Next'),
        ),
      ],
    );
  }
}
