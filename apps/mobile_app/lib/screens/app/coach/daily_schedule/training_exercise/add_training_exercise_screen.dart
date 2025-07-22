// lib/screens/app/coach/daily_schedule/training_exercise/add_training_exercise_screen.dart
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'exercise_select_for_training_exercise.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTrainingExerciseScreen extends StatefulWidget {
  final String scheduleId;
  final String? sportId;
  final String coachId;
  // Thêm biến order để xác định thứ tự bài tập trong lịch tập
  final int order;

  const AddTrainingExerciseScreen({
    super.key,
    required this.scheduleId,
    this.sportId,
    required this.order,
    required this.coachId,
  });

  @override
  _AddTrainingExerciseScreenState createState() =>
      _AddTrainingExerciseScreenState();
}

class _AddTrainingExerciseScreenState extends State<AddTrainingExerciseScreen> {
  final _formKey = GlobalKey<FormState>();

  final _exerciseNameController = TextEditingController();
  final _repsController = TextEditingController();
  final _setsController = TextEditingController();
  final _weightController = TextEditingController();
  final _durationController = TextEditingController();
  final _distanceController = TextEditingController();

  String? _exerciseId;
  String _unitType = '';

  // Biến mới để quản lý đơn vị
  String _distanceUnit = 'm';
  String _durationUnit = 'giây';

  @override
  void dispose() {
    _exerciseNameController.dispose();
    _repsController.dispose();
    _setsController.dispose();
    _weightController.dispose();
    _durationController.dispose();
    _distanceController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Xử lý chuyển đổi đơn vị trước khi gửi đi
      double distanceInMeters =
          double.tryParse(_distanceController.text) ?? 0.0;
      if (_distanceUnit == 'km') {
        distanceInMeters *= 1000;
      }

      int durationInSeconds = int.tryParse(_durationController.text) ?? 0;
      if (_durationUnit == 'phút') {
        durationInSeconds *= 60;
      }

      final newExercise = TrainingExercise(
        sportId: widget.sportId!,
        id: null,
        scheduleId: widget.scheduleId,
        exerciseId: _exerciseId!,
        order: widget.order + 1,
        reps: int.tryParse(_repsController.text) ?? 0,
        sets: int.tryParse(_setsController.text) ?? 0,
        weight: double.tryParse(_weightController.text) ?? 0.0,
        duration: durationInSeconds,
        distance: distanceInMeters,
        actualReps: 0,
        actualSets: 0,
        actualWeight: 0,
        actualDuration: 0,
        actualDistance: 0,
        status: 'đã lên lịch',
        createdAt: null,
        updatedAt: null,
      );

      context.read<TrainingExerciseBloc>().add(
        CreateTrainingExercise(newExercise),
      );
      Navigator.of(context).pop();
    }
  }

  Widget _buildUnitFields() {
    if (_unitType == 'Hiệp') {
      return Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _setsController,
              decoration: const InputDecoration(labelText: 'Số hiệp (Sets)'),
              keyboardType: TextInputType.number,
              validator:
                  (value) =>
                      (value == null || value.isEmpty)
                          ? 'Không được để trống'
                          : null,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextFormField(
              controller: _repsController,
              decoration: const InputDecoration(labelText: 'Số lần (Reps)'),
              keyboardType: TextInputType.number,
              validator:
                  (value) =>
                      (value == null || value.isEmpty)
                          ? 'Không được để trống'
                          : null,
            ),
          ),
        ],
      );
    } else if (_unitType == 'Thời gian') {
      return Column(
        children: [
          // Trường nhập Thời gian với đơn vị
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _durationController,
                  decoration: const InputDecoration(labelText: 'Thời gian'),
                  keyboardType: TextInputType.number,
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Không được để trống'
                              : null,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 80,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _durationUnit,
                    isExpanded: true,
                    items:
                        ['giây', 'phút']
                            .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)),
                            )
                            .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => _durationUnit = value);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Trường nhập Khoảng cách với đơn vị
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _distanceController,
                  decoration: const InputDecoration(labelText: 'Khoảng cách'),
                  keyboardType: TextInputType.number,
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Không được để trống'
                              : null,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 70,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _distanceUnit,
                    isExpanded: true,
                    items:
                        ['m', 'km']
                            .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)),
                            )
                            .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => _distanceUnit = value);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thêm Bài Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _exerciseNameController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Bài tập',
                  suffixIcon: Icon(Icons.arrow_drop_down),
                ),
                onTap: () async {
                  final selectedExercise = await Navigator.push<Exercise>(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => ExerciseSelectForTrainingScreen(
                            sportId: widget.sportId,
                            coachId: widget.coachId, // Pass the coachId if needed
                          ),
                    ),
                  );

                  if (selectedExercise != null) {
                    setState(() {
                      _exerciseId = selectedExercise.id;
                      _exerciseNameController.text = selectedExercise.name;
                      _unitType = selectedExercise.unitType;
                    });
                  }
                },
                validator:
                    (value) =>
                        (value == null || value.isEmpty)
                            ? 'Vui lòng chọn bài tập'
                            : null,
              ),
              const SizedBox(height: 24),
              if (_unitType.isNotEmpty) ...[
                Text(
                  'Thông số chi tiết',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                _buildUnitFields(),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    labelText: 'Trọng lượng (kg)',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Không được để trống'
                              : null,
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('THÊM BÀI TẬP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
