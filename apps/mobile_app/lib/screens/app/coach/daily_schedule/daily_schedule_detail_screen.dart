// lib/screens/app/coach/daily_schedule/daily_schedule_detail_screen.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/daily_schedule_edit_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/list_training_schedule_screen.dart';

class DailyScheduleDetailScreen extends StatelessWidget {
  final DailySchedule dailySchedule;
  final String createdBy;
  final String? sportId;

  const DailyScheduleDetailScreen({
    required this.dailySchedule,
    required this.createdBy,
    required this.sportId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Không cần BlocProvider ở đây vì chúng ta đã có đủ dữ liệu
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chi Tiết Kế Hoạch',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: _buildTrainingDaysList(context, dailySchedule),
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
      itemCount: trainingDays.length + 1, // +1 cho thẻ Header
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
                        createdBy: createdBy,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    schedule.name,
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.white),
                  onPressed: () {
                    final currentBloc = context.read<DailyScheduleBloc>();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => DailyScheduleEditScreen(
                              dailySchedule: schedule,
                              sportId: sportId!,
                              dailyScheduleBloc: currentBloc,
                            ),
                      ),
                    );
                  },
                ),
              ],
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
