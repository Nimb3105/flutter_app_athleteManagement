
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
              //print(userState);
              if (userState is User_Error) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(userState.message)));
              }
              if (userState is LoadedMultipleUsers) {
                context.read<SportBloc>().add(SportEvent.getAllSports());
              }
            },
          ),
          BlocListener<SportBloc, SportState>(
            listener: (context, sportState) {
              //print(sportState);
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
                return BlocBuilder<SportBloc, SportState>(
                  builder: (context, sportState) {
                    // Map to store user data and errors by userId
                    Map<String, User?> userMap = {};
                    Map<String, String?> userErrorMap = {};

                    // Map to store sport data and errors by sportId
                    Map<String, Sport?> sportMap = {};
                    Map<String, String?> sportErrorMap = {};

                    // Handle UserState
                    if (userState is LoadedMultipleUsers) {
                      userMap = userState.users;
                      userErrorMap = userState.errors;
                    } else if (userState is User_Error) {
                      userErrorMap[userState.message] = userState.message;
                    } else if (userState is User_Success) {
                      // No action needed
                    } else if (userState is LoggedIn) {
                      // No action needed
                    }
                    if (sportState is LoadedSport) {
                      sportMap[sportState.sport?.id ?? ''] = sportState.sport;
                    } else if (sportState is LoadedSports) {
                      for (var sport in sportState.sports) {
                        sportMap[sport.id ?? ''] = sport;
                      }
                    } else if (sportState is Sport_Error) {
                      sportErrorMap[sportState.message] = sportState.message;
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
                        sportMap,
                        sportErrorMap,
                      );
                    }
                    if (athleteState is Athlete_Error) {
                      return Center(
                        child: Text('Athlete Error: ${athleteState.message}'),
                      );
                    }
                    return const Center(child: Text('Unknown state'));
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
                                    sportId:userMap[athlete.userId]!.sportId,
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
                            Text(
                              sportMap[userMap[athlete.userId]?.sportId]
                                      ?.name ??
                                  (sportErrorMap[userMap[athlete.userId]
                                              ?.sportId] !=
                                          null
                                      ? 'Error: ${sportErrorMap[userMap[athlete.userId]?.sportId]}'
                                      : 'Loading...'),
                            ),
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
