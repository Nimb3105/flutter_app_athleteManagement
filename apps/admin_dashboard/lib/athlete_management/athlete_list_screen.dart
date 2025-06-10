import 'package:admin_dashboard/athlete_management/athlete_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:intl/intl.dart';

class AthleteListScreen extends StatelessWidget {
  const AthleteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int limit = 10;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => AthleteBloc(
                athleteRepository: RepositoryProvider.of(context),
              )..add(const AthleteEvent.getAllAthletes(page: 1, limit: limit)),
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
          BlocListener<AthleteBloc, AthleteState>(
            listener: (context, athleteState) {
              if (athleteState is LoadedAthletes) {
                for (var athlete in athleteState.athletes) {
                  context.read<UserBloc>().add(
                    UserEvent.getUserById(athlete.userId),
                  );
                  context.read<SportUserBloc>().add(
                    SportUserEvent.getAllSportUserByUserId(athlete.userId),
                  );
                }
              }
              if (athleteState is Athlete_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(athleteState.message)));
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
        child: BlocBuilder<AthleteBloc, AthleteState>(
          builder: (context, athleteState) {
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
                        if (userState is User_Initial) {
                          // No user data yet
                        } else if (userState is User_Loading) {
                          // Users are being loaded
                        } else if (userState is LoadedUser) {
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
                        } else if (userState is User_Success) {
                          // No action needed
                        } else if (userState is LoggedIn) {
                          // No action needed
                        }

                        // Handle SportUserState
                        if (sportUserState is Sport_User_Initial) {
                          // No sport user data yet
                        } else if (sportUserState is Sport_User_Loading) {
                          // Sport users are being loaded
                        } else if (sportUserState is LoadedSportUser) {
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
                        } else if (sportUserState is Sport_User_Error) {
                          // Handle errors if needed
                        } else if (sportUserState is Sport_User_Success) {
                          // No action needed
                        }

                        // Handle SportState
                        if (sportState is Sport_Initial) {
                          // No sport data yet
                        } else if (sportState is Sport_Loading) {
                          // Sports are being loaded
                        } else if (sportState is LoadedSport) {
                          sportMap[sportState.sport.id ?? ''] =
                              sportState.sport;
                        } else if (sportState is LoadedSports) {
                          for (var sport in sportState.sports) {
                            sportMap[sport.id ?? ''] = sport;
                          }
                        } else if (sportState is Sport_Error) {
                          sportErrorMap[sportState.message] =
                              sportState.message;
                        } else if (sportState is Sport_Success) {
                          // No action needed
                        }

                        // Handle AthleteState
                        if (athleteState is Athlete_Initial) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (athleteState is Athlete_Loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (athleteState is LoadedAthlete) {
                          return const Center(child: Text('Unexpected state'));
                        }
                        if (athleteState is LoadedAthletes) {
                          return _buildDataTable(
                            context,
                            athleteState.athletes,
                            athleteState.currentPage,
                            athleteState.limit,
                            athleteState.hasMore,
                            userMap,
                            userErrorMap,
                            sportUserMap,
                            sportMap,
                            sportErrorMap,
                          );
                        }
                        if (athleteState is Athlete_Error) {
                          return Center(
                            child: Text(
                              'Athlete Error: ${athleteState.message}',
                            ),
                          );
                        }
                        if (athleteState is Athlete_Success) {
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
    List<Athlete> athletes,
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
              DataColumn2(label: Text('athlete-ID')),
              DataColumn2(label: Text('User-ID')),
              DataColumn2(label: Text('Họ và tên')),
              DataColumn2(label: Text('Email')),
              DataColumn2(label: Text('Môn thể theo')),
              DataColumn2(label: Text('Loại')),
              DataColumn2(label: Text('Ngày tạo')),
              DataColumn2(label: Text('Ngày cập nhật')),
            ],
            rows:
                athletes
                    .map(
                      (athlete) => DataRow2(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (_) => AthleteDetailScreen(
                                    userId: athlete.userId,
                                  ),
                            ),
                          );
                        },
                        cells: [
                          DataCell(Text(athlete.id ?? 'N/A')),
                          DataCell(Text(athlete.userId)),
                          DataCell(
                            Text(
                              userMap[athlete.userId]?.fullName ??
                                  (userErrorMap[athlete.userId] != null
                                      ? 'Error: ${userErrorMap[athlete.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            Text(
                              userMap[athlete.userId]?.email ??
                                  (userErrorMap[athlete.userId] != null
                                      ? 'Error: ${userErrorMap[athlete.userId]}'
                                      : 'Loading...'),
                            ),
                          ),
                          DataCell(
                            sportUserMap[athlete.userId]?.isNotEmpty == true
                                ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      sportUserMap[athlete.userId]!
                                          .map(
                                            (sportUser) => Text(
                                              sportMap[sportUser.sportId]
                                                      ?.name ??
                                                  (sportErrorMap[sportUser
                                                              .sportId] !=
                                                          null
                                                      ? 'Error: ${sportErrorMap[sportUser.sportId]}'
                                                      : 'Loading...'),
                                            ),
                                          )
                                          .toList(),
                                )
                                : const Text('N/A'),
                          ),
                          DataCell(Text(athlete.athleteType)),
                          DataCell(Text(dateFormat.format(athlete.createdAt))),
                          DataCell(Text(dateFormat.format(athlete.updatedAt))),
                        ],
                      ),
                    )
                    .toList(),
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
                    context.read<AthleteBloc>().add(
                      AthleteEvent.getAllAthletes(
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
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed:
              hasMore
                  ? () {
                    context.read<AthleteBloc>().add(
                      AthleteEvent.getAllAthletes(
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
