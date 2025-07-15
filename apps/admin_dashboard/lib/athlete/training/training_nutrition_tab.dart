import 'package:admin_dashboard/coach/dailySchedule/daily_schedule_detail_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrainingNutritionTab extends StatelessWidget {
  final String athleteId;
  const TrainingNutritionTab({super.key, required this.athleteId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kế hoạch luyện tập",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          _buildDailyScheduleSection(),
          const SizedBox(height: 24),
          // Thêm phần kế hoạch dinh dưỡng nếu cần
        ],
      ),
    );
  }

  Widget _buildDailyScheduleSection() {
    return BlocBuilder<DailyScheduleBloc, DailyScheduleState>(
      builder: (context, state) {
        if (state is DailySchedule_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is LoadedAllDailySchedulesByUserId) {
          if (state.schedules.isEmpty) {
            return const Center(
              child: Text("Vận động viên này chưa được gán kế hoạch nào."),
            );
          }
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.schedules.length,
            itemBuilder: (context, index) {
              final schedule = state.schedules[index];
              final creator = state.userMap[schedule.createdBy];
              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(
                    schedule.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tạo bởi: ${creator?.fullName ?? "Không rõ"}'),
                      Text(
                        "Áp dụng: ${DateFormat('dd/MM/yy').format(schedule.startDate!.toLocal())} - ${DateFormat('dd/MM/yy').format(schedule.endDate!.toLocal())}",
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
          return Center(child: Text("Lỗi: ${state.message}"));
        }
        return const Center(child: Text("Đang tải kế hoạch luyện tập..."));
      },
    );
  }
}
