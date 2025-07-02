// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise_create_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise_edit_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingScheduleEditScreen extends StatefulWidget {
  final DateTime trainingDate;
  final String createBy;
  final String? sportId;
  final DateTime? latestEndTime;
  final TrainingSchedule schedule;
  final List<String> exerciseNames;

  const TrainingScheduleEditScreen({
    required this.trainingDate,
    required this.createBy,
    required this.sportId,
    this.latestEndTime,
    required this.schedule,
    required this.exerciseNames,
    super.key,
  });

  @override
  State<TrainingScheduleEditScreen> createState() =>
      _TrainingScheduleEditScreenState();
}

class _TrainingScheduleEditScreenState
    extends State<TrainingScheduleEditScreen> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController locationController;
  late final TextEditingController typeController;
  late final TextEditingController notesController;
  late final ValueNotifier<TimeOfDay?> startTimeNotifier;
  late final ValueNotifier<TimeOfDay?> endTimeNotifier;
  late final ValueNotifier<List<TrainingExercise>> trainingExercisesNotifier;
  late final ValueNotifier<List<String>> exerciseNamesNotifier;

  @override
  void initState() {
    super.initState();
    final schedule = widget.schedule;
    locationController = TextEditingController(text: schedule.location);
    typeController = TextEditingController(text: schedule.type);
    notesController = TextEditingController(text: schedule.notes);
    startTimeNotifier = ValueNotifier(
      TimeOfDay.fromDateTime(schedule.startTime.toLocal()),
    );
    endTimeNotifier = ValueNotifier(
      TimeOfDay.fromDateTime(schedule.endTime.toLocal()),
    );
    trainingExercisesNotifier = ValueNotifier(
      List<TrainingExercise>.from(schedule.trainingExercises),
    );
    exerciseNamesNotifier = ValueNotifier(
      List<String>.from(widget.exerciseNames),
    );
  }

  @override
  void dispose() {
    locationController.dispose();
    typeController.dispose();
    notesController.dispose();
    startTimeNotifier.dispose();
    endTimeNotifier.dispose();
    trainingExercisesNotifier.dispose();
    exerciseNamesNotifier.dispose();
    super.dispose();
  }

  void _updateSchedule() {
    if (formKey.currentState!.validate()) {
      final startTime = startTimeNotifier.value;
      final endTime = endTimeNotifier.value;

      if (startTime == null || endTime == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn giờ bắt đầu và kết thúc'),
          ),
        );
        return;
      }

      final startDateTime = DateTime(
        widget.trainingDate.year,
        widget.trainingDate.month,
        widget.trainingDate.day,
        startTime.hour,
        startTime.minute,
      );
      final endDateTime = DateTime(
        widget.trainingDate.year,
        widget.trainingDate.month,
        widget.trainingDate.day,
        endTime.hour,
        endTime.minute,
      );

      if (endDateTime.isBefore(startDateTime) ||
          endDateTime.isAtSameMomentAs(startDateTime)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Giờ kết thúc phải sau giờ bắt đầu')),
        );
        return;
      }

      if (widget.latestEndTime != null &&
          (startDateTime.isBefore(widget.latestEndTime!) ||
              startDateTime.isAtSameMomentAs(widget.latestEndTime!))) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Giờ bắt đầu phải sau giờ kết thúc của lịch tập trước đó',
            ),
          ),
        );
        return;
      }

      final updatedSchedule = widget.schedule.copyWith(
        date: widget.trainingDate,
        startTime: startDateTime.toUtc(),
        endTime: endDateTime.toUtc(),
        location: locationController.text,
        type: typeController.text,
        notes: notesController.text,
        trainingExercises: trainingExercisesNotifier.value,
        updatedAt: DateTime.now().toUtc(),
      );

      Navigator.pop(context, [updatedSchedule, exerciseNamesNotifier.value]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chỉnh Sửa Buổi Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            _buildSectionTitle('Thời gian & Địa điểm'),
            const SizedBox(height: 16),
            _buildTimePicker(
              context,
              'Giờ Bắt Đầu',
              startTimeNotifier,
              isStartTime: true,
            ),
            const SizedBox(height: 16),
            _buildTimePicker(context, 'Giờ Kết Thúc', endTimeNotifier),
            const SizedBox(height: 16),
            TextFormField(
              controller: locationController,
              decoration: const InputDecoration(labelText: 'Địa điểm'),
              validator:
                  (value) =>
                      value == null || value.isEmpty
                          ? 'Vui lòng nhập địa điểm'
                          : null,
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Thông tin buổi tập'),
            const SizedBox(height: 16),
            TextFormField(
              controller: typeController,
              decoration: const InputDecoration(
                labelText: 'Loại buổi tập (Vd: Thể lực , Sức mạnh)',
              ),
              validator:
                  (value) =>
                      value == null || value.isEmpty
                          ? 'Vui lòng nhập loại buổi tập'
                          : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: notesController,
              decoration: const InputDecoration(labelText: 'Ghi chú'),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            _buildExerciseListSection(),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _updateSchedule,
              child: const Text('CẬP NHẬT BUỔI TẬP'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildTimePicker(
    BuildContext context,
    String label,
    ValueNotifier<TimeOfDay?> notifier, {
    bool isStartTime = false,
  }) {
    return ValueListenableBuilder<TimeOfDay?>(
      valueListenable: notifier,
      builder: (context, time, child) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          title: Text(time == null ? label : '$label: ${time.format(context)}'),
          trailing: const Icon(Icons.access_time_rounded),
          onTap: () async {
            TimeOfDay initialTime = time ?? TimeOfDay.now();

            final selectedTime = await showTimePicker(
              context: context,
              initialTime: initialTime,
            );

            if (selectedTime != null) {
              final selectedDateTime = DateTime(
                widget.trainingDate.year,
                widget.trainingDate.month,
                widget.trainingDate.day,
                selectedTime.hour,
                selectedTime.minute,
              );
              if (isStartTime &&
                  widget.latestEndTime != null &&
                  (selectedDateTime.isBefore(widget.latestEndTime!) ||
                      selectedDateTime.isAtSameMomentAs(
                        widget.latestEndTime!,
                      ))) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Giờ bắt đầu phải sau giờ kết thúc của lịch tập trước đó',
                    ),
                  ),
                );
              } else if (!isStartTime && startTimeNotifier.value != null) {
                final startDateTime = DateTime(
                  widget.trainingDate.year,
                  widget.trainingDate.month,
                  widget.trainingDate.day,
                  startTimeNotifier.value!.hour,
                  startTimeNotifier.value!.minute,
                );
                if (selectedDateTime.isBefore(startDateTime) ||
                    selectedDateTime.isAtSameMomentAs(startDateTime)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Giờ kết thúc phải sau giờ bắt đầu'),
                    ),
                  );
                } else {
                  notifier.value = selectedTime;
                }
              } else {
                notifier.value = selectedTime;
              }
            }
          },
        );
      },
    );
  }

  Widget _buildExerciseListSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSectionTitle('Danh sách bài tập'),
            TextButton.icon(
              icon: const Icon(Icons.add_circle_outline),
              label: const Text('Thêm'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => TrainingExerciseCreateScreen(
                          trainingDate: widget.trainingDate,
                          sportId: widget.sportId,
                        ),
                  ),
                );
                if (result != null && result is List && result.length == 2) {
                  final newExercise = result[0] as TrainingExercise;
                  final exerciseName = result[1] as String;

                  trainingExercisesNotifier.value = [
                    ...trainingExercisesNotifier.value,
                    newExercise.copyWith(
                      order: trainingExercisesNotifier.value.length + 1,
                    ),
                  ];
                  exerciseNamesNotifier.value = [
                    ...exerciseNamesNotifier.value,
                    exerciseName,
                  ];
                }
              },
            ),
          ],
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder<List<TrainingExercise>>(
          valueListenable: trainingExercisesNotifier,
          builder: (context, exercises, child) {
            if (exercises.isEmpty) {
              return Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Chưa có bài tập nào được thêm.',
                    style: GoogleFonts.poppins(color: Colors.grey[600]),
                  ),
                ),
              );
            }
            return ValueListenableBuilder<List<String>>(
              valueListenable: exerciseNamesNotifier,
              builder: (context, names, child) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: exercises.length,
                  itemBuilder: (context, index) {
                    final exercise = exercises[index];
                    final name = index < names.length ? names[index] : '...';
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        leading: CircleAvatar(child: Text('${index + 1}')),
                        title: Text(
                          name,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, size: 20),
                              onPressed: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => TrainingExerciseEditScreen(
                                          trainingDate: widget.trainingDate,
                                          sportId: widget.sportId,
                                          exercise: exercise,
                                          exerciseName: name,
                                        ),
                                  ),
                                );
                                if (result != null &&
                                    result is List &&
                                    result.length == 2) {
                                  final updatedExercise =
                                      result[0] as TrainingExercise;
                                  final updatedName = result[1] as String;

                                  final currentExercises =
                                      List<TrainingExercise>.from(
                                        trainingExercisesNotifier.value,
                                      );
                                  currentExercises[index] = updatedExercise
                                      .copyWith(order: index + 1);

                                  final currentNames = List<String>.from(
                                    exerciseNamesNotifier.value,
                                  );
                                  currentNames[index] = updatedName;

                                  trainingExercisesNotifier.value =
                                      currentExercises;
                                  exerciseNamesNotifier.value = currentNames;
                                }
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete_outline,
                                color: Colors.red[400],
                                size: 20,
                              ),
                              onPressed: () {
                                final currentExercises =
                                    List<TrainingExercise>.from(
                                      trainingExercisesNotifier.value,
                                    );
                                currentExercises.removeAt(index);
                                for (
                                  int i = 0;
                                  i < currentExercises.length;
                                  i++
                                ) {
                                  currentExercises[i] = currentExercises[i]
                                      .copyWith(order: i + 1);
                                }

                                final currentNames = List<String>.from(
                                  exerciseNamesNotifier.value,
                                );
                                currentNames.removeAt(index);

                                trainingExercisesNotifier.value =
                                    currentExercises;
                                exerciseNamesNotifier.value = currentNames;
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}
