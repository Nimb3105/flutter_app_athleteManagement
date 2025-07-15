// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise/list_training_exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/add_training_schedule_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/edit_training_schedule_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ListTrainingScheduleScreen extends StatelessWidget {
  final String dailyScheduleId;
  final String date;
  final String sportId;
  final String createdBy;

  const ListTrainingScheduleScreen({
    required this.dailyScheduleId,
    required this.date,
    required this.sportId,
    required this.createdBy,
    super.key,
  });

  // --- LOGIC GỐC ĐƯỢC GIỮ NGUYÊN ---

  // Trả về màu chính cho các chỉ báo (indicator, progress bar)
  Color _getStatusIndicatorColor(String status) {
    switch (status.toLowerCase()) {
      case 'hoàn thành':
        return Colors.green;
      case 'chưa hoàn thành':
        return Colors.red;
      case 'đã lên lịch':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  // Trả về màu nền nhạt cho thẻ Card
  Color _getCardBackgroundColor(String status) {
    switch (status.toLowerCase()) {
      case 'hoàn thành':
        return Colors.green.shade50;
      case 'chưa hoàn thành':
        return Colors.red.shade50;
      case 'đã lên lịch':
        return Colors.blue.shade50;
      default:
        return Colors.white;
    }
  }

  void _deleteSchedule(BuildContext context, TrainingSchedule schedule) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận gỡ bỏ'),
          content: Text(
            'Bạn có chắc chắn muốn gỡ lịch tập "${schedule.type}" không?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: const Text('Gỡ bỏ', style: TextStyle(color: Colors.red)),
              onPressed: () {
                final updateTrainingSchedule = schedule.copyWith(
                  dailyScheduleId: null,
                );
                context.read<TrainingScheduleBloc>().add(
                  UpdateTrainingSchedule(updateTrainingSchedule),
                );
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // --- GIAO DIỆN MỚI ---

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(
      'dd/MM/yyyy',
    ).format(DateTime.parse(date).toLocal());
    return BlocProvider(
      create:
          (context) => TrainingScheduleBloc(
            trainingScheduleRepository:
                context.read<TrainingScheduleRepository>(),
            exerciseRepository: context.read<ExerciseRepository>(),
            trainingExerciseRepository:
                context.read<TrainingExerciseRepository>(),
          )..add(
            GetAllTrainingSchedulesByDailyScheduleId(dailyScheduleId, date),
          ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lịch tập - $formattedDate',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          actions: [
            BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
              builder: (context, state) {
                DateTime? latestEndTime;
                if (state is LoadedTrainingSchedulesByDailyScheduleId &&
                    state.trainingSchedules.isNotEmpty) {
                  latestEndTime = state.trainingSchedules
                      .map((s) => s.endTime)
                      .reduce((a, b) => a.isAfter(b) ? a : b);
                }
                return IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => MultiBlocProvider(
                              providers: [
                                BlocProvider.value(
                                  value: context.read<TrainingScheduleBloc>(),
                                ),
                                BlocProvider(
                                  create:
                                      (newContext) => ExerciseBloc(
                                        exerciseRepository:
                                            context.read<ExerciseRepository>(),
                                      ),
                                ),
                              ],
                              child: AddTrainingScheduleScreen(
                                dailyScheduleId: dailyScheduleId,
                                date: DateTime.parse(date),
                                createBy: createdBy,
                                sportId: sportId,
                                latestEndTime: latestEndTime,
                              ),
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
          listener: (context, state) {
            if (state is TrainingSchedule_Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.green,
                ),
              );
              context.read<TrainingScheduleBloc>().add(
                GetAllTrainingSchedulesByDailyScheduleId(dailyScheduleId, date),
              );
            } else if (state is TrainingSchedule_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Lỗi: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
            builder: (context, state) {
              if (state is TrainingSchedule_Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedTrainingSchedulesByDailyScheduleId) {
                if (state.trainingSchedules.isEmpty) {
                  return _buildEmptyState();
                }
                // TẠO MỘT DANH SÁCH MỚI CÓ THỂ THAY ĐỔI VÀ SẮP XẾP NÓ
                final sortedSchedules = List<TrainingSchedule>.from(
                  state.trainingSchedules,
                );
                sortedSchedules.sort(
                  (a, b) => a.startTime.compareTo(b.startTime),
                );

                return _buildTimelineView(context, sortedSchedules);
              } else if (state is TrainingSchedule_Error) {
                return Center(child: Text('Lỗi: ${state.message}'));
              }
              return const Center(child: Text('Không có dữ liệu'));
            },
          ),
        ),
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
            'Nhấn nút + ở góc trên để thêm buổi tập.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineView(
    BuildContext context,
    List<TrainingSchedule> schedules,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        final schedule = schedules[index];
        return _buildTimelineTile(context, schedule, index, schedules);
      },
    );
  }

  TimelineTile _buildTimelineTile(
    BuildContext context,
    TrainingSchedule schedule,
    int index,
    List<TrainingSchedule> allSchedules,
  ) {
    final theme = Theme.of(context);
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.25,
      isFirst: index == 0,
      isLast: index == allSchedules.length - 1,
      indicatorStyle: IndicatorStyle(
        width: 40,
        height: 40,
        indicator: CircleAvatar(
          backgroundColor: _getStatusIndicatorColor(
            schedule.status,
          ).withOpacity(0.8),
          child: Icon(
            schedule.status.toLowerCase() == 'hoàn thành'
                ? Icons.check_circle
                : Icons.fitness_center,
            color: Colors.white,
            size: 20,
          ),
        ),
        padding: const EdgeInsets.all(6),
      ),
      beforeLineStyle: LineStyle(
        color: theme.colorScheme.primary.withOpacity(0.5),
      ),
      endChild: _buildScheduleCard(context, schedule, index, allSchedules),
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
    List<TrainingSchedule> allSchedules,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      color: _getCardBackgroundColor(
        schedule.status,
      ), // <--- THAY ĐỔI MÀU NỀN Ở ĐÂY
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create:
                            (newContext) => TrainingExerciseBloc(
                              trainingExerciseRepository:
                                  context.read<TrainingExerciseRepository>(),
                              exerciseRepository:
                                  context.read<ExerciseRepository>(),
                              trainingScheduleRepository:
                                  context.read<TrainingScheduleRepository>(),
                            ),
                      ),
                      BlocProvider(
                        create:
                            (newContext) => ExerciseBloc(
                              exerciseRepository:
                                  context.read<ExerciseRepository>(),
                            ),
                      ),
                      BlocProvider.value(
                        value: context.read<TrainingScheduleBloc>(),
                      ),
                    ],
                    child: ListTrainingExerciseScreen(
                      trainingSchedule: schedule,
                      sportId: sportId,
                    ),
                  ),
            ),
          ).then((_) {
            context.read<TrainingScheduleBloc>().add(
              GetAllTrainingSchedulesByDailyScheduleId(dailyScheduleId, date),
            );
          });
        },
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
                        TrainingSchedule? previousSchedule;
                        TrainingSchedule? nextSchedule;
                        if (index > 0) {
                          previousSchedule = allSchedules[index - 1];
                          if (index < allSchedules.length - 1) {
                            nextSchedule = allSchedules[index + 1];
                          }
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => BlocProvider.value(
                                  value: context.read<TrainingScheduleBloc>(),
                                  child: EditTrainingScheduleScreen(
                                    trainingSchedule: schedule,
                                    previousSchedule: previousSchedule,
                                    nextSchedule:
                                        nextSchedule, // Logic for nextSchedule can be added if needed
                                  ),
                                ),
                          ),
                        );
                      } else if (value == 'delete') {
                        _deleteSchedule(context, schedule);
                      }
                    },
                    itemBuilder:
                        (BuildContext context) => <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'edit',
                            child: Text('Sửa'),
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
                    child: Text(
                      schedule.location,
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: (schedule.progress ?? 0.0).clamp(0.0, 1.0),
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  _getStatusIndicatorColor(schedule.status),
                ),
                minHeight: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
