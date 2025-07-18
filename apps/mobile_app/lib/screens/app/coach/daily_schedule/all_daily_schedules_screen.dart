// lib/screens/app/coach/daily_schedule/all_daily_schedules_screen.dart
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/daily_schedule_detail_screen.dart';

class AllDailySchedulesScreen extends StatelessWidget {
  final String userId;
  final String createdBy;
  final String? sportId;

  const AllDailySchedulesScreen({
    required this.userId,
    required this.createdBy,
    this.sportId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => DailyScheduleBloc(
            dailyScheduleRepository: context.read<DailyScheduleRepository>(),
            userRepository: context.read<UserRepository>(),
          )..add(DailyScheduleEvent.getAllDailySchedulesByUserId(userId)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tất Cả Kế Hoạch Tập Luyện',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<DailyScheduleBloc, DailyScheduleState>(
          builder: (context, state) {
            // Sử dụng if/else if để xử lý trạng thái
            if (state is DailySchedule_Loading ||
                state is DailySchedule_Initial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedAllDailySchedulesByUserId) {
              if (state.schedules.isEmpty) {
                return Center(
                  child: Text(
                    'Không có kế hoạch nào được tìm thấy.',
                    style: GoogleFonts.poppins(),
                  ),
                );
              }
              return _buildSchedulesList(
                context,
                state.schedules,
                state.userMap,
              );
            } else if (state is DailySchedule_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }
            // Trạng thái mặc định nếu không khớp
            return const Center(child: Text('Không có dữ liệu'));
          },
        ),
      ),
    );
  }

  Widget _buildSchedulesList(
    BuildContext context,
    List<DailySchedule> schedules,
    Map<String, User> userMap,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        final schedule = schedules[index];
        // Lấy thông tin người tạo từ userMap
        final creator = userMap[schedule.createdBy];

        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            title: Text(
              schedule.name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  'Thời gian: ${schedule.startDate != null ? DateFormat('dd/MM/yyyy').format(schedule.startDate!.toLocal()) : 'N/A'} - ${schedule.endDate != null ? DateFormat('dd/MM/yyyy').format(schedule.endDate!.toLocal()) : 'N/A'}',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                const SizedBox(height: 4),
                if (creator != null)
                  Text(
                    'Tạo bởi: ${creator.fullName}',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
            onTap: () {
              // Tại đây, bạn có thể điều hướng đến màn hình chi tiết của kế hoạch này nếu muốn
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => DailyScheduleDetailScreen(
                        dailySchedule: schedule,
                        createdBy: createdBy,
                        sportId: sportId,
                      ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
