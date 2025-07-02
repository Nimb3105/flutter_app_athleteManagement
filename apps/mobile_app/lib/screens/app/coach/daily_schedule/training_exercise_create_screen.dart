import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:core/models/training_schedule/training_exercise.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/exercise_select_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MaxValueInputFormatter extends TextInputFormatter {
  final int max;

  MaxValueInputFormatter(this.max);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;

    final int? value = int.tryParse(newValue.text);
    if (value != null && value > max) {
      return oldValue;
    }
    return newValue;
  }
}

class TrainingExerciseCreateScreen extends StatefulWidget {
  final DateTime trainingDate;
  final String? sportId;

  const TrainingExerciseCreateScreen({
    required this.trainingDate,
    required this.sportId,
    super.key,
  });

  @override
  State<TrainingExerciseCreateScreen> createState() =>
      _TrainingExerciseCreateScreenState();
}

class _TrainingExerciseCreateScreenState
    extends State<TrainingExerciseCreateScreen> {
  final formKey = GlobalKey<FormState>();
  final exerciseNameController = TextEditingController();
  final repsController = TextEditingController();
  final setsController = TextEditingController();
  final weightController = TextEditingController();
  final durationController = TextEditingController();
  final distanceController = TextEditingController();

  final unitTypeNotifier = ValueNotifier<String?>(null);
  final exerciseIdNotifier = ValueNotifier<String?>(null);
  final distanceUnitNotifier = ValueNotifier<String>('m');
  final timeUnitNotifier = ValueNotifier<String>('giây');

  @override
  void dispose() {
    exerciseNameController.dispose();
    repsController.dispose();
    setsController.dispose();
    weightController.dispose();
    durationController.dispose();
    distanceController.dispose();
    unitTypeNotifier.dispose();
    exerciseIdNotifier.dispose();
    distanceUnitNotifier.dispose();
    timeUnitNotifier.dispose();
    super.dispose();
  }

  void _selectExercise() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseSelectScreen(sportId: widget.sportId),
      ),
    );
    if (result != null && result is List && result.length == 3) {
      setState(() {
        exerciseIdNotifier.value = result[0] as String?;
        exerciseNameController.text = result[1] as String;
        unitTypeNotifier.value = result[2] as String?;
        // Reset fields when new exercise is selected
        repsController.clear();
        setsController.clear();
        durationController.clear();
        distanceController.clear();
        weightController.clear();
      });
    }
  }

  void _submitForm() {
    if (formKey.currentState!.validate()) {
      final unitType = unitTypeNotifier.value;
      final exerciseId = exerciseIdNotifier.value;
      if (exerciseId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Vui lòng chọn bài tập hợp lệ')),
        );
        return;
      }

      // Tính toán giá trị dựa trên đơn vị đã chọn
      final distance = double.tryParse(distanceController.text) ?? 0;
      final finalDistance =
          distance * (distanceUnitNotifier.value == 'km' ? 1000 : 1);

      final duration = double.tryParse(durationController.text) ?? 0;
      final finalDuration =
          duration * (timeUnitNotifier.value == 'phút' ? 60 : 1);

      final trainingExercise = TrainingExercise(
        sportId: widget.sportId!,
        id: null,
        scheduleId: null,
        exerciseId: exerciseId,
        order: 0,
        reps:
            unitType == 'Hiệp' && repsController.text.isNotEmpty
                ? int.parse(repsController.text)
                : 0,
        sets:
            unitType == 'Hiệp' && setsController.text.isNotEmpty
                ? int.parse(setsController.text)
                : 0,
        weight: double.tryParse(weightController.text) ?? 0.0,
        duration: unitType == 'Thời gian' ? finalDuration.toInt() : 0,
        distance: unitType == 'Thời gian' ? finalDistance : 0.0,
        actualReps: 0,
        actualSets: 0,
        actualWeight: 0.0,
        actualDuration: 0,
        actualDistance: 0.0,
        createdAt: null,
        updatedAt: null,
        status: 'đã lên lịch',
      );
      Navigator.pop(context, [trainingExercise, exerciseNameController.text]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thêm Bài Tập Chi Tiết',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            TextFormField(
              controller: exerciseNameController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Tên Bài Tập',
                hintText: 'Nhấn để chọn bài tập',
                suffixIcon: Icon(Icons.arrow_drop_down),
              ),
              validator:
                  (value) =>
                      value == null || value.isEmpty
                          ? 'Vui lòng chọn bài tập'
                          : null,
              onTap: _selectExercise,
            ),
            const SizedBox(height: 24),
            ValueListenableBuilder<String?>(
              valueListenable: unitTypeNotifier,
              builder: (context, unitType, child) {
                if (unitType == null) return const SizedBox.shrink();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thông số chi tiết',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    if (unitType == 'Hiệp') _buildRepsAndSets(),
                    if (unitType == 'Thời gian') _buildDurationAndDistance(),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: weightController,
                      decoration: const InputDecoration(
                        labelText: 'Trọng lượng tạ (kg)',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d*\.?\d*'),
                        ),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập trọng lượng tạ';
                        }
                        final weight = double.tryParse(value);
                        if (weight == null || weight < 0) {
                          return 'Trọng lượng phải là số không âm';
                        }
                        return null;
                      },
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('THÊM BÀI TẬP'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRepsAndSets() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: setsController,
            decoration: const InputDecoration(labelText: 'Số hiệp (Sets)'),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              MaxValueInputFormatter(50),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập số hiệp';
              }
              final sets = int.tryParse(value);
              if (sets == null || sets <= 0) {
                return 'Số hiệp phải là số nguyên dương';
              }
              return null;
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextFormField(
            controller: repsController,
            decoration: const InputDecoration(labelText: 'Số lần (Reps)'),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              MaxValueInputFormatter(100),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) return 'Vui lòng nhập số lần';
              final reps = int.tryParse(value);
              if (reps == null || reps <= 0) {
                return 'Số lần phải là số nguyên dương';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDurationAndDistance() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: durationController,
                decoration: const InputDecoration(labelText: 'Thời gian'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập thời gian';
                  }
                  final duration = double.tryParse(value);
                  if (duration == null || duration < 0) {
                    return 'Thời gian phải là số không âm';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 16),
            ValueListenableBuilder<String>(
              valueListenable: timeUnitNotifier,
              builder: (context, timeUnit, child) {
                return DropdownButton<String>(
                  value: timeUnit,
                  items:
                      ['giây', 'phút']
                          .map(
                            (unit) => DropdownMenuItem(
                              value: unit,
                              child: Text(unit),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    if (value != null) timeUnitNotifier.value = value;
                  },
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: distanceController,
                decoration: const InputDecoration(labelText: 'Khoảng cách'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập khoảng cách';
                  }
                  final distance = double.tryParse(value);
                  if (distance == null || distance < 0) {
                    return 'Khoảng cách phải là số không âm';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 16),
            ValueListenableBuilder<String>(
              valueListenable: distanceUnitNotifier,
              builder: (context, distanceUnit, child) {
                return DropdownButton<String>(
                  value: distanceUnit,
                  items:
                      ['m', 'km']
                          .map(
                            (unit) => DropdownMenuItem(
                              value: unit,
                              child: Text(unit),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    if (value != null) distanceUnitNotifier.value = value;
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
