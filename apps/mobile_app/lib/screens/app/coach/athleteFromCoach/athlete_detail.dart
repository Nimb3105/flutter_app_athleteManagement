
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/sports/sport_athlete_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_user_screen.dart';

class AthleteDetail extends StatelessWidget {
  final Athlete athlete;

  const AthleteDetail({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => UserRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => SportRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => SportAthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: context.read<UserRepository>(),
            )..add(GetUserById(athlete.userId)),
          ),
          BlocProvider(
            create: (context) => SportBloc(
              sportRepository: context.read<SportRepository>(),
            )..add(const GetAllSports()),
          ),
          BlocProvider(
            create: (context) => SportAthleteBloc(
              sportAthleteRepository: context.read<SportAthleteRepository>(),
              sportRepository: context.read<SportRepository>(),
            )..add(SportAthleteEvent.getAllSportAthleteByUserId(athlete.userId)),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Chi tiết Vận Động Viên'),
            actions: [
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'Chỉnh sửa thông tin',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tính năng đang phát triển')),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                tooltip: 'Thêm tùy chọn',
                onPressed: () => _showOptionsMenu(context),
              ),
            ],
          ),
          body: BlocBuilder<UserBloc, UserState>(
            builder: (context, userState) {
              if (userState is User_Loading) {
                return const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text('Đang tải thông tin vận động viên...'),
                    ],
                  ),
                );
              } else if (userState is LoadedUser) {
                return AthleteDetailView(
                  athlete: athlete,
                  user: userState.user,
                );
              } else if (userState is User_Error) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.error_outline, size: 48, color: Colors.red),
                      SizedBox(height: 16),
                      Text('Lỗi: ${userState.message}'),
                      SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<UserBloc>().add(GetUserById(athlete.userId));
                        },
                        icon: Icon(Icons.refresh),
                        label: Text('Thử lại'),
                      ),
                    ],
                  ),
                );
              }
              return const Center(child: Text('Đang khởi tạo...'));
            },
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MultiRepositoryProvider(
                      providers: [
                        RepositoryProvider.value(
                          value: context.read<SportRepository>(),
                        ),
                        RepositoryProvider.value(
                          value: context.read<SportAthleteRepository>(),
                        ),
                      ],
                      child: MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: context.read<SportBloc>(),
                          ),
                          BlocProvider.value(
                            value: context.read<SportAthleteBloc>(),
                          ),
                        ],
                        child: SportAthleteScreen(athlete: athlete),
                      ),
                    ),
                  ),
                );
              },
              label: const Text('Thêm môn thể thao'),
              icon: const Icon(Icons.sports),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              elevation: 4,
              tooltip: 'Thêm môn thể thao cho vận động viên',
            ),
            
          ),
          
        ),
      ),
    );
  }

  void _showOptionsMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Tùy chọn',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Lịch sử thi đấu'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tính năng đang phát triển')),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.fitness_center),
                title: const Text('Lịch tập luyện'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrainingScheduleUserScreen(athlete: athlete),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.assessment),
                title: const Text('Báo cáo hiệu suất'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tính năng đang phát triển')),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class AthleteDetailView extends StatelessWidget {
  final Athlete athlete;
  final User user;

  const AthleteDetailView({super.key, required this.athlete, required this.user});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _buildHeader(context)),
        SliverToBoxAdapter(child: _buildPersonalInfo(context)),
        SliverToBoxAdapter(child: _buildSportTitle(context)),
        SliverToBoxAdapter(child: _buildSportsList(context)),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // ignore: deprecated_member_use
            Theme.of(context).colorScheme.primary.withOpacity(0.8),
            // ignore: deprecated_member_use
            Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 58,
              // ignore: deprecated_member_use
              backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
              child: Text(
                user.fullName.isNotEmpty ? user.fullName[0].toUpperCase() : '?',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            user.fullName.isEmpty ? 'Chưa cập nhật' : user.fullName,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              athlete.athleteType.isEmpty ? 'Chưa phân loại' : athlete.athleteType,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInfoBadge(context, 'Email', user.email.isEmpty ? 'N/A' : user.email),
              _buildInfoBadge(context, 'Giới tính', user.gender.isEmpty ? 'N/A' : user.gender),
              _buildInfoBadge(context, 'Trạng thái', user.status.isEmpty ? 'N/A' : user.status),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoBadge(BuildContext context, String title, String value) {
    return Expanded(
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.white70)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white), overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }

  Widget _buildPersonalInfo(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              children: [
                Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                const Text('Thông tin cá nhân', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Divider(),
          _buildDetailItem(context, 'Số điện thoại', user.phoneNumber.isEmpty ? 'Chưa cập nhật' : user.phoneNumber, Icons.phone),
          _buildDetailItem(context, 'Email', user.email.isEmpty ? 'Chưa cập nhật' : user.email, Icons.email),
          _buildDetailItem(context, 'Giới tính', user.gender.isEmpty ? 'Chưa cập nhật' : user.gender, Icons.person_outline),
          _buildDetailItem(context, 'Trạng thái', user.status.isEmpty ? 'Chưa cập nhật' : user.status, Icons.check_circle_outline),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildDetailItem(BuildContext context, String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: value.contains('Chưa cập nhật') ? Colors.grey : Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSportTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Row(
        children: [
          Icon(Icons.sports, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 8),
          const Text('Môn thể thao', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildSportsList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<SportAthleteBloc, SportAthleteState>(
        builder: (context, sportAthleteState) {
          if (sportAthleteState is Sport_Athlete_Loading) {
            return const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()));
          } else if (sportAthleteState is LoadedSportAthletes) {
            final sportAthletes = sportAthleteState.sportAthletes;
            final sports = sportAthleteState.sports;
            if (sportAthletes.isEmpty) {
              return _buildEmptySportsList(context);
            }
            return Column(
              children: sportAthletes.map((sportAthlete) {
                final sport = sports[sportAthlete.sportId];
                return _buildSportItem(
                  context,
                  sport?.name ?? 'Không tìm thấy môn thể thao (ID: ${sportAthlete.sportId})',
                  sportAthlete.position,
                );
              }).toList(),
            );
          } else if (sportAthleteState is Sport_Athlete_Error) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, size: 48, color: Colors.red[300]),
                  const SizedBox(height: 16),
                  Text('Lỗi: ${sportAthleteState.message}'),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<SportAthleteBloc>().add(
                            SportAthleteEvent.getAllSportAthleteByUserId(athlete.userId),
                          );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }
          return _buildSportLoadingItem();
        },
      ),
    );
  }

  Widget _buildEmptySportsList(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.sports_soccer, size: 48, color: Colors.grey[400]),
            const SizedBox(height: 16),
            const Text('Chưa có môn thể thao nào', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Text(
              'Bấm nút "Thêm môn thể thao" để thêm môn thể thao cho vận động viên này',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Builder(
              builder: (context) => ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MultiRepositoryProvider(
                        providers: [
                          RepositoryProvider.value(
                            value: context.read<SportRepository>(),
                          ),
                          RepositoryProvider.value(
                            value: context.read<SportAthleteRepository>(),
                          ),
                        ],
                        child: MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: context.read<SportBloc>(),
                            ),
                            BlocProvider.value(
                              value: context.read<SportAthleteBloc>(),
                            ),
                          ],
                          child: SportAthleteScreen(athlete: athlete),
                        ),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Thêm ngay'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSportLoadingItem() {
    return const Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircularProgressIndicator(),
        title: Text('Đang tải môn thể thao...'),
      ),
    );
  }

  Widget _buildSportItem(BuildContext context, String sportName, String position) {
    final List<IconData> sportIcons = [
      Icons.sports_soccer,
      Icons.sports_basketball,
      Icons.sports_tennis,
      Icons.sports_volleyball,
      Icons.sports_football,
      Icons.sports_baseball,
    ];
    final sportIcon = sportIcons[sportName.length % sportIcons.length];

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: Icon(sportIcon, color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(sportName, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('Vị trí: ${position.isEmpty ? 'Chưa xác định' : position}', style: const TextStyle(fontSize: 14)),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Tính năng đang phát triển')),
            );
          },
        ),
      ),
    );
  }
}