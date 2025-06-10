import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';

class AthleteDetailScreen extends StatelessWidget {
  final String userId;

  const AthleteDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final achievementBloc = AchievementBloc(
      achievementRepository: RepositoryProvider.of(context),
    );
    final injuryBloc = InjuryBloc(
      injuryRepository: RepositoryProvider.of(context),
    );
    final healthBloc = HealthBloc(
      healthRepository: RepositoryProvider.of(context),
    );
    final progressBloc = ProgressBloc(
      progressRepository: RepositoryProvider.of(context),
    );
    final userMatchBloc = UserMatchBloc(
      userMatchRepository: RepositoryProvider.of(context),
      matchScheduleRepository: RepositoryProvider.of(context),
      tournamentRepository: RepositoryProvider.of(context),
    );
    final teamMemberBloc = TeamMemberBloc(
      teamMemberRepository: RepositoryProvider.of(context),
      teamRepository: RepositoryProvider.of(context),
      sportRepository: RepositoryProvider.of(context),
    );
    final nutritionPlanBloc = NutritionPlanBloc(
      nutritionPlanRepository: RepositoryProvider.of(context),
    );
    final performanceBloc = PerformanceBloc(
      performanceRepository: RepositoryProvider.of(context),
    );
    final coachAthleteBloc = CoachAthleteBloc(
      coachAthleteRepository: RepositoryProvider.of(context),
    );
    final sportUserBloc = SportUserBloc(
      sportUserRepository: RepositoryProvider.of(context),
      sportRepository: RepositoryProvider.of(context),
    );
    final sportBloc = SportBloc(
      sportRepository: RepositoryProvider.of(context),
    );
    final userBloc = UserBloc(userRepository: RepositoryProvider.of(context));
    final athleteBloc = AthleteBloc(
      athleteRepository: RepositoryProvider.of(context),
    );
    final matchScheduleBloc = MatchScheduleBloc(
      matchScheduleRepository: RepositoryProvider.of(context),
    );
    final tournamentBloc = TournamentBloc(
      tournamentRepository: RepositoryProvider.of(context),
    );
    final teamBloc = TeamBloc(teamRepository: RepositoryProvider.of(context));
    final groupBLoc = GroupBloc(
      groupRepository: RepositoryProvider.of(context),
    );
    final groupMemberBloc = GroupMemberBloc(
      groupMemberRepository: RepositoryProvider.of(context),
      groupRepository: RepositoryProvider.of(context),
    );
    final foodBloc = FoodBloc(foodRepository: RepositoryProvider.of(context));
    final planFoodBloc = PlanFoodBloc(
      planFoodRepository: RepositoryProvider.of(context),
      foodRepository: RepositoryProvider.of(context),
      nutritionPlanRepository: RepositoryProvider.of(context),
    );
    final exerciseBloc = ExerciseBloc(
      exerciseRepository: RepositoryProvider.of(context),
    );
    final trainingExerciseBloc = TrainingExerciseBloc(
      trainingExerciseRepository: RepositoryProvider.of(context),
      exerciseRepository: RepositoryProvider.of(context),
      trainingScheduleRepository: RepositoryProvider.of(context),
    );
    final trainingScheduleBloc = TrainingScheduleBloc(
      trainingScheduleRepository: RepositoryProvider.of(context),
    );
    final trainingScheduleUserBloc = TrainingScheduleUserBloc(
      trainingScheduleUserRepository: RepositoryProvider.of(context),
      trainingScheduleRepository: RepositoryProvider.of(context),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => achievementBloc),
        BlocProvider(create: (context) => injuryBloc),
        BlocProvider(create: (context) => healthBloc),
        BlocProvider(create: (context) => progressBloc),
        BlocProvider(create: (context) => userMatchBloc),
        BlocProvider(create: (context) => teamMemberBloc),
        BlocProvider(create: (context) => nutritionPlanBloc),
        BlocProvider(create: (context) => performanceBloc),
        BlocProvider(create: (context) => coachAthleteBloc),
        BlocProvider(create: (context) => sportUserBloc),
        BlocProvider(create: (context) => sportBloc),
        BlocProvider(create: (context) => userBloc),
        BlocProvider(create: (context) => athleteBloc),
        BlocProvider(create: (context) => matchScheduleBloc),
        BlocProvider(create: (context) => tournamentBloc),
        BlocProvider(create: (context) => groupMemberBloc),
        BlocProvider(create: (context) => teamBloc),
        BlocProvider(create: (context) => groupBLoc),
        BlocProvider(create: (context) => groupMemberBloc),
        BlocProvider(create: (context) => foodBloc),
        BlocProvider(create: (context) => planFoodBloc),
        BlocProvider(create: (context) => trainingScheduleBloc),
        BlocProvider(create: (context) => trainingExerciseBloc),
        BlocProvider(create: (context) => exerciseBloc),
        BlocProvider(create: (context) => trainingScheduleUserBloc),
      ],
      child: Builder(
        builder: (context) {
          // Dispatch events to Blocs

          achievementBloc.add(AchievementEvent.getAchievementByUserId(userId));
          injuryBloc.add(InjuryEvent.getInjuryByUserId(userId));
          healthBloc.add(HealthEvent.getHealthByUserId(userId));
          progressBloc.add(ProgressEvent.getProgressesByUserId(userId));
          userMatchBloc.add(UserMatchEvent.getUserMatchByUserId(userId));
          teamMemberBloc.add(TeamMemberEvent.getTeamMembersByUserId(userId));
          nutritionPlanBloc.add(
            NutritionPlanEvent.getNutritionPlansByUserId(userId),
          );
          performanceBloc.add(PerformanceEvent.getPerformancesByUserId(userId));
          coachAthleteBloc.add(CoachAthleteEvent.getAllByAthleteId(userId));
          sportBloc.add(SportEvent.getAllSports());
          athleteBloc.add(AthleteEvent.getAthleteByUserId(userId));
          userBloc.add(UserEvent.getUserById(userId));
          sportUserBloc.add(SportUserEvent.getAllSportUserByUserId(userId));
          groupMemberBloc.add(GroupMemberEvent.getGroupMembersByUserId(userId));
          trainingScheduleUserBloc.add(
            TrainingScheduleUserEvent.getAllTrainingScheduleUserByUserId(
              userId,
            ),
          );

          return MultiBlocListener(
            listeners: [
              BlocListener<AthleteBloc, AthleteState>(
                listener: (context, state) {
                  if (state is Athlete_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<UserBloc, UserState>(
                listener: (context, state) {
                  if (state is User_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<SportUserBloc, SportUserState>(
                listener: (context, state) {
                  if (state is Sport_User_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<SportBloc, SportState>(
                listener: (context, state) {
                  if (state is Sport_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<AchievementBloc, AchievementState>(
                listener: (context, state) {
                  if (state is Achievement_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<InjuryBloc, InjuryState>(
                listener: (context, state) {
                  if (state is Injury_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<HealthBloc, HealthState>(
                listener: (context, state) {
                  if (state is Health_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<ProgressBloc, ProgressState>(
                listener: (context, state) {
                  if (state is Progress_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<UserMatchBloc, UserMatchState>(
                listener: (context, state) {
                  if (state is UserMatch_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<TeamMemberBloc, TeamMemberState>(
                listener: (context, state) {
                  if (state is TeamMember_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<NutritionPlanBloc, NutritionPlanState>(
                listener: (context, state) {
                  if (state is NutritionPlan_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<PerformanceBloc, PerformanceState>(
                listener: (context, state) {
                  if (state is Performance_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<CoachAthleteBloc, CoachAthleteState>(
                listener: (context, state) {
                  if (state is CoachAthlete_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<MatchScheduleBloc, MatchScheduleState>(
                listener: (context, state) {
                  if (state is MatchSchedule_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<TournamentBloc, TournamentState>(
                listener: (context, state) {
                  if (state is Tournament_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
                listener: (context, state) {},
              ),
              BlocListener<PlanFoodBloc, PlanFoodState>(
                listener: (context, state) {},
              ),
              BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
                listener: (context, state) {
                  print(state);
                  if (state is TrainingExercise_Error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
              ),
              BlocListener<TrainingScheduleUserBloc, TrainingScheduleUserState>(
                listener: (context, state) {
                  print(state);
                },
              ),
              BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
                listener: (context, state) {
                  print(state);
                },
              ),
            ],
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Chi tiết vận động viên'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAthleteInfo(),
                    const SizedBox(height: 16),
                    _buildSportsInfo(userId),
                    const SizedBox(height: 16),
                    _buildAchievements(),
                    const SizedBox(height: 16),
                    _buildInjuries(),
                    const SizedBox(height: 16),
                    _buildHealthRecords(),
                    const SizedBox(height: 16),
                    _buildUserMatches(),
                    const SizedBox(height: 16),
                    _buildTeamMembers(),
                    const SizedBox(height: 16),
                    _buildNutritionPlans(),
                    const SizedBox(height: 16),
                    //_buildCoachAthletes(),
                    const SizedBox(height: 16),
                    _buildGroupMembers(),
                    const SizedBox(height: 16),
                    _buildProgress(),
                    const SizedBox(height: 16),
                    _buildTraining(),
                    const SizedBox(height: 16),
                    _buildPerformance(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAthleteInfo() {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');
    return BlocBuilder<AthleteBloc, AthleteState>(
      builder: (context, athleteState) {
        if (athleteState is Athlete_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (athleteState is Athlete_Error) {
          return Center(child: Text('Lỗi: ${athleteState.message}'));
        }
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            if (userState is User_Loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (userState is User_Error) {
              return Center(child: Text('Lỗi: ${userState.message}'));
            }
            // Giả định trạng thái loaded của UserBloc là User_Loaded
            User? user;
            if (userState is LoadedMultipleUsers) {
              user = userState.users[userId];
            }

            final athlete =
                athleteState is LoadedAthlete ? athleteState.athlete : null;

            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'Thông tin vận động viên',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text('Họ và tên'),
                  subtitle: Text(user?.fullName ?? 'Đang tải...'),
                ),
                ListTile(
                  title: const Text('Email'),
                  subtitle: Text(user?.email ?? 'Đang tải...'),
                ),
                ListTile(
                  title: const Text('Id vận động viên'),
                  subtitle: Text(athlete?.id ?? 'N/A'),
                ),
                ListTile(
                  title: const Text('Loại'),
                  subtitle: Text(athlete?.athleteType ?? 'N/A'),
                ),
                ListTile(
                  title: const Text('Ngày tạo'),
                  subtitle: Text(
                    athlete != null
                        ? dateFormat.format(athlete.createdAt)
                        : 'N/A',
                  ),
                ),
                ListTile(
                  title: const Text('Ngày cập nhật'),
                  subtitle: Text(
                    athlete != null
                        ? dateFormat.format(athlete.updatedAt)
                        : 'N/A',
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildSportsInfo(String userId) {
    return BlocBuilder<SportUserBloc, SportUserState>(
      builder: (context, sportUserState) {
        if (sportUserState is Sport_User_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (sportUserState is Sport_User_Error) {
          return Center(child: Text('Lỗi: ${sportUserState.message}'));
        }
        if (sportUserState is LoadedMultipleSportUsers) {
          final sportUsers = sportUserState.sportUsers[userId] ?? [];
          final sportsMap = sportUserState.sports;

          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Thông tin môn thể thao',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              sportUsers.isEmpty
                  ? const ListTile(
                    title: Text('Chưa có môn thể thao nào được gán.'),
                  )
                  : Column(
                    children:
                        sportUsers.map((sportUser) {
                          final sport = sportsMap[sportUser.sportId];
                          return ListTile(
                            title: Text(
                              sport?.name ?? "Môn thể thao không xác định",
                            ),
                            subtitle: Text('Vị trí: ${sportUser.position}'),
                            leading: const Icon(Icons.sports),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink(); // Trạng thái initial hoặc không xác định
      },
    );
  }

  Widget _buildAchievements() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<AchievementBloc, AchievementState>(
      builder: (context, state) {
        if (state is Achievement_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Achievement_Error) {
          return Center(child: Text('Lỗi: ${state.message}'));
        }
        if (state is LoadedAchievements) {
          final achievements = state.achievements;
          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Thành tích',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              achievements.isEmpty
                  ? const ListTile(title: Text('Không có thành tích'))
                  : Column(
                    children:
                        achievements.map((achievement) {
                          return ListTile(
                            title: Text(achievement.title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(achievement.description),
                                Text(dateFormat.format(achievement.date)),
                              ],
                            ),
                            leading: const Icon(Icons.emoji_events),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildInjuries() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<InjuryBloc, InjuryState>(
      builder: (context, state) {
        if (state is Injury_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Injury_Error) {
          return Center(child: Text('Lỗi: ${state.message}'));
        }
        if (state is LoadedInjuries) {
          final injuries = state.injuries;
          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Chấn thương',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              injuries.isEmpty
                  ? const ListTile(title: Text('Không có chấn thương'))
                  : Column(
                    children:
                        injuries.map((injury) {
                          return ListTile(
                            title: Text(injury.type),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Cấp độ: ${injury.severity}'),
                                Text('Vị trí: ${injury.locationOnBody}'),
                                Text('Nguyên nhân: ${injury.causeOfInjury}'),
                                Text('Ngày: ${dateFormat.format(injury.date)}'),
                              ],
                            ),
                            leading: const Icon(Icons.local_hospital),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildHealthRecords() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<HealthBloc, HealthState>(
      builder: (context, state) {
        if (state is Health_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Health_Error) {
          return Center(child: Text('Lỗi: ${state.message}'));
        }
        if (state is LoadedHealthRecords) {
          final healthRecords = state.healthRecords;
          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Hồ sơ sức khỏe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              healthRecords.isEmpty
                  ? const ListTile(title: Text('Không có hồ sơ sức khỏe'))
                  : Column(
                    children:
                        healthRecords.map((health) {
                          return ListTile(
                            title: Text(
                              'Ngày khám sức khỏe: ${dateFormat.format(health.date)}',
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chiều cao: ${health.height}'),
                                Text('Cân nặng: ${health.weight}'),
                                Text('Chiều cao: ${health.bmi}'),
                                Text('Chiều cao: ${health.bloodType}'),
                              ],
                            ),
                            leading: const Icon(Icons.health_and_safety),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildUserMatches() {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');
    return BlocBuilder<UserMatchBloc, UserMatchState>(
      builder: (context, userMatchState) {
        if (userMatchState is UserMatch_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (userMatchState is UserMatch_Error) {
          return Center(child: Text('Lỗi: ${userMatchState.message}'));
        }
        if (userMatchState is LoadedUserMatches) {
          final userMatches = userMatchState.userMatches;
          final matchSchedules = userMatchState.matchSchedules ?? {};
          final tournaments = userMatchState.tournaments ?? {};

          if (userMatches.isEmpty) {
            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'Trận đấu',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const ListTile(title: Text('Không có trận đấu')),
              ],
            );
          }

          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Trận đấu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ...userMatches.map((userMatch) {
                final matchSchedule = matchSchedules[userMatch.matchId];
                final tournament =
                    matchSchedule != null
                        ? tournaments[matchSchedule.tournamentId]
                        : null;

                if (matchSchedule == null || tournament == null) {
                  return const ListTile(
                    title: Text('Đang tải...'),
                    leading: CircularProgressIndicator(),
                  );
                }

                return ListTile(
                  title: Text('Đối thủ: ${matchSchedule.opponent}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Giải đấu: ${tournament.name}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Mô tả Giải đấu: ${tournament.description}'),
                      Text('Người tổ chức Giải đấu: ${tournament.organizer}'),
                      Text('Cấp độ: ${tournament.level}'),
                      Text(
                        'Ngày bắt đầu giải: ${dateFormat.format(tournament.startDate)}',
                      ),
                      Text(
                        'Ngày kết thúc giải: ${dateFormat.format(tournament.endDate)}',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Trận đấu:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Ngày: ${dateFormat.format(matchSchedule.date)}'),
                      Text('Địa điểm: ${matchSchedule.location}'),
                      Text('Đối thủ: ${matchSchedule.opponent}'),
                      Text('Loại trận đấu: ${matchSchedule.matchType}'),
                      Text('Vòng: ${matchSchedule.round}'),
                      Text('Điểm: ${matchSchedule.score}'),
                      Text('Chú ý: ${matchSchedule.notes}'),
                    ],
                  ),
                  leading: const Icon(Icons.schedule),
                  //isThreeLine: true,
                );
              }),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildTeamMembers() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<TeamMemberBloc, TeamMemberState>(
      builder: (context, teamMemberState) {
        if (teamMemberState is TeamMember_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (teamMemberState is TeamMember_Error) {
          return Center(
            child: Column(
              children: [
                Text('Lỗi: ${teamMemberState.message}'),
                ElevatedButton(
                  onPressed: () {
                    context.read<TeamMemberBloc>().add(
                      TeamMemberEvent.getTeamMembersByUserId(userId),
                    );
                  },
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          );
        }
        if (teamMemberState is LoadedTeamMembers) {
          final teamMembers = teamMemberState.teamMembers;
          final teams = teamMemberState.teams ?? {};
          final sports = teamMemberState.sports ?? {};

          if (teamMembers.isEmpty) {
            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'Thành viên đội',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const ListTile(title: Text('Không có thành viên đội')),
              ],
            );
          }

          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Thành viên đội',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ...teamMembers.map((teamMember) {
                final team = teams[teamMember.teamId];
                final sport = team != null ? sports[team.sportId] : null;
                if (team == null || sport == null) {
                  return ListTile(
                    title: const Text('Không tải được đội'),
                    subtitle: const Text('Dữ liệu không khả dụng'),
                    leading: const Icon(Icons.error, color: Colors.red),
                    trailing: IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () {
                        context.read<TeamMemberBloc>().add(
                          TeamMemberEvent.getTeamMembersByUserId(userId),
                        );
                      },
                    ),
                  );
                }

                return ListTile(
                  title: Text('Đội: ${team.name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Môn thể thao: ${sport.name}'),
                      Text('Mô tả: ${team.description}'),
                      Text(
                        'Ngày vào đội: ${dateFormat.format(teamMember.dateJoined)}',
                      ),
                    ],
                  ),
                  leading: const Icon(Icons.group),
                  isThreeLine: true,
                );
              }),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildNutritionPlans() {
    final timeFormat = DateFormat('HH:mm');
    return BlocBuilder<NutritionPlanBloc, NutritionPlanState>(
      builder: (context, nutritionState) {
        if (nutritionState is NutritionPlan_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (nutritionState is NutritionPlan_Error) {
          return Center(child: Text('Lỗi: ${nutritionState.message}'));
        }
        if (nutritionState is LoadedNutritionPlans) {
          final nutritionPlans = nutritionState.nutritionPlans;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  'Kế hoạch dinh dưỡng',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              nutritionPlans.isEmpty
                  ? const ListTile(title: Text('Không có kế hoạch dinh dưỡng'))
                  : Column(
                    children:
                        nutritionPlans.map((plan) {
                          return BlocProvider<PlanFoodBloc>(
                            create: (context) {
                              final bloc = PlanFoodBloc(
                                planFoodRepository: RepositoryProvider.of(
                                  context,
                                ),
                                foodRepository: RepositoryProvider.of(context),
                                nutritionPlanRepository: RepositoryProvider.of(
                                  context,
                                ),
                              );
                              bloc.add(
                                PlanFoodEvent.getAllByNutritionPlanId(plan.id!),
                              );
                              return bloc;
                            },
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ExpansionTile(
                                title: Text(
                                  plan.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('Loại bữa ăn: ${plan.mealType}'),
                                leading: const Icon(Icons.restaurant),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Mô tả: ${plan.description}'),
                                        Text(
                                          'Tổng calo: ${plan.totalCalories} kcal',
                                        ),
                                        Text('Số món ăn: ${plan.mealCount}'),
                                        Text(
                                          'Thời gian bữa ăn: ${timeFormat.format(plan.mealTime)}',
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'Danh sách món ăn:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Divider(),
                                        BlocBuilder<
                                          PlanFoodBloc,
                                          PlanFoodState
                                        >(
                                          builder: (context, planFoodState) {
                                            if (planFoodState
                                                is PlanFood_Loading) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }
                                            if (planFoodState
                                                is PlanFood_Error) {
                                              return Text(
                                                'Lỗi: ${planFoodState.message}',
                                              );
                                            }
                                            if (planFoodState
                                                is LoadedPlanFoods) {
                                              final planFoods =
                                                  planFoodState.planFoods
                                                      .where(
                                                        (pf) =>
                                                            pf.nutritionPlanId ==
                                                            plan.id,
                                                      )
                                                      .toList();
                                              if (planFoods.isEmpty) {
                                                return const Text(
                                                  'Không có món ăn trong kế hoạch',
                                                );
                                              }
                                              return Column(
                                                children:
                                                    planFoods.map((planFood) {
                                                      final food =
                                                          planFoodState
                                                              .foods?[planFood
                                                              .foodId];
                                                      return ListTile(
                                                        title: Text(
                                                          food?.name ??
                                                              'Không xác định',
                                                        ),
                                                        subtitle: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Loại: ${food?.foodType ?? 'Không xác định'}',
                                                            ),
                                                            Text(
                                                              'Calories: ${food?.calories ?? 'Không xác định'}',
                                                            ),
                                                            Text(
                                                              'Mô tả: ${food?.description ?? 'Không xác định'}',
                                                            ),
                                                          ],
                                                        ),
                                                        leading:
                                                            food?.foodImage.isNotEmpty ??
                                                                    false
                                                                ? Image.network(
                                                                  food!
                                                                      .foodImage,
                                                                  width: 40,
                                                                  height: 40,
                                                                  fit:
                                                                      BoxFit
                                                                          .cover,
                                                                  errorBuilder:
                                                                      (
                                                                        context,
                                                                        error,
                                                                        stackTrace,
                                                                      ) => const Icon(
                                                                        Icons
                                                                            .broken_image,
                                                                      ),
                                                                )
                                                                : const Icon(
                                                                  Icons
                                                                      .fastfood,
                                                                ),
                                                      );
                                                    }).toList(),
                                              );
                                            }
                                            return const SizedBox.shrink();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildCoachAthletes() {
    return BlocBuilder<CoachAthleteBloc, CoachAthleteState>(
      builder: (context, state) {
        if (state is CoachAthlete_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is CoachAthlete_Error) {
          return Center(child: Text('Lỗi: ${state.message}'));
        }
        if (state is LoadedCoachAthletes) {
          final coachAthletes = state.coachAthletes;
          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Huấn luyện viên',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              coachAthletes.isEmpty
                  ? const ListTile(title: Text('Không có huấn luyện viên'))
                  : Column(
                    children:
                        coachAthletes.map((ca) {
                          return ListTile(
                            title: Text('Huấn luyện viên'),
                            subtitle: Text('ID: ${ca.coachId}'),
                            leading: const Icon(Icons.person_outline),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildGroupMembers() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<GroupMemberBloc, GroupMemberState>(
      builder: (context, groupMemberState) {
        if (groupMemberState is GroupMember_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (groupMemberState is GroupMember_Error) {
          return Center(
            child: Column(
              children: [
                Text('Lỗi: ${groupMemberState.message}'),
                ElevatedButton(
                  onPressed: () {
                    context.read<GroupMemberBloc>().add(
                      GroupMemberEvent.getGroupMembersByUserId(userId),
                    );
                  },
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          );
        }
        if (groupMemberState is LoadedGroupMembers) {
          final groupMembers = groupMemberState.groupMembers;
          final groups = groupMemberState.groups ?? {};

          if (groupMembers.isEmpty) {
            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'Thành viên nhóm',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const ListTile(title: Text('Không có nhóm nào')),
              ],
            );
          }

          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Thành viên nhóm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ...groupMembers.map((groupMember) {
                final group = groups[groupMember.groupId];
                if (group == null) {
                  return ListTile(
                    title: const Text('Không tải được nhóm'),
                    subtitle: const Text('Dữ liệu không khả dụng'),
                    leading: const Icon(Icons.error, color: Colors.red),
                    trailing: IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () {
                        context.read<GroupMemberBloc>().add(
                          GroupMemberEvent.getGroupMembersByUserId(userId),
                        );
                      },
                    ),
                  );
                }

                return ListTile(
                  title: Text('Nhóm: ${group.name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mô tả: ${group.description}'),
                      Text(
                        'Ngày vô nhóm: ${dateFormat.format(groupMember.createdAt)}',
                      ),
                      Text('Ngày tạo: ${dateFormat.format(group.createdAt)}'),
                    ],
                  ),
                  leading: const Icon(Icons.chat),
                );
              }),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildProgress() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return BlocBuilder<ProgressBloc, ProgressState>(
      builder: (context, progressState) {
        if (progressState is Progress_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (progressState is Progress_Error) {
          return Center(
            child: Column(
              children: [
                Text('Lỗi: ${progressState.message}'),
                ElevatedButton(
                  onPressed: () {
                    context.read<ProgressBloc>().add(
                      ProgressEvent.getProgressesByUserId(userId),
                    );
                  },
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          );
        }
        if (progressState is LoadedProgresses) {
          final progresses = progressState.progresses;

          if (progresses.isEmpty) {
            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'Tiến trình',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const ListTile(title: Text('Không có tiến trình')),
              ],
            );
          }

          return Column(
            children: [
              const ListTile(
                title: Text(
                  'Tiến trình',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ...progresses.map((progress) {
                return ListTile(
                  title: Text('Chỉ số: ${progress.metricType}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Giá trị: ${progress.value}'),
                      Text('Ngày: ${dateFormat.format(progress.date)}'),
                    ],
                  ),
                  leading: const Icon(Icons.trending_up),
                );
              }),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildTraining() {
    final dateFormat = DateFormat('dd/MM/yyyy');
    final timeFormat = DateFormat('HH:mm');
    return BlocBuilder<TrainingScheduleUserBloc, TrainingScheduleUserState>(
      builder: (context, scheduleUserState) {
        if (scheduleUserState is TrainingScheduleUser_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (scheduleUserState is TrainingScheduleUser_Error) {
          return Center(child: Text('Lỗi: ${scheduleUserState.message}'));
        }
        if (scheduleUserState is LoadedTrainingScheduleUsers) {
          final scheduleUsers = scheduleUserState.scheduleAthletes;
          final trainingSchedules = scheduleUserState.trainingSchedules;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  'Lịch tập luyện',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              scheduleUsers.isEmpty
                  ? const ListTile(title: Text('Không có lịch tập luyện'))
                  : Column(
                    children:
                        scheduleUsers.map((scheduleUser) {
                          // Lấy TrainingSchedule tương ứng với scheduleUser.scheduleId
                          final schedule =
                              trainingSchedules[scheduleUser.scheduleId];
                          if (schedule == null) {
                            return const ListTile(
                              title: Text('Lịch tập không tìm thấy'),
                            );
                          }
                          return BlocProvider<TrainingExerciseBloc>(
                            create: (context) {
                              final bloc = TrainingExerciseBloc(
                                trainingExerciseRepository:
                                    RepositoryProvider.of(context),
                                exerciseRepository: RepositoryProvider.of(
                                  context,
                                ),
                                trainingScheduleRepository:
                                    RepositoryProvider.of(context),
                              );
                              bloc.add(
                                TrainingExerciseEvent.getAllTrainingExercisesByScheduleId(
                                  scheduleUser.scheduleId,
                                ),
                              );
                              return bloc;
                            },
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ExpansionTile(
                                title: Text(
                                  '${schedule.type ?? 'Không xác định'} - ${dateFormat.format(schedule.date)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'Thời gian: ${timeFormat.format(schedule.startTime)} - ${timeFormat.format(schedule.endTime)}',
                                ),
                                leading: const Icon(Icons.fitness_center),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Địa điểm: ${schedule.location ?? 'Không xác định'}',
                                        ),
                                        Text(
                                          'Ghi chú: ${schedule.notes.isEmpty ? 'Không có' : schedule.notes}',
                                        ),
                                        Text(
                                          'Trạng thái: ${schedule.status ?? 'Không xác định'}',
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'Danh sách bài tập:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Divider(),
                                        BlocBuilder<
                                          TrainingExerciseBloc,
                                          TrainingExerciseState
                                        >(
                                          builder: (
                                            context,
                                            trainingExerciseState,
                                          ) {
                                            if (trainingExerciseState
                                                is TrainingExercise_Loading) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }
                                            if (trainingExerciseState
                                                is TrainingExercise_Error) {
                                              return Text(
                                                'Lỗi: ${trainingExerciseState.message}',
                                              );
                                            }
                                            if (trainingExerciseState
                                                is LoadedTrainingExercisesWithExercises) {
                                              final trainingExercises =
                                                  trainingExerciseState
                                                      .trainingExercises
                                                      .where(
                                                        (te) =>
                                                            te.scheduleId ==
                                                            scheduleUser
                                                                .scheduleId,
                                                      )
                                                      .toList()
                                                    ..sort(
                                                      (a, b) => a.order
                                                          .compareTo(b.order),
                                                    );
                                              if (trainingExercises.isEmpty) {
                                                return const Text(
                                                  'Không có bài tập trong lịch',
                                                );
                                              }
                                              return Column(
                                                children:
                                                    trainingExercises.map((
                                                      trainingExercise,
                                                    ) {
                                                      final exercise =
                                                          trainingExerciseState
                                                              .exercises?[trainingExercise
                                                              .exerciseId];
                                                      return ListTile(
                                                        title: Text(
                                                          exercise?.name ??
                                                              'Không xác định',
                                                        ),
                                                        subtitle: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Phần cơ: ${exercise?.bodyPart ?? 'Không xác định'}',
                                                            ),
                                                            Text(
                                                              'Thiết bị: ${exercise?.equipment ?? 'Không cần'}',
                                                            ),
                                                          ],
                                                        ),
                                                        leading:
                                                            exercise
                                                                        ?.gifUrl
                                                                        .isNotEmpty ??
                                                                    false
                                                                ? Image.network(
                                                                  exercise!
                                                                      .gifUrl,
                                                                  width: 40,
                                                                  height: 40,
                                                                  fit:
                                                                      BoxFit
                                                                          .cover,
                                                                  errorBuilder:
                                                                      (
                                                                        context,
                                                                        error,
                                                                        stackTrace,
                                                                      ) => const Icon(
                                                                        Icons
                                                                            .broken_image,
                                                                      ),
                                                                )
                                                                : const Icon(
                                                                  Icons
                                                                      .directions_run,
                                                                ),
                                                      );
                                                    }).toList(),
                                              );
                                            }
                                            return const SizedBox.shrink();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                  ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildPerformance() {
    return Text('');
  }
}
