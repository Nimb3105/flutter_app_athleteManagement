
// import 'package:flutter/material.dart';
// import 'package:core/core.dart';
// import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_detail.dart';

// class AthleteListView extends StatefulWidget {
//   final List<Athlete> athletes;

//   const AthleteListView({super.key, required this.athletes});

//   @override
//   State<AthleteListView> createState() => _AthleteListViewState();
// }

// class _AthleteListViewState extends State<AthleteListView> {
//   final Map<String, String> _userFullNames = {};
//   final Map<String, Color> _athleteTypeColors = {
//     'Chuyên nghiệp': Colors.green,
//     'Bán chuyên': Colors.orange,
//     'Nghiệp dư': Colors.purple,
//     'Đào tạo': Colors.blue,
//   };

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserFullNames();
//   }

//   // @override
//   // void didUpdateWidget(covariant AthleteListView oldWidget) {
//   //   super.didUpdateWidget(oldWidget);
//   //   if (oldWidget.athletes != widget.athletes) {
//   //     _fetchUserFullNames();
//   //   }
//   // }

//   void _fetchUserFullNames() {
//     final userBloc = context.read<UserBloc>();
//     for (final athlete in widget.athletes) {
//       if (!_userFullNames.containsKey(athlete.userId)) {
//         userBloc.add(GetUserById(athlete.userId));
//       }
//     }
//   }

//   // void _fetchUserFullNames() {
//   //   final userBloc = context.read<UserBloc>();
//   //   for (final athlete in widget.athletes) {
//   //     if (!_userFullNames.containsKey(athlete.userId)) {
//   //       userBloc.add(GetUserById(athlete.userId));
//   //     }
//   //   }
//   // }

//   Color _getTypeColor(String type) {
//     return _athleteTypeColors[type] ?? Colors.blueGrey;
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (widget.athletes.isEmpty) {
//       return Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
//             const SizedBox(height: 16),
//             Text(
//               'Chưa có vận động viên nào',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.grey[700],
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Danh sách vận động viên sẽ hiển thị ở đây',
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//           ],
//         ),
//       );
//     }

//     return BlocListener<UserBloc, UserState>(
//       listener: (context, state) {
//         if (state is LoadedUser) {
//           if (state.user.id != null) {
//             setState(() {
//               _userFullNames[state.user.id!] = state.user.fullName;
//             });
//           }
//         }
//       },
//       child: ListView.builder(
//         itemCount: widget.athletes.length,
//         itemBuilder: (context, index) {
//           final athlete = widget.athletes[index];
//           // ignore: unnecessary_null_comparison
//           final fullName =
//               // ignore: unnecessary_null_comparison
//               athlete.userId != null
//                   ? _userFullNames[athlete.userId] ?? 'Đang tải...'
//                   : 'Không có thông tin';
//           final athleteType = athlete.athleteType;

//           return Card(
//             margin: const EdgeInsets.only(bottom: 12),
//             child: InkWell(
//               borderRadius: BorderRadius.circular(16),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AthleteDetail(athlete: athlete),
//                   ),
//                 );
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Row(
//                   children: [
//                     _buildAvatar(fullName),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             fullName,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Row(
//                             children: [
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 2,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: _getTypeColor(athleteType)
//                                   // ignore: deprecated_member_use
//                                   .withOpacity(0.1),
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: _getTypeColor(athleteType)
//                                     // ignore: deprecated_member_use
//                                     .withOpacity(0.5),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   athleteType,
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: _getTypeColor(athleteType),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Icon(
//                                 Icons.sports_gymnastics,
//                                 size: 16,
//                                 color: Colors.grey[600],
//                               ),
//                               const SizedBox(width: 4),
//                               Text(
//                                 'Thông tin thêm',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey[600],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Icon(
//                       Icons.arrow_forward_ios,
//                       size: 16,
//                       color: Colors.grey,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildAvatar(String fullName) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Color(0xFF42A5F5), Color(0xFF1E88E5)],
//         ),
//         shape: BoxShape.circle,
//       ),
//       child: Center(
//         child: Text(
//           _getInitials(fullName),
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//       ),
//     );
//   }

//   String _getInitials(String name) {
//     final parts = name.trim().split(' ');
//     if (parts.isEmpty) return '';
//     if (parts.length == 1) return parts[0][0];
//     return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
//   }
// }


import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_detail.dart';

class AthleteListView extends StatefulWidget {
  const AthleteListView({super.key});

  @override
  State<AthleteListView> createState() => _AthleteListViewState();
}

class _AthleteListViewState extends State<AthleteListView> {
  final Map<String, String> _userFullNames = {};
  final Map<String, Color> _athleteTypeColors = {
    'Chuyên nghiệp': Colors.green,
    'Bán chuyên': Colors.orange,
    'Nghiệp dư': Colors.purple,
    'Đào tạo': Colors.blue,
  };

  @override
  void initState() {
    super.initState();
    // Không gọi _fetchUserFullNames ở đây để tránh lỗi ProviderNotFoundException
  }

  void _fetchUserFullNames(List<Athlete> athletes) {
    final userBloc = context.read<UserBloc>();
    for (final athlete in athletes) {
      if (!_userFullNames.containsKey(athlete.userId)) {
        userBloc.add(GetUserById(athlete.userId));
      }
    }
  }

  Color _getTypeColor(String type) {
    return _athleteTypeColors[type] ?? Colors.blueGrey;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is LoadedUser && state.user.id != null) {
          setState(() {
            _userFullNames[state.user.id!] = state.user.fullName;
          });
        }
      },
      child: BlocBuilder<AthleteBloc, AthleteState>(
        builder: (context, state) {
          if (state is Athlete_Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedAthletes) {
            // Gọi _fetchUserFullNames khi danh sách vận động viên được tải
            _fetchUserFullNames(state.athletes);
            if (state.athletes.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Chưa có vận động viên nào',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Danh sách vận động viên sẽ hiển thị ở đây',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              itemCount: state.athletes.length,
              itemBuilder: (context, index) {
                final athlete = state.athletes[index];
                final fullName = _userFullNames[athlete.userId] ?? 'Đang tải...';
                final athleteType = athlete.athleteType;

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AthleteDetail(athlete: athlete),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          _buildAvatar(fullName),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fullName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        // ignore: deprecated_member_use
                                        color: _getTypeColor(athleteType).withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          // ignore: deprecated_member_use
                                          color: _getTypeColor(athleteType).withOpacity(0.5),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        athleteType,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: _getTypeColor(athleteType),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.sports_gymnastics,
                                      size: 16,
                                      color: Colors.grey[600],
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Thông tin thêm',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is Athlete_Error) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, color: Colors.redAccent, size: 48),
                  const SizedBox(height: 16),
                  Text(
                    'Đã xảy ra lỗi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.message,
                    style: TextStyle(color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<AthleteBloc>().add(const AthleteEvent.getAllAthletes());
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildAvatar(String fullName) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF42A5F5), Color(0xFF1E88E5)],
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          _getInitials(fullName),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts[0][0];
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
  }
}