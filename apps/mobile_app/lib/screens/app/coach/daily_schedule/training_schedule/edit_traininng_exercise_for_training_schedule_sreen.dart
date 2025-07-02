import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class EditTrainingExerciseForTrainingScheduleScreen extends StatefulWidget {
  final TrainingExercise trainingExercise;
  final String exerciseName;
  final String unitType;

  const EditTrainingExerciseForTrainingScheduleScreen({
    super.key,
    required this.trainingExercise,
    required this.exerciseName,
    required this.unitType,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditTrainingExerciseForTrainingScheduleScreenState createState() =>
      _EditTrainingExerciseForTrainingScheduleScreenState();
}

class _EditTrainingExerciseForTrainingScheduleScreenState
    extends State<EditTrainingExerciseForTrainingScheduleScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _repsController;
  late TextEditingController _setsController;
  late TextEditingController _weightController;
  late TextEditingController _durationController;
  late TextEditingController _distanceController;

  @override
  void initState() {
    super.initState();
    final te = widget.trainingExercise;
    _repsController = TextEditingController(
      text: te.reps > 0 ? te.reps.toString() : '',
    );
    _setsController = TextEditingController(
      text: te.sets > 0 ? te.sets.toString() : '',
    );
    _weightController = TextEditingController(
      text: te.weight > 0 ? te.weight.toString() : '',
    );
    _durationController = TextEditingController(
      text: te.duration > 0 ? te.duration.toString() : '',
    );
    _distanceController = TextEditingController(
      text: te.distance > 0 ? te.distance.toString() : '',
    );
  }

  @override
  void dispose() {
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
      final updatedExercise = widget.trainingExercise.copyWith(
        reps: int.tryParse(_repsController.text) ?? 0,
        sets: int.tryParse(_setsController.text) ?? 0,
        weight: double.tryParse(_weightController.text) ?? 0.0,
        duration: int.tryParse(_durationController.text) ?? 0,
        distance: double.tryParse(_distanceController.text) ?? 0.0,
      );
      Navigator.of(context).pop(updatedExercise);
    }
  }

  Widget _buildUnitFields() {
    if (widget.unitType == 'Hiệp') {
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
    } else if (widget.unitType == 'Thời gian') {
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
          'Sửa: ${widget.exerciseName}',
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
                initialValue: widget.exerciseName,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Bài tập',
                  border: InputBorder.none,
                  filled: false,
                ),
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 24),
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
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('LƯU THAY ĐỔI'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
