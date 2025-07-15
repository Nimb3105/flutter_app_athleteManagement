import 'package:admin_dashboard/coach/dailySchedule/training_schedule_card.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyScheduleDetailPage extends StatefulWidget {
  final DailySchedule dailySchedule;

  const DailyScheduleDetailPage({super.key, required this.dailySchedule});

  @override
  State<DailyScheduleDetailPage> createState() =>
      _DailyScheduleDetailPageState();
}

class _DailyScheduleDetailPageState extends State<DailyScheduleDetailPage> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    // Khởi tạo ngày được chọn là ngày bắt đầu của lịch trình
    if (widget.dailySchedule.startDate != null) {
      _selectedDate = widget.dailySchedule.startDate!.toLocal();
      _fetchSchedulesForSelectedDate();
    }
  }

  /// Gửi yêu cầu lấy danh sách lịch tập cho ngày đã chọn
  void _fetchSchedulesForSelectedDate() {
    if (widget.dailySchedule.id != null && _selectedDate != null) {
      context.read<TrainingScheduleBloc>().add(
        TrainingScheduleEvent.getAllTrainingSchedulesByDailyScheduleId(
          widget.dailySchedule.id!,
          _selectedDate!.toUtc().toIso8601String(),
        ),
      );
    }
  }

  /// Lấy danh sách các ngày trong khoảng thời gian của lịch trình
  List<DateTime> _getDaysInBetween() {
    final start = widget.dailySchedule.startDate;
    final end = widget.dailySchedule.endDate;
    if (start == null || end == null) {
      return [];
    }
    final days = <DateTime>[];
    for (int i = 0; i <= end.difference(start).inDays; i++) {
      days.add(start.add(Duration(days: i)));
    }
    return days;
  }

  @override
  Widget build(BuildContext context) {
    final days = _getDaysInBetween();

    return Scaffold(
      appBar: AppBar(title: Text(widget.dailySchedule.name), elevation: 1),
      body: Column(
        children: [
          // Widget chọn ngày
          if (days.isNotEmpty)
            Container(
              height: 100, // đủ để tránh overflow
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                itemCount: days.length,
                itemBuilder: (context, index) {
                  final day = days[index];
                  final isSelected = DateUtils.isSameDay(_selectedDate, day);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDate = day;
                      });
                      _fetchSchedulesForSelectedDate();
                    },
                    child: Container(
                      width: 65,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color:
                            isSelected
                                ? Theme.of(context).primaryColor
                                : Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                        border:
                            isSelected
                                ? Border.all(
                                  color: Theme.of(context).primaryColorLight,
                                  width: 2,
                                )
                                : null,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              DateFormat.EEEE('vi_VN').format(day), // T2, T3...
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    isSelected ? Colors.white : Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              DateFormat('dd/MM/yyyy').format(day),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          const Divider(height: 1),
          // Danh sách các thẻ TrainingSchedule
          Expanded(
            child: BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
              builder: (context, state) {
                if (state is TrainingSchedule_Loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is LoadedTrainingSchedulesByDailyScheduleId) {
                  if (state.trainingSchedules.isEmpty) {
                    return const Center(
                      child: Text('Không có lịch tập nào cho ngày đã chọn.'),
                    );
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.trainingSchedules.length,
                    itemBuilder: (context, index) {
                      final schedule = state.trainingSchedules[index];
                      return TrainingScheduleCard(
                        trainingSchedule: schedule,
                        exercises: state.exercisesBySchedule[schedule.id] ?? [],
                        exerciseDetails: state.exerciseDetails,
                      );
                    },
                  );
                }
                if (state is TrainingSchedule_Error) {
                  return Center(child: Text('Đã xảy ra lỗi: ${state.message}'));
                }
                return const Center(
                  child: Text('Hãy chọn một ngày để xem lịch tập.'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
