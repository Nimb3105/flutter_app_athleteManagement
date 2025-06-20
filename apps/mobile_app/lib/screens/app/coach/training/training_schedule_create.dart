// ignore_for_file: use_build_context_synchronously

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/training/exercise_select_screen.dart';

class TrainingScheduleCreate extends StatelessWidget {
  final String athleteId;
  final String createBy;

  const TrainingScheduleCreate({
    super.key,
    required this.athleteId,
    required this.createBy,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => ExerciseBloc(
                exerciseRepository: context.read<ExerciseRepository>(),
              )..add(const GetAllExercises()),
        ),
      ],
      child: _TrainingScheduleCreateView(
        athleteId: athleteId,
        createBy: createBy,
      ),
    );
  }
}

class _TrainingScheduleCreateView extends StatefulWidget {
  final String athleteId;
  final String createBy;

  const _TrainingScheduleCreateView({
    required this.athleteId,
    required this.createBy,
  });

  @override
  State<_TrainingScheduleCreateView> createState() =>
      _TrainingScheduleCreateViewState();
}

class _TrainingScheduleCreateViewState
    extends State<_TrainingScheduleCreateView> {
  final _formKey = GlobalKey<FormState>();
  final _locationController = TextEditingController();
  final _typeController = TextEditingController();
  final _notesController = TextEditingController();
  final List<TrainingExercise> _selectedTrainingExercises = [];

  DateTime? _selectedDate;
  DateTime? _startTime;
  DateTime? _endTime;

  @override
  void dispose() {
    _locationController.dispose();
    _typeController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: now,
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        if (_startTime != null &&
            DateTime(picked.year, picked.month, picked.day).isAfter(
              DateTime(_startTime!.year, _startTime!.month, _startTime!.day),
            )) {
          _startTime = null;
          _endTime = null;
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final now = DateTime.now();
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final selectedDate = _selectedDate ?? now;
      final selectedDateTime =
          DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            picked.hour,
            picked.minute,
          ).toLocal();

      if (selectedDateTime.isBefore(now)) {
        // ignore: duplicate_ignore
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Thời gian không thể trong quá khứ')),
        );
        return;
      }

      if (!isStartTime &&
          _startTime != null &&
          selectedDateTime.isBefore(_startTime!)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Giờ kết thúc không thể trước giờ bắt đầu'),
          ),
        );
        return;
      }

      setState(() {
        if (isStartTime) {
          _startTime = selectedDateTime;
          if (_endTime != null && _endTime!.isBefore(selectedDateTime)) {
            _endTime = null;
          }
        } else {
          _endTime = selectedDateTime;
        }
      });
    }
  }

  String? _validateForm() {
    if (_selectedDate == null) return 'Vui lòng chọn ngày';
    if (_startTime == null) return 'Vui lòng chọn giờ bắt đầu';
    if (_endTime == null) return 'Vui lòng chọn giờ kết thúc';
    if (_endTime!.isBefore(_startTime!)) {
      return 'Giờ kết thúc phải sau giờ bắt đầu';
    }
    if (_selectedTrainingExercises.isEmpty) {
      return 'Vui lòng chọn ít nhất một bài tập';
    }
    if (_locationController.text.isEmpty) return 'Vui lòng nhập địa điểm';
    if (_typeController.text.isEmpty) return 'Vui lòng nhập loại bài tập';
    if (_notesController.text.isEmpty) return 'Vui lòng nhập ghi chú';
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final validationError = _validateForm();
      if (validationError != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(validationError)));
        return;
      }
      final startTime =
          DateTime(
            _selectedDate!.year,
            _selectedDate!.month,
            _selectedDate!.day,
            _startTime!.hour,
            _startTime!.minute,
          ).toUtc();
      final endTime =
          DateTime(
            _selectedDate!.year,
            _selectedDate!.month,
            _selectedDate!.day,
            _endTime!.hour,
            _endTime!.minute,
          ).toUtc();

      final schedule = TrainingSchedule(
        id: null,
        date: _selectedDate!.toUtc(),
        startTime: startTime,
        endTime: endTime,
        status: "Đã lên lịch",
        location: _locationController.text,
        type: _typeController.text,
        notes: _notesController.text,
        createdBy: widget.createBy,
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
        trainingExercises: _selectedTrainingExercises,
        athleteId: widget.athleteId,
        progress: 0.0,
      );

      context.read<TrainingScheduleBloc>().add(
        CreateTrainingSchedule(schedule),
      );
    }
  }

  void _showExerciseSelectDialog() {
    showDialog(
      context: context,
      builder:
          (dialogContext) => BlocProvider.value(
            value: context.read<ExerciseBloc>(),
            child: Dialog(
              child: _ExerciseSelectDialog(
                selectedTrainingExercises: _selectedTrainingExercises,
                onSave: (trainingExercise) {
                  setState(() {
                    _selectedTrainingExercises.add(trainingExercise);
                  });
                },
              ),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo lịch tập mới'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is LoadedTrainingSchedule) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Tạo lịch tập thành công!')),
            );
            Navigator.of(context).pop();
          } else if (state is TrainingSchedule_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
          }
        },
        builder: (context, state) {
          final isLoading = state is TrainingSchedule_Loading;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      _selectedDate == null
                          ? 'Ngày tập'
                          : 'Ngày: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: isLoading ? null : () => _selectDate(context),
                  ),
                  ListTile(
                    title: Text(
                      _startTime == null
                          ? 'Giờ bắt đầu'
                          : 'Giờ bắt đầu: ${DateFormat('HH:mm').format(_startTime!)}',
                    ),
                    trailing: const Icon(Icons.access_time),
                    onTap: isLoading ? null : () => _selectTime(context, true),
                  ),
                  ListTile(
                    title: Text(
                      _endTime == null
                          ? 'Giờ kết thúc'
                          : 'Giờ kết thúc: ${DateFormat('HH:mm').format(_endTime!)}',
                    ),
                    trailing: const Icon(Icons.access_time),
                    onTap: isLoading ? null : () => _selectTime(context, false),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _locationController,
                    decoration: const InputDecoration(labelText: 'Địa điểm'),
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _typeController,
                    decoration: const InputDecoration(
                      labelText: 'Loại lịch tập',
                    ),
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _notesController,
                    decoration: const InputDecoration(labelText: 'Ghi chú'),
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: isLoading ? null : _showExerciseSelectDialog,
                    child: const Text('Chọn bài tập'),
                  ),
                  const SizedBox(height: 16),
                  SelectedExercisesWidget(
                    trainingExercises: _selectedTrainingExercises,
                    onRemove: (trainingExercise) {
                      setState(() {
                        _selectedTrainingExercises.remove(trainingExercise);
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: isLoading ? null : _submitForm,
                    child:
                        isLoading
                            ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                            : const Text('Tạo lịch tập mới'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ExerciseSelectDialog extends StatefulWidget {
  final List<TrainingExercise> selectedTrainingExercises;
  final Function(TrainingExercise) onSave;

  const _ExerciseSelectDialog({
    required this.selectedTrainingExercises,
    required this.onSave,
  });

  @override
  State<_ExerciseSelectDialog> createState() => _ExerciseSelectDialogState();
}

class _ExerciseSelectDialogState extends State<_ExerciseSelectDialog> {
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

  Future<void> _navigateToExerciseSelectScreen() async {
    final String? selectedId = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => ExerciseSelectScreen(
              selectedExerciseIds:
                  _selectedExerciseId != null ? [_selectedExerciseId!] : [],
              onExerciseSelected: (exerciseId) {},
              onExerciseDeselected: (exerciseId) {},
            ),
      ),
    );

    if (selectedId != null) {
      final exercises =
          (context.read<ExerciseBloc>().state as LoadedExercises).exercises;
      final selectedExercise = exercises.firstWhere(
        (exercise) => exercise.id == selectedId,
        orElse:
            () => Exercise(
              id: selectedId,
              name: 'Không rõ bài tập',
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

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_selectedExerciseId == null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Vui lòng chọn bài tập')));
        return;
      }

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

      final int repsToSave = _measurementType == 'Sets' ? (_reps ?? 0) : 0;
      final int setsToSave = _measurementType == 'Sets' ? (_sets ?? 0) : 0;
      final double weightToSave = _weight ?? 0.0;
      final int durationToSave =
          _measurementType == 'Duration' ? finalDurationInSeconds : 0;
      final double distanceToSave =
          _measurementType == 'Duration' ? finalDistanceInKm : 0.0;

      final trainingExercise = TrainingExercise(
        id: null,
        scheduleId: null, // scheduleId sẽ được backend gán
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

      widget.onSave(trainingExercise);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseBloc, ExerciseState>(
      builder: (context, state) {
        List<Exercise> exercises = [];
        bool isLoading = state is Exercise_Loading;

        if (state is LoadedExercises) {
          exercises = state.exercises;
        }

        if (isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (exercises.isNotEmpty) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Thêm bài tập',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: isLoading ? null : _navigateToExerciseSelectScreen,
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
                              _reps = null;
                              _sets = null;
                              _weight = null;
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
                    if (_measurementType == 'Sets') ...[
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
                                  <String>[
                                    'kg',
                                    'lbs',
                                  ].map<DropdownMenuItem<String>>((
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
                            return null;
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
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Thời lượng',
                          hintText: 'VD: 30',
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
                                  ].map<DropdownMenuItem<String>>((
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
                                  <String>[
                                    'km',
                                    'm',
                                  ].map<DropdownMenuItem<String>>((
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
                            return null;
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
                                  <String>[
                                    'kg',
                                    'lbs',
                                  ].map<DropdownMenuItem<String>>((
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
                            return null;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Hủy'),
                        ),
                        ElevatedButton(
                          onPressed: _submitForm,
                          child: const Text('Thêm'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
      },
    );
  }
}

class SelectedExercisesWidget extends StatelessWidget {
  final List<TrainingExercise> trainingExercises;
  final Function(TrainingExercise) onRemove;

  const SelectedExercisesWidget({
    super.key,
    required this.trainingExercises,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseBloc, ExerciseState>(
      builder: (context, state) {
        if (state is LoadedExercises && trainingExercises.isNotEmpty) {
          final exercises = state.exercises;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bài tập đã chọn',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...trainingExercises.asMap().entries.map((entry) {
                final trainingExercise = entry.value;
                final exercise = exercises.firstWhere(
                  (ex) => ex.id == trainingExercise.exerciseId,
                  orElse:
                      () => Exercise(
                        id: trainingExercise.exerciseId,
                        name: 'Không rõ bài tập',
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
                return ListTile(
                  title: Text(exercise.name),
                  subtitle: Text(
                    trainingExercise.sets > 0
                        ? 'Hiệp: ${trainingExercise.sets}, Lần: ${trainingExercise.reps}, Trọng lượng: ${trainingExercise.weight}'
                        : 'Thời lượng: ${trainingExercise.duration ~/ 60} phút, Khoảng cách: ${trainingExercise.distance} km',
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => onRemove(trainingExercise),
                  ),
                );
              }),
            ],
          );
        }
        return const Text('Chưa chọn bài tập nào');
      },
    );
  }
}
