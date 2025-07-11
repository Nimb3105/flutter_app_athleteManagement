import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PerformanceTab extends StatelessWidget {
  const PerformanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAchievementSection(),
          const SizedBox(height: 24),
          _buildMatchSection(),
        ],
      ),
    );
  }

  Widget _buildAchievementSection() {
    return BlocBuilder<AchievementBloc, AchievementState>(
      builder: (context, state) {
        if (state is Achievement_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Achievement_Error) {
          return Text('Lỗi tải thành tích: ${state.message}');
        }
        if (state is LoadedAchievements && state.achievements.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              initiallyExpanded: true,
              title: const Text("Thành tích đạt được"),
              children:
                  state.achievements
                      .map(
                        (ach) => ListTile(
                          leading: const Icon(
                            Icons.emoji_events,
                            color: Colors.amber,
                          ),
                          title: Text(ach.title),
                          subtitle: Text(
                            'Ngày: ${DateFormat('dd/MM/yyyy').format(ach.date.toLocal())}\n${ach.description}',
                          ),
                        ),
                      )
                      .toList(),
            ),
          );
        }
        return const Card(
          child: ListTile(title: Text('Chưa có thành tích nào.')),
        );
      },
    );
  }

  Widget _buildMatchSection() {
    return BlocBuilder<UserMatchBloc, UserMatchState>(
      builder: (context, state) {
        if (state is UserMatch_Loading) return const SizedBox.shrink();
        if (state is UserMatch_Error) {
          return Text('Lỗi tải lịch sử thi đấu: ${state.message}');
        }
        if (state is LoadedUserMatches && state.userMatches.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              initiallyExpanded: true,
              title: const Text("Lịch sử thi đấu"),
              children:
                  state.userMatches.map((userMatch) {
                    final matchSchedule =
                        state.matchSchedules?[userMatch.matchId];
                    if (matchSchedule == null) return const SizedBox.shrink();

                    final tournament =
                        state.tournaments?[matchSchedule.tournamentId];

                    return ListTile(
                      leading: const Icon(Icons.sports_kabaddi_outlined),
                      title: Text(
                        'Giải: ${tournament?.name ?? 'Không rõ'} - Vòng: ${matchSchedule.round}',
                      ),
                      subtitle: Text(
                        'Đối thủ: ${matchSchedule.opponent}\nNgày: ${DateFormat('dd/MM/yyyy').format(matchSchedule.date.toLocal())} - Kết quả: ${matchSchedule.score}',
                      ),
                    );
                  }).toList(),
            ),
          );
        }
        return const Card(
          child: ListTile(title: Text('Chưa tham gia trận đấu nào.')),
        );
      },
    );
  }
}