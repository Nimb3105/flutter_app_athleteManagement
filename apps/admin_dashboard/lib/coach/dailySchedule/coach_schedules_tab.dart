import 'package:admin_dashboard/coach/dailySchedule/daily_schedule_detail_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CoachSchedulesTab extends StatelessWidget {
  const CoachSchedulesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyScheduleBloc, DailyScheduleState>(
      builder: (context, state) {
        if (state is DailySchedule_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is LoadedAllDailySchedulesByCreatorId) {
          if (state.schedules.isEmpty) {
            return const Center(
              child: Text('Huấn luyện viên này chưa tạo lịch tập nào.'),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: state.schedules.length,
            itemBuilder: (context, index) {
              final schedule = state.schedules[index];
              final athlete = state.userMap[schedule.userId];

              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text(
                    schedule.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text('VĐV: ${athlete?.fullName ?? "Không xác định"}'),
                      const SizedBox(height: 4),
                      Text(
                        'Áp dụng từ: ${DateFormat('dd/MM/yyyy').format(schedule.startDate!.toLocal())} - ${DateFormat('dd/MM/yyyy').format(schedule.endDate!.toLocal())}',
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => MultiBlocProvider(
                              providers: [
                                BlocProvider.value(
                                  value: context.read<TrainingScheduleBloc>(),
                                ),
                              ],
                              child: DailyScheduleDetailPage(
                                dailySchedule: schedule,
                              ),
                            ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        }
        if (state is DailySchedule_Error) {
          return Center(child: Text('Đã xảy ra lỗi: ${state.message}'));
        }
        return const Center(
          child: Text('Vui lòng chọn một huấn luyện viên để xem lịch tập.'),
        );
      },
    );
  }
}
