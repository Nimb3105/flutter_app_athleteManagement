import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise/exercise_select_for_training_exercise.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTrainingExerciseForTrainingScheduleScreen extends StatefulWidget {
  final String? sportId;
  final String coachId;

  const AddTrainingExerciseForTrainingScheduleScreen({
    super.key,
    required this.sportId,
    required this.coachId,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AddTrainingExerciseForTrainingScheduleScreenState createState() =>
      _AddTrainingExerciseForTrainingScheduleScreenState();
}

class _AddTrainingExerciseForTrainingScheduleScreenState
    extends State<AddTrainingExerciseForTrainingScheduleScreen> {
  final _formKey = GlobalKey<FormState>();
  final _exerciseNameController = TextEditingController();
  final _repsController = TextEditingController();
  final _setsController = TextEditingController();
  final _weightController = TextEditingController();
  final _durationController = TextEditingController();
  final _distanceController = TextEditingController();

  String? _exerciseId;
  String? _unitType;

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

      final newTrainingExercise = TrainingExercise(
        sportId: widget.sportId!,
        id: null,
        scheduleId: null,
        exerciseId: _exerciseId!,
        order: 0,
        reps: int.tryParse(_repsController.text) ?? 0,
        sets: int.tryParse(_setsController.text) ?? 0,
        weight: double.tryParse(_weightController.text) ?? 0.0,
        duration: int.tryParse(_durationController.text) ?? 0,
        distance: double.tryParse(_distanceController.text) ?? 0.0,
        actualReps: 0,
        actualSets: 0,
        actualWeight: 0.0,
        actualDuration: 0,
        actualDistance: 0.0,
        status: 'đã lên lịch',
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );

      Navigator.of(context).pop({
        'exercise': newTrainingExercise,
        'exerciseName': _exerciseNameController.text,
        'unitType': _unitType,
      });
    }
  }

  Widget _buildUnitFields() {
    if (_unitType == 'Hiệp') {
      return Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _setsController,
              decoration: const InputDecoration(labelText: 'Số hiệp'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextFormField(
              controller: _repsController,
              decoration: const InputDecoration(labelText: 'Số lần'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
            ),
          ),
        ],
      );
    } else if (_unitType == 'Thời gian') {
      return Column(
        children: [
          TextFormField(
            controller: _durationController,
            decoration: const InputDecoration(labelText: 'Thời gian (giây)'),
            keyboardType: TextInputType.number,
            validator: (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _distanceController,
            decoration: const InputDecoration(labelText: 'Khoảng cách (mét)'),
            keyboardType: TextInputType.number,
            validator: (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
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
          'Thêm Bài Tập Chi Tiết',
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
              if (_unitType != null) ...[
                Text(
                  'Thông số',
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
              ElevatedButton(onPressed: _submit, child: const Text('THÊM')),
            ],
          ),
        ),
      ),
    );
  }
}
