// import 'package:flutter/material.dart';
// import 'package:core/core.dart';
// import 'package:data_table_2/data_table_2.dart';
// import 'package:intl/intl.dart';

// class CoachListScreen extends StatelessWidget {
//   const CoachListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const int limit = 10;

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create:
//               (context) => CoachBloc(
//                 coachRepository: RepositoryProvider.of(context),
//               )..add(const CoachEvent.getAllCoaches(page: 1, limit: limit)),
//         ),
//         BlocProvider(
//           create:
//               (context) =>
//                   UserBloc(userRepository: RepositoryProvider.of(context)),
//         ),
       
//         BlocProvider(
//           create:
//               (context) =>
//                   SportBloc(sportRepository: RepositoryProvider.of(context)),
//         ),
//       ],
//       child: MultiBlocListener(
//         listeners: [
//           BlocListener<CoachBloc, CoachState>(
//             listener: (context, coachState) {
//               if (coachState is LoadedCoaches) {
//                 for (var coach in coachState.coaches) {
//                   context.read<UserBloc>().add(
//                     UserEvent.getUserById(coach.userId),
//                   );
                  
//                 }
//               }
//               if (coachState is Coach_Success) {
//                 ScaffoldMessenger.of(
//                   context,
//                 ).showSnackBar(SnackBar(content: Text(coachState.message)));
//                 context.read<CoachBloc>().add(
//                   const CoachEvent.getAllCoaches(page: 1, limit: limit),
//                 );
//               }
//               if (coachState is Coach_Error) {
//                 ScaffoldMessenger.of(
//                   context,
//                 ).showSnackBar(SnackBar(content: Text(coachState.message)));
//               }
//             },
//           ),
//           BlocListener<UserBloc, UserState>(
//             listener: (context, userState) {
//               if (userState is User_Error) {
//                 ScaffoldMessenger.of(
//                   context,
//                 ).showSnackBar(SnackBar(content: Text(userState.message)));
//               }
//             },
//           ),
         
//           BlocListener<SportBloc, SportState>(
//             listener: (context, sportState) {
//               if (sportState is Sport_Error) {
//                 ScaffoldMessenger.of(
//                   context,
//                 ).showSnackBar(SnackBar(content: Text(sportState.message)));
//               }
//             },
//           ),
//         ],
//         child: BlocBuilder<CoachBloc, CoachState>(
//           builder: (context, coachState) {
//             return BlocBuilder<UserBloc, UserState>(
//               builder: (context, userState) {
//                 return BlocBuilder<SportUserBloc, SportUserState>(
//                   builder: (context, sportUserState) {
//                     return BlocBuilder<SportBloc, SportState>(
//                       builder: (context, sportState) {
//                         // Map to store user data and errors by userId
//                         Map<String, User?> userMap = {};
//                         Map<String, String?> userErrorMap = {};

//                         // Map to store sport user data by userId
//                         Map<String, List<SportUser>> sportUserMap = {};

//                         // Map to store sport data and errors by sportId
//                         Map<String, Sport?> sportMap = {};
//                         Map<String, String?> sportErrorMap = {};

//                         // Handle UserState
//                         if (userState is LoadedUser) {
//                           userMap[userState.user.id ?? ''] = userState.user;
//                         } else if (userState is LoadedUsers) {
//                           for (var user in userState.users) {
//                             userMap[user.id ?? ''] = user;
//                           }
//                         } else if (userState is LoadedMultipleUsers) {
//                           userMap = userState.users;
//                           userErrorMap = userState.errors;
//                         } else if (userState is User_Error) {
//                           userErrorMap[userState.message] = userState.message;
//                         }

//                         // Handle SportUserState
//                         if (sportUserState is LoadedSportUser) {
//                           if (!sportUserMap.containsKey(
//                             sportUserState.sportUser.userId,
//                           )) {
//                             sportUserMap[sportUserState.sportUser.userId] = [];
//                           }
//                           sportUserMap[sportUserState.sportUser.userId]!.add(
//                             sportUserState.sportUser,
//                           );
//                         } else if (sportUserState is LoadedSportUsers) {
//                           for (var sportUser in sportUserState.sportUsers) {
//                             if (!sportUserMap.containsKey(sportUser.userId)) {
//                               sportUserMap[sportUser.userId] = [];
//                             }
//                             sportUserMap[sportUser.userId]!.add(sportUser);
//                           }
//                           sportMap.addAll(sportUserState.sports);
//                         } else if (sportUserState is LoadedMultipleSportUsers) {
//                           sportUserMap = sportUserState.sportUsers;
//                           sportMap.addAll(sportUserState.sports);
//                         }

//                         // Handle SportState
//                         if (sportState is LoadedSport) {
//                           sportMap[sportState.sport.id ?? ''] =
//                               sportState.sport;
//                         } else if (sportState is LoadedSports) {
//                           for (var sport in sportState.sports) {
//                             sportMap[sport.id ?? ''] = sport;
//                           }
//                         } else if (sportState is Sport_Error) {
//                           sportErrorMap[sportState.message] =
//                               sportState.message;
//                         }

//                         // Handle CoachState
//                         if (coachState is Coach_Initial ||
//                             coachState is Coach_Loading) {
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         }
//                         if (coachState is LoadedCoach) {
//                           return const Center(child: Text('Unexpected state'));
//                         }
//                         if (coachState is LoadedCoaches) {
//                           return _buildDataTable(
//                             context,
//                             coachState.coaches,
//                             coachState.currentPage,
//                             coachState.limit,
//                             coachState.hasMore,
//                             userMap,
//                             userErrorMap,
//                             sportUserMap,
//                             sportMap,
//                             sportErrorMap,
//                           );
//                         }
//                         if (coachState is Coach_Error) {
//                           return Center(
//                             child: Text('Coach Error: ${coachState.message}'),
//                           );
//                         }
//                         if (coachState is Coach_Success) {
//                           return const Center(child: Text('Unexpected state'));
//                         }
//                         return const Center(child: Text('Unknown state'));
//                       },
//                     );
//                   },
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildDataTable(
//     BuildContext context,
//     List<Coach> coaches,
//     int currentPage,
//     int limit,
//     bool hasMore,
//     Map<String, User?> userMap,
//     Map<String, String?> userErrorMap,
//     Map<String, List<SportUser>> sportUserMap,
//     Map<String, Sport?> sportMap,
//     Map<String, String?> sportErrorMap,
//   ) {
//     final DateFormat dateFormat = DateFormat('dd/MM/yyyy HH:mm');
//     return Column(
//       children: [
//         Expanded(
//           child: DataTable2(
//             columnSpacing: 12,
//             horizontalMargin: 12,
//             minWidth: 900,
//             columns: const [
//               DataColumn2(label: Text('Coach-ID')),
//               DataColumn2(label: Text('User-ID')),
//               DataColumn2(label: Text('Họ và tên')),
//               DataColumn2(label: Text('Giới tính')),
//               DataColumn2(label: Text('Ngày sinh')),
//               DataColumn2(label: Text('Môn thể thao')),
//               DataColumn2(label: Text('Cấp độ')),
//               DataColumn2(label: Text('Ngày tạo')),
//               DataColumn2(label: Text('Ngày cập nhật')),
//               DataColumn2(label: Text('Tác vụ')),
//             ],
//             rows:
//                 coaches.isEmpty
//                     ? [
//                       const DataRow2(
//                         cells: [
//                           DataCell(
//                             Center(child: Text('Không có huấn luyện viên nào')),
//                           ),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                           DataCell(SizedBox.shrink()),
//                         ],
//                       ),
//                     ]
//                     : coaches.map((coach) {
//                       return DataRow2(
//                         onTap: () {
//                           // Navigator.push(
//                           //   context,
//                           //   MaterialPageRoute(
//                           //     builder:
//                           //         (_) =>
//                           //             CoachDetailScreen(userId: coach.userId),
//                           //   ),
//                           // );
                          
//                         },
//                         cells: [
//                           DataCell(Text(coach.id ?? 'N/A')),
//                           DataCell(Text(coach.userId)),
//                           DataCell(
//                             Text(
//                               userMap[coach.userId]?.fullName ??
//                                   (userErrorMap[coach.userId] != null
//                                       ? 'Error: ${userErrorMap[coach.userId]}'
//                                       : 'Loading...'),
//                             ),
//                           ),
//                           DataCell(
//                             Text(
//                               userMap[coach.userId]?.gender ??
//                                   (userErrorMap[coach.userId] != null
//                                       ? 'Error: ${userErrorMap[coach.userId]}'
//                                       : 'Loading...'),
//                             ),
//                           ),
//                           DataCell(
//                             Text(
//                               userMap[coach.userId]?.dateOfBirth != null
//                                   ? dateFormat.format(
//                                     userMap[coach.userId]!.dateOfBirth,
//                                   )
//                                   : (userErrorMap[coach.userId] != null
//                                       ? 'Error: ${userErrorMap[coach.userId]}'
//                                       : 'Loading...'),
//                             ),
//                           ),
//                           DataCell(
//                             sportUserMap[coach.userId]?.isNotEmpty == true
//                                 ? Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children:
//                                       sportUserMap[coach.userId]!.map((
//                                         sportUser,
//                                       ) {
//                                         return Text(
//                                           sportMap[sportUser.sportId]?.name ??
//                                               (sportErrorMap[sportUser
//                                                           .sportId] !=
//                                                       null
//                                                   ? 'Error: ${sportErrorMap[sportUser.sportId]}'
//                                                   : 'Loading...'),
//                                         );
//                                       }).toList(),
//                                 )
//                                 : const Text('N/A'),
//                           ),
//                           DataCell(Text(coach.level)),
//                           DataCell(
//                             Text(
//                               userMap[coach.userId]?.createdAt != null
//                                   ? dateFormat.format(
//                                     userMap[coach.userId]!.createdAt,
//                                   )
//                                   : (userErrorMap[coach.userId] != null
//                                       ? 'Error: ${userErrorMap[coach.userId]}'
//                                       : 'Loading...'),
//                             ),
//                           ),
//                           DataCell(
//                             Text(
//                               userMap[coach.userId]?.updatedAt != null
//                                   ? dateFormat.format(
//                                     userMap[coach.userId]!.updatedAt,
//                                   )
//                                   : (userErrorMap[coach.userId] != null
//                                       ? 'Error: ${userErrorMap[coach.userId]}'
//                                       : 'Loading...'),
//                             ),
//                           ),
//                           DataCell(
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(
//                                     Icons.edit,
//                                     color: Color.fromARGB(255, 174, 180, 186),
//                                   ),
//                                   tooltip: 'Sửa',
//                                   onPressed: () {
//                                     ScaffoldMessenger.of(context).showSnackBar(
//                                       const SnackBar(
//                                         content: Text(
//                                           'Chức năng sửa đang được phát triển',
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                                 IconButton(
//                                   icon: const Icon(
//                                     Icons.delete,
//                                     color: Colors.red,
//                                   ),
//                                   tooltip: 'Xóa',
//                                   onPressed: () {
//                                     if (coach.id != null) {
//                                       showDialog(
//                                         context: context,
//                                         builder:
//                                             (context) => AlertDialog(
//                                               title: const Text('Xác nhận xóa'),
//                                               content: Text(
//                                                 'Bạn có chắc muốn xóa huấn luyện viên ${userMap[coach.userId]?.fullName ?? coach.id}?',
//                                               ),
//                                               actions: [
//                                                 TextButton(
//                                                   onPressed:
//                                                       () => Navigator.pop(
//                                                         context,
//                                                       ),
//                                                   child: const Text('Hủy'),
//                                                 ),
//                                                 TextButton(
//                                                   onPressed: () {
//                                                     context
//                                                         .read<CoachBloc>()
//                                                         .add(
//                                                           CoachEvent.deleteCoach(
//                                                             coach.id!,
//                                                           ),
//                                                         );
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: const Text(
//                                                     'Xóa',
//                                                     style: TextStyle(
//                                                       color: Colors.red,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                       );
//                                     }
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       );
//                     }).toList(),
//           ),
//         ),
//         _buildPagination(context, currentPage, limit, hasMore),
//       ],
//     );
//   }

//   Widget _buildPagination(
//     BuildContext context,
//     int currentPage,
//     int limit,
//     bool hasMore,
//   ) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed:
//               currentPage > 1
//                   ? () {
//                     context.read<CoachBloc>().add(
//                       CoachEvent.getAllCoaches(
//                         page: currentPage - 1,
//                         limit: limit,
//                       ),
//                     );
//                   }
//                   : null,
//           child: const Text('Previous'),
//         ),
//         const SizedBox(width: 16),
//         Text('Page $currentPage'),
//         const SizedBox(width: 16),
//         ElevatedButton(
//           onPressed:
//               hasMore
//                   ? () {
//                     context.read<CoachBloc>().add(
//                       CoachEvent.getAllCoaches(
//                         page: currentPage + 1,
//                         limit: limit,
//                       ),
//                     );
//                   }
//                   : null,
//           child: const Text('Next'),
//         ),
//       ],
//     );
//   }
// }
