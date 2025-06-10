import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TrainingExerciseCreateScreen extends StatelessWidget {
  final TrainingSchedule trainingSchedule;

  const TrainingExerciseCreateScreen({super.key, required this.trainingSchedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Training Exercise'), backgroundColor: Theme.of(context).primaryColor),
      body: BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
        listener: (context, state) {
          if (state is LoadedTrainingExercise) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Training exercise added successfully')));
            context.read<TrainingExerciseBloc>().add(GetAllTrainingExercisesByScheduleId(trainingSchedule.id!));
            Navigator.of(context).pop();
          } else if (state is TrainingExercise_Error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            List<Exercise> exercises = [];
            bool isLoading = state is Exercise_Loading;

            if (state is LoadedExercises) {
              exercises = state.exercises;
            }

            return _TrainingExerciseCreateView(trainingSchedule: trainingSchedule, exercises: exercises, isLoading: isLoading);
          },
        ),
      ),
    );
  }
}

class _TrainingExerciseCreateView extends StatelessWidget {
  final TrainingSchedule trainingSchedule;
  final List<Exercise> exercises;
  final bool isLoading;

  const _TrainingExerciseCreateView({required this.trainingSchedule, required this.exercises, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseBloc, ExerciseState>(
      builder: (context, state) {
        if (state is Exercise_Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoadedExercises) {
          return _buildForm(context, state.exercises);
        } else if (state is Exercise_Error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Lỗi khi tải bài tập: ${state.message}', style: const TextStyle(color: Colors.red, fontSize: 16)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ExerciseBloc>().add(const GetAllExercises());
                  },
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          );
        }
        return const Center(child: Text('Vui lòng chờ...'));
      },
    );
  }

  Widget _buildForm(BuildContext context, List<Exercise> exercises) {
    return _TrainingExerciseCreateViewStateful(trainingSchedule: trainingSchedule, exercises: exercises, isLoading: false);
  }
}

class _TrainingExerciseCreateViewStateful extends StatefulWidget {
  final TrainingSchedule trainingSchedule;
  final List<Exercise> exercises;
  final bool isLoading;

  const _TrainingExerciseCreateViewStateful({required this.trainingSchedule, required this.exercises, required this.isLoading});

  @override
  State<_TrainingExerciseCreateViewStateful> createState() => _TrainingExerciseCreateViewState();
}

class _TrainingExerciseCreateViewState extends State<_TrainingExerciseCreateViewStateful> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedExerciseId;
  int? _order;

  @override
  void initState() {
    super.initState();
    // Nếu có bài tập, chọn bài tập đầu tiên làm mặc định
    context.read<ExerciseBloc>().add(const GetAllExercises());
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_selectedExerciseId == null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Vui lòng chọn bài tập')));
        return;
      }

      final trainingExercise = TrainingExercise(
        id: null,
        scheduleId: widget.trainingSchedule.id!,
        exerciseId: _selectedExerciseId!,
        order: _order!,
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );

      context.read<TrainingExerciseBloc>().add(CreateTrainingExercise(trainingExercise));
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Exercises: ${widget.exercises.map((e) => e.id).toList()}');
    debugPrint('Selected Exercise ID: $_selectedExerciseId');

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Bài tập', border: OutlineInputBorder()),
              value: _selectedExerciseId,
              items:
                  widget.exercises.isNotEmpty
                      ? widget.exercises.map((Exercise exercise) {
                        return DropdownMenuItem<String>(value: exercise.id, child: Text(exercise.name));
                      }).toList()
                      : [],
              onChanged:
                  widget.isLoading
                      ? null
                      : (String? newValue) {
                        setState(() {
                          _selectedExerciseId = newValue;
                        });
                      },
              validator: (value) => value == null ? 'Vui lòng chọn bài tập' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Thứ tự', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Vui lòng nhập thứ tự';
                }
                if (int.tryParse(value) == null) {
                  return 'Vui lòng nhập số hợp lệ';
                }
                if (int.parse(value) <= 0) {
                  return 'Thứ tự phải lớn hơn 0';
                }
                return null;
              },
              onSaved: (value) {
                _order = int.parse(value!);
              },
            ),
            if (widget.exercises.isEmpty && !widget.isLoading) ...[const SizedBox(height: 16), const Text('Không có bài tập nào', style: TextStyle(color: Colors.red, fontSize: 16))],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: widget.isLoading ? null : _submitForm,
              child: widget.isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Text('Thêm bài tập'),
            ),
          ],
        ),
      ),
    );
  }
}
