// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class EditTrainingExerciseScreen extends StatefulWidget {
  final TrainingExercise trainingExercise;

  const EditTrainingExerciseScreen({super.key, required this.trainingExercise});

  @override
  _EditTrainingExerciseScreenState createState() =>
      _EditTrainingExerciseScreenState();
}

class _EditTrainingExerciseScreenState
    extends State<EditTrainingExerciseScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _exerciseNameController;
  String? _unitType;
  late TextEditingController _repsController;
  late TextEditingController _setsController;
  late TextEditingController _weightController;
  late TextEditingController _durationController;
  late TextEditingController _distanceController;

  String _durationUnit = 'giây';
  String _distanceUnit = 'm';

  @override
  void initState() {
    super.initState();
    final te = widget.trainingExercise;
    _exerciseNameController = TextEditingController();
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
    context.read<ExerciseBloc>().add(GetExerciseById(te.exerciseId));
  }

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

      int durationInSeconds = int.tryParse(_durationController.text) ?? 0;
      if (_durationUnit == 'phút') {
        durationInSeconds *= 60;
      }

      double distanceInMeters =
          double.tryParse(_distanceController.text) ?? 0.0;
      if (_distanceUnit == 'km') {
        distanceInMeters *= 1000;
      }

      final updatedExercise = widget.trainingExercise.copyWith(
        reps: int.tryParse(_repsController.text) ?? 0,
        sets: int.tryParse(_setsController.text) ?? 0,
        weight: double.tryParse(_weightController.text) ?? 0.0,
        duration: durationInSeconds,
        distance: distanceInMeters,
        updatedAt: DateTime.now().toUtc(),
      );
      context.read<TrainingExerciseBloc>().add(
        UpdateTrainingExercise(updatedExercise),
      );
      Navigator.of(context).pop();
    }
  }

  Widget _buildUnitFields() {
    if (_unitType == null) {
      return const Center(child: CircularProgressIndicator());
    }
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: _durationController,
                  decoration: const InputDecoration(labelText: 'Thời gian'),
                  keyboardType: TextInputType.number,
                  validator:
                      (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 1,
                child: DropdownButtonFormField<String>(
                  value: _durationUnit,
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
                    if (value != null) {
                      setState(() {
                        _durationUnit = value;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: _distanceController,
                  decoration: const InputDecoration(labelText: 'Khoảng cách'),
                  keyboardType: TextInputType.number,
                  validator:
                      (v) => (v == null || v.isEmpty) ? 'Bắt buộc' : null,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 1,
                child: DropdownButtonFormField<String>(
                  value: _distanceUnit,
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
                    if (value != null) {
                      setState(() {
                        _distanceUnit = value;
                      });
                    }
                  },
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
          'Sửa Bài Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocListener<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is LoadedExercise &&
              state.exercise.id == widget.trainingExercise.exerciseId) {
            if (mounted) {
              setState(() {
                _exerciseNameController.text = state.exercise.name;
                _unitType = state.exercise.unitType;
              });
            }
          }
        },
        child: Padding(
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
      ),
    );
  }
}
