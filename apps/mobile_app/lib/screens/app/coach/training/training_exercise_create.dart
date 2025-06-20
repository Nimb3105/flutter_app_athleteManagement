import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/training/exercise_select_screen.dart';

class TrainingExerciseCreateScreen extends StatelessWidget {
  final TrainingSchedule trainingSchedule;

  const TrainingExerciseCreateScreen({
    super.key,
    required this.trainingSchedule,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm bài tập'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
        listener: (context, state) {
          if (state is LoadedTrainingExercise) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bài tập đã được thêm thành công!')),
            );
            context.read<TrainingExerciseBloc>().add(
              GetAllTrainingExercisesByScheduleId(trainingSchedule.id!),
            );
            Navigator.of(context).pop();
          } else if (state is TrainingExercise_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
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

class _TrainingExerciseCreateView extends StatelessWidget {
  final TrainingSchedule trainingSchedule;
  final List<Exercise> exercises;
  final bool isLoading;

  const _TrainingExerciseCreateView({
    required this.trainingSchedule,
    required this.exercises,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (exercises.isNotEmpty) {
      return _TrainingExerciseCreateViewStateful(
        trainingSchedule: trainingSchedule,
        exercises: exercises,
        isLoading: false,
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Không có bài tập nào để chọn.',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<ExerciseBloc>().add(const GetAllExercises());
              },
              child: const Text('Tải lại bài tập'),
            ),
          ],
        ),
      );
    }
  }
}

class _TrainingExerciseCreateViewStateful extends StatefulWidget {
  final TrainingSchedule trainingSchedule;
  final List<Exercise> exercises;
  final bool isLoading;

  const _TrainingExerciseCreateViewStateful({
    required this.trainingSchedule,
    required this.exercises,
    required this.isLoading,
  });

  @override
  State<_TrainingExerciseCreateViewStateful> createState() =>
      _TrainingExerciseCreateViewState();
}

class _TrainingExerciseCreateViewState
    extends State<_TrainingExerciseCreateViewStateful> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedExerciseId;
  String? _selectedExerciseName;
  int? _order;
  int? _reps;
  int? _sets;
  double? _weight;
  int? _duration;
  double? _distance;

  String _measurementType = 'Sets';
  String _weightUnit = 'kg';
  String _durationUnit = 'phút';
  String _distanceUnit = 'km';

  @override
  void initState() {
    super.initState();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_selectedExerciseId == null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Vui lòng chọn bài tập')));
        return;
      }

      // Convert duration and distance to base units before sending
      int finalDurationInSeconds = 0;
      if (_duration != null) {
        if (_durationUnit == 'phút') {
          finalDurationInSeconds = _duration! * 60;
        } else if (_durationUnit == 'giây') {
          finalDurationInSeconds = _duration!;
        }
      }

      double finalDistanceInKm = 0.0;
      if (_distance != null) {
        if (_distanceUnit == 'km') {
          finalDistanceInKm = _distance!;
        } else if (_distanceUnit == 'm') {
          finalDistanceInKm = _distance! / 1000.0;
        }
      }

      // Initialize values based on selected measurement type
      final int repsToSave = _measurementType == 'Sets' ? (_reps ?? 0) : 0;
      final int setsToSave = _measurementType == 'Sets' ? (_sets ?? 0) : 0;
      final double weightToSave = _weight ?? 0.0; // Weight can apply to both
      final int durationToSave =
          _measurementType == 'Duration' ? finalDurationInSeconds : 0;
      final double distanceToSave =
          _measurementType == 'Duration' ? finalDistanceInKm : 0.0;

      final trainingExercise = TrainingExercise(
        id: null,
        scheduleId: widget.trainingSchedule.id!,
        exerciseId: _selectedExerciseId!,
        order: _order!,
        reps: repsToSave,
        sets: setsToSave,
        weight: weightToSave,
        duration: durationToSave,
        distance: distanceToSave,
        actualReps: 0,
        actualSets: 0,
        actualWeight: 0,
        actualDuration: 0,
        actualDistance: 0,
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );

      context.read<TrainingExerciseBloc>().add(
        CreateTrainingExercise(trainingExercise),
      );
    }
  }

  void _navigateToExerciseSelectScreen() async {
    // SỬA ĐỔI TẠI ĐÂY: Nhận kết quả trả về từ màn hình chọn bài tập
    final String? selectedId = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => ExerciseSelectScreen(
              selectedExerciseIds:
                  _selectedExerciseId != null ? [_selectedExerciseId!] : [],
              onExerciseSelected: (exerciseId) {},
              onExerciseDeselected: (exerciseId) {
                // Tương tự, callback này cũng sẽ không được gọi
              },
            ),
      ),
    );

    if (selectedId != null) {
      final selectedExercise = widget.exercises.firstWhere(
        (exercise) => exercise.id == selectedId,
        orElse:
            () => Exercise(
              id: selectedId, // Use the returned ID if not found in current list
              name: 'Không rõ bài tập', // Fallback name
              bodyPart: '',
              target: '',
              secondaryMuscles: [],
              instructions: [],
              equipment: '',
              gifUrl: '',
              sportName: '',
              createdAt: null,
              updatedAt: null,
            ),
      );
      setState(() {
        _selectedExerciseId = selectedId;
        _selectedExerciseName = selectedExercise.name;
      });
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
            // Exercise Selection
            const SizedBox(height: 16),
            InkWell(
              onTap: widget.isLoading ? null : _navigateToExerciseSelectScreen,
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Bài tập',
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(Icons.arrow_drop_down),
                  errorText:
                      _selectedExerciseId == null &&
                              _formKey.currentState?.validate() == false
                          ? 'Vui lòng chọn bài tập'
                          : null,
                ),
                child: Text(
                  _selectedExerciseName ?? 'Chọn bài tập',
                  style: TextStyle(
                    color:
                        _selectedExerciseName == null
                            ? Colors.grey
                            : Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Order
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Thứ tự bài tập trong buổi',
                border: OutlineInputBorder(),
              ),
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
            const SizedBox(height: 16),

            // Measurement Type Selector: Sets or Duration
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Đo lường theo',
                border: OutlineInputBorder(),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _measurementType,
                  onChanged: (String? newValue) {
                    setState(() {
                      _measurementType = newValue!;
                      // Reset values when switching type to avoid confusion
                      _reps = null;
                      _sets = null;
                      _weight =
                          null; // Weight can be reset or kept based on preference
                      _duration = null;
                      _distance = null;
                    });
                  },
                  items:
                      <String>[
                        'Sets',
                        'Duration',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value == 'Sets'
                                ? 'Số hiệp & Số lần lặp lại'
                                : 'Thời lượng & Khoảng cách',
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Conditional Fields based on _measurementType
            if (_measurementType == 'Sets') ...[
              // Reps
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Số lần lặp lại (Reps)',
                  hintText: 'VD: 10',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập số lần lặp lại';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (int.parse(value) < 0) {
                    return 'Số lần lặp lại không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _reps = int.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),

              // Sets
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Số hiệp (Sets)',
                  hintText: 'VD: 3',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập số hiệp';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (int.parse(value) < 0) {
                    return 'Số hiệp không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _sets = int.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),

              // Weight (for Sets-based exercises)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Trọng lượng',
                  hintText: 'VD: 50.5',
                  border: const OutlineInputBorder(),
                  suffixIcon: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _weightUnit,
                      onChanged: (String? newValue) {
                        setState(() {
                          _weightUnit = newValue!;
                        });
                      },
                      items:
                          <String>['kg', 'lbs'].map<DropdownMenuItem<String>>((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // Weight might be optional for some bodyweight exercises, adjust as needed
                    return null; // Make it optional
                  }
                  if (double.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (double.parse(value) < 0) {
                    return 'Trọng lượng không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _weight = double.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),
            ] else if (_measurementType == 'Duration') ...[
              // Duration
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Thời lượng',
                  hintText: 'VD: 30',
                  border: const OutlineInputBorder(),
                  suffixIcon: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _durationUnit,
                      onChanged: (String? newValue) {
                        setState(() {
                          _durationUnit = newValue!;
                        });
                      },
                      items:
                          <String>[
                            'phút',
                            'giây',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập thời lượng';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (int.parse(value) < 0) {
                    return 'Thời lượng không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _duration = int.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),

              // Distance (for Duration-based exercises like running, cycling)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Khoảng cách',
                  hintText: 'VD: 5.2',
                  border: const OutlineInputBorder(),
                  suffixIcon: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _distanceUnit,
                      onChanged: (String? newValue) {
                        setState(() {
                          _distanceUnit = newValue!;
                        });
                      },
                      items:
                          <String>['km', 'm'].map<DropdownMenuItem<String>>((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // Distance can be optional for some duration-based exercises
                    return null; // Make it optional
                  }
                  if (double.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (double.parse(value) < 0) {
                    return 'Khoảng cách không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _distance = double.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),

              // Weight (optional for Duration-based, e.g., weighted carry, rucking)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Trọng lượng (tùy chọn)',
                  hintText: 'VD: 10 (kg)',
                  border: const OutlineInputBorder(),
                  suffixIcon: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _weightUnit,
                      onChanged: (String? newValue) {
                        setState(() {
                          _weightUnit = newValue!;
                        });
                      },
                      items:
                          <String>['kg', 'lbs'].map<DropdownMenuItem<String>>((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return null; // This field is optional
                  }
                  if (double.tryParse(value) == null) {
                    return 'Vui lòng nhập số hợp lệ';
                  }
                  if (double.parse(value) < 0) {
                    return 'Trọng lượng không thể âm';
                  }
                  return null;
                },
                onSaved: (value) {
                  _weight = double.tryParse(value!);
                },
              ),
              const SizedBox(height: 16),
            ],

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: widget.isLoading ? null : _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                child:
                    widget.isLoading
                        ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                        : const Text(
                          'Thêm bài tập',
                          style: TextStyle(fontSize: 18),
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
