import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TrainingExerciseCreateScreen extends StatelessWidget {
  final TrainingSchedule trainingSchedule;

  const TrainingExerciseCreateScreen(
      {super.key, required this.trainingSchedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Training Exercise'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
        listener: (context, state) {
          if (state is LoadedTrainingExercise) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Training exercise added successfully')),
            );
            context
                .read<TrainingExerciseBloc>()
                .add(GetAllTrainingExercisesByScheduleId(trainingSchedule.id!));
            Navigator.of(context).pop();
          } else if (state is TrainingExercise_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.message}')),
            );
          }
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            List<Exercise> exercises = [];
            bool isLoading = state is Exercise_Loading;

            if (state is LoadedExercises) {
              exercises = state.exercises;
            }

            return _TrainingExerciseCreateView(
              trainingSchedule: trainingSchedule,
              exercises: exercises,
              isLoading: isLoading,
            );
          },
        ),
      ),
    );
  }
}

class _TrainingExerciseCreateView extends StatefulWidget {
  final TrainingSchedule trainingSchedule;
  final List<Exercise> exercises;
  final bool isLoading;

  const _TrainingExerciseCreateView({
    required this.trainingSchedule,
    required this.exercises,
    required this.isLoading,
  });

  @override
  State<_TrainingExerciseCreateView> createState() =>
      _TrainingExerciseCreateViewState();
}

class _TrainingExerciseCreateViewState
    extends State<_TrainingExerciseCreateView> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedExerciseId;
  int? _order;

  @override
  void initState() {
    super.initState();
    context.read<ExerciseBloc>().add(const GetAllExercises());
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save form to trigger onSaved callbacks
      debugPrint(
          'Form validated, order: $_order, exerciseId: $_selectedExerciseId');

      if (_selectedExerciseId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select an exercise')),
        );
        return;
      }

      final trainingExercise = TrainingExercise(
        id: null, // Let backend assign ID
        scheduleId: widget.trainingSchedule.id!,
        exerciseId: _selectedExerciseId!,
        order: _order!,
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );

      debugPrint('Submitting TrainingExercise: $trainingExercise');
      context
          .read<TrainingExerciseBloc>()
          .add(CreateTrainingExercise(trainingExercise));
    } else {
      debugPrint('Form validation failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Exercise',
                border: OutlineInputBorder(),
              ),
              value: _selectedExerciseId,
              items: widget.exercises.map((Exercise exercise) {
                return DropdownMenuItem<String>(
                  value: exercise.id,
                  child: Text(exercise.name),
                );
              }).toList(),
              onChanged: widget.isLoading
                  ? null
                  : (String? newValue) {
                      setState(() {
                        _selectedExerciseId = newValue;
                      });
                    },
              validator: (value) =>
                  value == null ? 'Please select an exercise' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Order',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the order';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                if (int.parse(value) <= 0) {
                  return 'Order must be greater than 0';
                }
                return null;
              },
              onSaved: (value) {
                _order = int.parse(value!);
                debugPrint('Order saved: $_order');
              },
            ),
            if (widget.exercises.isEmpty && !widget.isLoading) ...[
              const SizedBox(height: 16),
              const Text(
                'No exercises available',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: widget.isLoading ? null : _submitForm,
              child: widget.isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Add Exercise'),
            ),
          ],
        ),
      ),
    );
  }
}
