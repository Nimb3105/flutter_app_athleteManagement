// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/daily_schedule_create_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/list_training_schedule_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyScheduleListScreen extends StatelessWidget {
  final String userId;
  final String createdBy;
  final String? sportId;

  const DailyScheduleListScreen({
    required this.userId,
    required this.createdBy,
    required this.sportId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => DailyScheduleBloc(
            dailyScheduleRepository: context.read<DailyScheduleRepository>(),
          )..add(
            GetDailyScheduleByUserId(
              userId,
              DateTime.now().toUtc().toIso8601String(),
            ),
          ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kế Hoạch Tập Luyện',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<DailyScheduleBloc, DailyScheduleState>(
          builder: (context, dailyState) {
            if (dailyState is DailySchedule_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (dailyState is LoadedDailySchedule) {
              if (dailyState.dailySchedule.id == null) {
                return _buildEmptyState(context);
              }
              return _buildTrainingDaysList(context, dailyState.dailySchedule);
            } else if (dailyState is DailySchedule_Error) {
              return Center(child: Text('Lỗi: ${dailyState.message}'));
            }
            return _buildEmptyState(context);
          },
        ),
        floatingActionButton: Builder(
          builder:
              (context) => FloatingActionButton.extended(
                onPressed: () {
                  final currentBloc = context.read<DailyScheduleBloc>();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => DailyScheduleCreateScreen(
                            sportId: sportId,
                            createdBy: createdBy,
                            userId: userId,
                            dailyScheduleBloc: currentBloc,
                          ),
                    ),
                  );
                },
                label: const Text('Thêm Kế Hoạch'),
                icon: const Icon(Icons.add),
              ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 100,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 24),
          Text(
            'Chưa có kế hoạch tập luyện',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Nhấn nút + để tạo một kế hoạch mới cho VĐV.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingDaysList(BuildContext context, DailySchedule schedule) {
    final List<DateTime> trainingDays = [];
    if (schedule.startDate != null && schedule.endDate != null) {
      DateTime currentDate = schedule.startDate!;
      while (currentDate.isBefore(schedule.endDate!) ||
          currentDate.isAtSameMomentAs(schedule.endDate!)) {
        trainingDays.add(currentDate);
        currentDate = currentDate.add(const Duration(days: 1));
      }
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: trainingDays.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildHeaderCard(context, schedule);
        }

        final date = trainingDays[index - 1];
        final formattedDate = date.toUtc().toIso8601String();

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            leading: CircleAvatar(
              backgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withOpacity(0.1),
              child: Text(
                DateFormat('dd').format(date.toLocal()),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            title: Text(
              'Ngày ${DateFormat('dd/MM/yyyy').format(date.toLocal())}',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              DateFormat('EEEE', 'vi_VN').format(date.toLocal()),
              style: GoogleFonts.poppins(),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ListTrainingScheduleScreen(
                        dailyScheduleId: schedule.id!,
                        date: formattedDate,
                        sportId: sportId!,
                      ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildHeaderCard(BuildContext context, DailySchedule schedule) {
    return Card(
      elevation: 4,
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      margin: const EdgeInsets.only(bottom: 24.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              schedule.name,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white70,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  '${schedule.startDate != null ? DateFormat('dd/MM/yyyy').format(schedule.startDate!.toLocal()) : 'N/A'} - ${schedule.endDate != null ? DateFormat('dd/MM/yyyy').format(schedule.endDate!.toLocal()) : 'N/A'}',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
