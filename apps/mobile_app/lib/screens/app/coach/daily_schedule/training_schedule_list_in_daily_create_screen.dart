// ignore_for_file: unnecessary_null_comparison, duplicate_ignore, use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/apply_schedule_dialog.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule_create_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule_edit_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrainingScheduleListInDailyCreateScreen extends StatelessWidget {
  final DateTime trainingDate;
  final List<TrainingSchedule>
  trainingSchedules; // This is the complete list from the parent
  final ValueNotifier<List<TrainingSchedule>> trainingSchedulesNotifier;
  final String createBy;
  final String? sportId;
  final ValueNotifier<Map<String, List<String>>> exerciseNamesNotifier;
  final List<DateTime> allDaysInPlan;

  const TrainingScheduleListInDailyCreateScreen({
    required this.trainingDate,
    required this.trainingSchedules,
    required this.trainingSchedulesNotifier,
    required this.createBy,
    required this.sportId,
    required this.exerciseNamesNotifier,
    required this.allDaysInPlan,
    super.key,
  });

  // Hàm kiểm tra xem hai DateTime có cùng ngày không
  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lịch Tập Ngày ${DateFormat('dd/MM/yyyy').format(trainingDate)}',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: ValueListenableBuilder<List<TrainingSchedule>>(
        valueListenable: trainingSchedulesNotifier,
        builder: (context, schedules, child) {
          final filteredSchedules =
              schedules
                  .where((ts) => _isSameDay(ts.date, trainingDate))
                  .toList();
          // Sắp xếp các buổi tập theo thời gian bắt đầu
          filteredSchedules.sort((a, b) => a.startTime.compareTo(b.startTime));

          if (filteredSchedules.isEmpty) {
            return _buildEmptyState();
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: filteredSchedules.length,
            itemBuilder: (context, index) {
              final schedule = filteredSchedules[index];
              return _buildTimelineTile(
                context,
                schedule,
                index,
                filteredSchedules.length,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onAddSchedule(context),
        tooltip: 'Thêm Buổi Tập',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_view_day_outlined,
            size: 100,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 24),
          Text(
            'Chưa có buổi tập nào',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Nhấn nút + để thêm buổi tập cho ngày này.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  TimelineTile _buildTimelineTile(
    BuildContext context,
    TrainingSchedule schedule,
    int index,
    int total,
  ) {
    final theme = Theme.of(context);
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.25,
      isFirst: index == 0,
      isLast: index == total - 1,
      indicatorStyle: IndicatorStyle(
        width: 40,
        height: 40,
        indicator: CircleAvatar(
          backgroundColor: theme.colorScheme.primary,
          child: Text(
            schedule.type.isNotEmpty ? schedule.type[0].toUpperCase() : 'B',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        padding: const EdgeInsets.all(6),
      ),
      beforeLineStyle: LineStyle(
        color: theme.colorScheme.primary.withOpacity(0.5),
      ),
      endChild: _buildScheduleCard(context, schedule, index),
      startChild: _buildTimeInfo(context, schedule),
    );
  }

  Widget _buildTimeInfo(BuildContext context, TrainingSchedule schedule) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            DateFormat('HH:mm').format(schedule.startTime.toLocal()),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            DateFormat('HH:mm').format(schedule.endTime.toLocal()),
            style: GoogleFonts.poppins(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleCard(
    BuildContext context,
    TrainingSchedule schedule,
    int index,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    schedule.type,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'edit') {
                      _onEditSchedule(context, schedule, index);
                    } else if (value == 'delete') {
                      _onDeleteSchedule(context, schedule);
                    }
                  },
                  itemBuilder:
                      (BuildContext context) => <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'edit',
                          child: Text('Chỉnh sửa'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'delete',
                          child: Text('Xóa'),
                        ),
                      ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey[600],
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(schedule.location, style: GoogleFonts.poppins()),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              schedule.notes,
              style: GoogleFonts.poppins(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }

  // --- LOGIC GỐC ĐƯỢC GIỮ NGUYÊN ---

  // Mở tệp: lib/screens/app/coach/daily_schedule/training_schedule_list_in_daily_create_screen.dart
  // Thay thế hàm _onAddSchedule hiện tại của bạn bằng hàm này.

  void _onAddSchedule(BuildContext context) async {
    // 1. Lấy danh sách các buổi tập đã có trong ngày hiện tại để xác định giờ kết thúc muộn nhất
    final schedulesForDate =
        trainingSchedulesNotifier.value
            .where((ts) => _isSameDay(ts.date, trainingDate))
            .toList();

    final latestEndTime =
        schedulesForDate.isNotEmpty
            ? schedulesForDate
                .map((ts) => ts.endTime)
                .reduce((a, b) => a.isAfter(b) ? a : b)
            : null;

    // 2. Điều hướng đến màn hình tạo buổi tập và chờ kết quả trả về
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => TrainingScheduleCreateScreen(
              trainingDate: trainingDate,
              createBy: createBy,
              sportId: sportId,
              latestEndTime: latestEndTime,
            ),
      ),
    );

    // 3. Xử lý kết quả sau khi màn hình tạo đóng lại
    if (result != null && result is List && result.length == 2) {
      final newSchedule = result[0] as TrainingSchedule;
      final newExerciseNames = result[1] as List<String>;

      // Cập nhật buổi tập vừa tạo vào danh sách tổng
      trainingSchedulesNotifier.value = [
        ...trainingSchedulesNotifier.value,
        newSchedule,
      ];

      // Cập nhật tên bài tập tương ứng với buổi tập mới
      // Sử dụng một khóa duy nhất, an toàn hơn là dùng id có thể là null
      final scheduleKey = DateTime.now().toIso8601String();
      exerciseNamesNotifier.value = {
        ...exerciseNamesNotifier.value,
        scheduleKey: newExerciseNames,
      };

      // 4. Hiển thị hộp thoại hỏi người dùng có muốn áp dụng cho ngày khác không
      final applyToOthers = await showDialog<bool>(
        context: context,
        barrierDismissible: false, // Ngăn người dùng tắt dialog
        builder:
            (dialogContext) => AlertDialog(
              title: const Text("Áp dụng cho ngày khác?"),
              content: const Text(
                "Bạn có muốn sao chép buổi tập này cho những ngày khác chưa có lịch không?",
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(false),
                  child: const Text("Không"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(dialogContext).pop(true),
                  child: const Text("Có, chọn ngày"),
                ),
              ],
            ),
      );

      // 5. Nếu người dùng đồng ý, hiển thị hộp thoại chọn ngày
      if (applyToOthers == true) {
        // Giả sử `allDaysInPlan` đã được truyền vào widget này
        // (như đã hướng dẫn trong câu trả lời trước)
        final newSchedulesToCreate = await showDialog<List<TrainingSchedule>>(
          context: context,
          builder:
              (dialogContext) => ApplyScheduleDialog(
                allDaysInPlan: allDaysInPlan,
                existingSchedules: trainingSchedulesNotifier.value,
                sourceSchedule: newSchedule,
              ),
        );

        // 6. Nếu người dùng đã chọn ngày, cập nhật danh sách tổng với các bản sao
        if (newSchedulesToCreate != null && newSchedulesToCreate.isNotEmpty) {
          trainingSchedulesNotifier.value = [
            ...trainingSchedulesNotifier.value,
            ...newSchedulesToCreate,
          ];
          // Lưu ý: Bạn có thể cần cập nhật cả `exerciseNamesNotifier` cho các bản sao nếu cần
        }
      }
    }
  }

  void _onEditSchedule(
    BuildContext context,
    TrainingSchedule schedule,
    int index,
  ) async {
    final schedules = trainingSchedulesNotifier.value;
    final filteredSchedules =
        schedules.where((ts) => _isSameDay(ts.date, trainingDate)).toList();
    final exerciseNamesMap = exerciseNamesNotifier.value;
    final exerciseNames =
        exerciseNamesMap[schedule.id ?? index.toString()] ?? [];

    final otherSchedules =
        filteredSchedules.where((s) => s != schedule).toList();
    final latestEndTime =
        otherSchedules.isNotEmpty
            ? otherSchedules
                .where((ts) => ts.endTime != null)
                .map((ts) => ts.endTime)
                .reduce((a, b) => a.isAfter(b) ? a : b)
            : null;

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => TrainingScheduleEditScreen(
              trainingDate: trainingDate,
              createBy: createBy,
              sportId: sportId,
              latestEndTime: latestEndTime,
              schedule: schedule,
              exerciseNames: exerciseNames,
            ),
      ),
    );

    if (result != null && result is List && result.length == 2) {
      final updatedSchedule = result[0] as TrainingSchedule;
      final updatedNames = result[1] as List<String>;

      final allSchedules = List<TrainingSchedule>.from(schedules);
      final scheduleIndex = allSchedules.indexWhere((s) => s == schedule);
      if (scheduleIndex != -1) {
        allSchedules[scheduleIndex] = updatedSchedule;
        trainingSchedulesNotifier.value = allSchedules;

        final updatedMap = Map<String, List<String>>.from(exerciseNamesMap)
          ..[updatedSchedule.id ?? index.toString()] = updatedNames;
        exerciseNamesNotifier.value = updatedMap;
      }
    }
  }

  void _onDeleteSchedule(BuildContext context, TrainingSchedule schedule) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Xóa Buổi Tập'),
            content: Text('Bạn có chắc muốn xóa buổi tập "${schedule.type}"?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Hủy'),
              ),
              TextButton(
                onPressed: () {
                  final updatedSchedules = List<TrainingSchedule>.from(
                    trainingSchedulesNotifier.value,
                  )..remove(schedule);
                  trainingSchedulesNotifier.value = updatedSchedules;

                  final updatedMap = Map<String, List<String>>.from(
                    exerciseNamesNotifier.value,
                  )..remove(schedule.id);
                  exerciseNamesNotifier.value = updatedMap;

                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Đã xóa buổi tập "${schedule.type}"'),
                    ),
                  );
                },
                child: const Text('Xóa', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
    );
  }
}
