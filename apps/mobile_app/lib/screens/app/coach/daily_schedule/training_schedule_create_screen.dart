// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise_create_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise_edit_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingScheduleCreateScreen extends StatefulWidget {
  final DateTime trainingDate;
  final String createBy;
  final String? sportId;
  final DateTime? latestEndTime;

  const TrainingScheduleCreateScreen({
    required this.trainingDate,
    required this.createBy,
    required this.sportId,
    this.latestEndTime,
    super.key,
  });

  @override
  State<TrainingScheduleCreateScreen> createState() =>
      _TrainingScheduleCreateScreenState();
}

class _TrainingScheduleCreateScreenState
    extends State<TrainingScheduleCreateScreen> {
  final formKey = GlobalKey<FormState>();
  final locationController = TextEditingController();
  final typeController = TextEditingController();
  final notesController = TextEditingController();
  final startTimeNotifier = ValueNotifier<TimeOfDay?>(null);
  final endTimeNotifier = ValueNotifier<TimeOfDay?>(null);
  final trainingExercisesNotifier = ValueNotifier<List<TrainingExercise>>([]);
  final exerciseNamesNotifier = ValueNotifier<List<String>>([]);

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

  void _submitForm() {
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

      final trainingSchedule = TrainingSchedule(
        sportId: widget.sportId!,
        id: null,
        date: widget.trainingDate,
        startTime: startDateTime.toUtc(),
        endTime: endDateTime.toUtc(),
        status: "Đã lên lịch",
        location: locationController.text,
        type: typeController.text,
        notes: notesController.text,
        createdBy: widget.createBy,
        progress: 0.0,
        dailyScheduleId: null,
        trainingExercises: trainingExercisesNotifier.value,
        createdAt: null,
        updatedAt: null,
      );
      Navigator.pop(context, [trainingSchedule, exerciseNamesNotifier.value]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thêm Buổi Tập',
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
                labelText: 'Loại buổi tập (Vd: Thể lực, Sức mạnh)',
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
              onPressed: _submitForm,
              child: const Text('LƯU BUỔI TẬP'),
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
            TimeOfDay initialTime = TimeOfDay.now();
            if (isStartTime && widget.latestEndTime != null) {
              initialTime = TimeOfDay.fromDateTime(
                widget.latestEndTime!.add(const Duration(minutes: 1)),
              );
            } else if (!isStartTime && startTimeNotifier.value != null) {
              final startDateTime = DateTime(
                widget.trainingDate.year,
                widget.trainingDate.month,
                widget.trainingDate.day,
                startTimeNotifier.value!.hour,
                startTimeNotifier.value!.minute,
              );
              initialTime = TimeOfDay.fromDateTime(
                startDateTime.add(const Duration(minutes: 1)),
              );
            }

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

                  final currentExercises = trainingExercisesNotifier.value;
                  final updatedExercises = List<TrainingExercise>.from(
                    currentExercises,
                  )..add(
                    newExercise.copyWith(order: currentExercises.length + 1),
                  );

                  final currentNames = exerciseNamesNotifier.value;
                  final updatedNames = List<String>.from(currentNames)
                    ..add(exerciseName);

                  trainingExercisesNotifier.value = updatedExercises;
                  exerciseNamesNotifier.value = updatedNames;
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
                                      trainingExercisesNotifier.value;
                                  currentExercises[index] = updatedExercise
                                      .copyWith(order: index + 1);

                                  final currentNames =
                                      exerciseNamesNotifier.value;
                                  currentNames[index] = updatedName;

                                  trainingExercisesNotifier.value = List.from(
                                    currentExercises,
                                  );
                                  exerciseNamesNotifier.value = List.from(
                                    currentNames,
                                  );
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
                                    trainingExercisesNotifier.value;
                                currentExercises.removeAt(index);
                                // Re-order
                                for (
                                  int i = 0;
                                  i < currentExercises.length;
                                  i++
                                ) {
                                  currentExercises[i] = currentExercises[i]
                                      .copyWith(order: i + 1);
                                }

                                final currentNames =
                                    exerciseNamesNotifier.value;
                                currentNames.removeAt(index);

                                trainingExercisesNotifier.value = List.from(
                                  currentExercises,
                                );
                                exerciseNamesNotifier.value = List.from(
                                  currentNames,
                                );
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
