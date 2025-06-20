import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/training/exercise_in_training_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_exercise_create.dart';

class TrainingExerciseScreen extends StatelessWidget {
  final TrainingSchedule trainingSchedule;

  const TrainingExerciseScreen({super.key, required this.trainingSchedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài tập liên quan'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is TrainingSchedule_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pop(context); // Quay lại màn hình danh sách lịch tập
          } else if (state is TrainingSchedule_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Lỗi: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
          builder: (context, scheduleState) {
            final currentSchedule = scheduleState is LoadedTrainingSchedule
                ? scheduleState.schedule
                : trainingSchedule;

            return Column(
              children: [
                Expanded(
                  child: BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
                    listener: (context, state) {
                      if (state is TrainingExercise_Success) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                            backgroundColor: Colors.green,
                          ),
                        );
                        context.read<TrainingExerciseBloc>().add(
                              GetAllTrainingExercisesByScheduleId(
                                trainingSchedule.id!,
                              ),
                            );
                      } else if (state is TrainingExercise_Error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Lỗi: ${state.message}')),
                        );
                      }
                    },
                    child: BlocBuilder<TrainingExerciseBloc, TrainingExerciseState>(
                      builder: (context, state) {
                        if (state is TrainingExercise_Initial ||
                            state is TrainingExercise_Loading) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (state is LoadedTrainingExercise) {
                          return const Center(
                            child: Text('Đã tải một bài tập (không mong đợi ở đây)'),
                          );
                        } else if (state is LoadedTrainingExercisesWithExercises) {
                          return _buildExerciseList(
                            context,
                            state.trainingExercises,
                            state.exercises!,
                            currentSchedule,
                          );
                        } else if (state is TrainingExercise_Error) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Lỗi: ${state.message}',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    context.read<TrainingExerciseBloc>().add(
                                          GetAllTrainingExercisesByScheduleId(
                                            trainingSchedule.id!,
                                          ),
                                        );
                                  },
                                  child: const Text('Thử lại'),
                                ),
                              ],
                            ),
                          );
                        } else if (state is TrainingExercise_Success) {
                          return Center(
                            child: Text(
                              state.message,
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          );
                        }
                        return const Center(child: Text('Vui lòng chờ...'));
                      },
                    ),
                  ),
                ),
                if (currentSchedule.status != 'hoàn thành')
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.check_circle),
                      label: const Text('Hoàn thành lịch tập'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 48),
                      ),
                      onPressed: () {
                        // Tính progress trung bình từ danh sách TrainingExercise
                        double averageProgress = 0.0;
                        if (context.read<TrainingExerciseBloc>().state
                            is LoadedTrainingExercisesWithExercises) {
                          final exercises = (context.read<TrainingExerciseBloc>().state
                                  as LoadedTrainingExercisesWithExercises)
                              .trainingExercises;
                          if (exercises.isNotEmpty) {
                            averageProgress = exercises
                                    .map((e) => _calculateProgress(e))
                                    .reduce((a, b) => a + b) /
                                exercises.length;
                          }
                        }

                        final updatedSchedule = currentSchedule.copyWith(
                          status: 'hoàn thành',
                          progress: averageProgress,
                          updatedAt: DateTime.now().toUtc(),
                        );
                        context.read<TrainingScheduleBloc>().add(
                              UpdateTrainingSchedule(updatedSchedule),
                            );
                      },
                    ),
                  ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            context.read<ExerciseBloc>().add(const GetAllExercises());
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (routeContext) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: context.read<TrainingExerciseBloc>(),
                    ),
                    BlocProvider.value(
                      value: context.read<ExerciseBloc>(),
                    ),
                  ],
                  child: TrainingExerciseCreateScreen(
                    trainingSchedule: trainingSchedule,
                  ),
                ),
              ),
            );
          },
          tooltip: 'Thêm bài tập',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildExerciseList(
    BuildContext context,
    List<TrainingExercise> trainingExercises,
    Map<String, Exercise> exercises,
    TrainingSchedule currentSchedule,
  ) {
    if (trainingExercises.isEmpty) {
      return const Center(
        child: Text(
          'Không tìm thấy bài tập nào cho lịch này',
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: trainingExercises.length,
      itemBuilder: (context, index) {
        final trainingExercise = trainingExercises[index];
        final exercise = exercises[trainingExercise.exerciseId];

        double progress = _calculateProgress(trainingExercise);
        String progressText = _getProgressText(trainingExercise);

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          elevation: 2,
          child: ListTile(
            title: Text(
              exercise?.name ?? 'Bài tập không xác định',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Thứ tự: ${trainingExercise.order}'),
                Text(progressText),
                const SizedBox(height: 4),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      minHeight: 20,
                    ),
                    Text(
                      '${(progress * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Thêm vào: ${_formatDate(trainingExercise.createdAt!)}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.check_circle_outline),
              tooltip: 'Hoàn thành bài tập',
              onPressed: () {
                if (exercise != null) {
                  _showCompleteExerciseDialog(context, trainingExercise);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Không tìm thấy thông tin bài tập'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
            ),
            onTap: () {
              if (exercise != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ExerciseInTrainingScreen(exercise: exercise),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Không tìm thấy thông tin bài tập'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }

  void _showCompleteExerciseDialog(
      BuildContext context, TrainingExercise trainingExercise) {
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<TrainingExerciseBloc>(),
        child: _CompleteExerciseDialog(trainingExercise: trainingExercise),
      ),
    );
  }

  double _calculateProgress(TrainingExercise trainingExercise) {
    if (trainingExercise.sets > 0) {
      return trainingExercise.actualSets / trainingExercise.sets;
    } else if (trainingExercise.duration > 0) {
      return trainingExercise.actualDuration / trainingExercise.duration;
    } else if (trainingExercise.distance > 0) {
      return trainingExercise.actualDistance / trainingExercise.distance;
    }
    return 0.0;
  }

  String _getProgressText(TrainingExercise trainingExercise) {
    if (trainingExercise.sets > 0) {
      return 'Hiệp: ${trainingExercise.actualSets}/${trainingExercise.sets}, '
          'Lần: ${trainingExercise.actualReps}/${trainingExercise.reps}, '
          'Trọng lượng: ${trainingExercise.actualWeight}/${trainingExercise.weight} kg';
    } else if (trainingExercise.duration > 0) {
      return 'Thời lượng: ${trainingExercise.actualDuration ~/ 60}/${trainingExercise.duration ~/ 60} phút, '
          'Khoảng cách: ${trainingExercise.actualDistance}/${trainingExercise.distance} km';
    }
    return 'Chưa có dữ liệu tiến độ';
  }

  String _formatDate(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
}

class _CompleteExerciseDialog extends StatefulWidget {
  final TrainingExercise trainingExercise;

  const _CompleteExerciseDialog({required this.trainingExercise});

  @override
  State<_CompleteExerciseDialog> createState() => _CompleteExerciseDialogState();
}

class _CompleteExerciseDialogState extends State<_CompleteExerciseDialog> {
  final _formKey = GlobalKey<FormState>();
  int? _actualReps;
  int? _actualSets;
  double? _actualWeight;
  int? _actualDuration;
  double? _actualDistance;

  String _weightUnit = 'kg';
  String _durationUnit = 'phút';
  String _distanceUnit = 'km';

  @override
  void initState() {
    super.initState();
    _actualReps = widget.trainingExercise.actualReps;
    _actualSets = widget.trainingExercise.actualSets;
    _actualWeight = widget.trainingExercise.actualWeight;
    _actualDuration = widget.trainingExercise.actualDuration;
    _actualDistance = widget.trainingExercise.actualDistance;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      int finalDurationInSeconds = 0;
      if (_actualDuration != null) {
        if (_durationUnit == 'phút') {
          finalDurationInSeconds = _actualDuration! * 60;
        } else if (_durationUnit == 'giây') {
          finalDurationInSeconds = _actualDuration!;
        }
      }

      double finalDistanceInKm = 0.0;
      if (_actualDistance != null) {
        if (_distanceUnit == 'km') {
          finalDistanceInKm = _actualDistance!;
        } else if (_distanceUnit == 'm') {
          finalDistanceInKm = _actualDistance! / 1000.0;
        }
      }

      final updatedTrainingExercise = widget.trainingExercise.copyWith(
        actualReps: _actualReps ?? 0,
        actualSets: _actualSets ?? 0,
        actualWeight: _actualWeight ?? 0.0,
        actualDuration: finalDurationInSeconds,
        actualDistance: finalDistanceInKm,
        updatedAt: DateTime.now().toUtc(),
      );

      context.read<TrainingExerciseBloc>().add(
            UpdateTrainingExercise(updatedTrainingExercise),
          );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSetBased = widget.trainingExercise.sets > 0;

    return Dialog(
      child: Container(
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
                  'Cập nhật tiến độ bài tập',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                if (isSetBased) ...[
                  TextFormField(
                    initialValue: _actualSets?.toString(),
                    decoration: const InputDecoration(
                      labelText: 'Số hiệp thực tế (Sets)',
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
                      _actualSets = int.parse(value!);
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    initialValue: _actualReps?.toString(),
                    decoration: const InputDecoration(
                      labelText: 'Số lần lặp thực tế (Reps)',
                      hintText: 'VD: 10',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập số lần lặp';
                      }
                      if (int.tryParse(value) == null) {
                        return 'Vui lòng nhập số hợp lệ';
                      }
                      if (int.parse(value) < 0) {
                        return 'Số lần lặp không thể âm';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _actualReps = int.parse(value!);
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    initialValue: _actualWeight?.toString(),
                    decoration: InputDecoration(
                      labelText: 'Trọng lượng thực tế',
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
                          items: <String>['kg', 'lbs'].map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
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
                      _actualWeight = double.tryParse(value!);
                    },
                  ),
                ] else ...[
                  TextFormField(
                    initialValue: (_actualDuration != null
                            ? _durationUnit == 'phút'
                                ? (_actualDuration! ~/ 60).toString()
                                : _actualDuration!.toString()
                            : ''),
                    decoration: InputDecoration(
                      labelText: 'Thời lượng thực tế',
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
                          items: <String>['phút', 'giây'].map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
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
                      _actualDuration = int.parse(value!);
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    initialValue: _actualDistance?.toString(),
                    decoration: InputDecoration(
                      labelText: 'Khoảng cách thực tế',
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
                          items: <String>['km', 'm'].map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
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
                      _actualDistance = double.parse(value!);
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    initialValue: _actualWeight?.toString(),
                    decoration: InputDecoration(
                      labelText: 'Trọng lượng thực tế (tùy chọn)',
                      hintText: 'VD: 10',
                      border: const OutlineInputBorder(),
                      suffixIcon: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _weightUnit,
                          onChanged: (String? newValue) {
                            setState(() {
                              _weightUnit = newValue!;
                            });
                          },
                          items: <String>['kg', 'lbs'].map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
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
                      _actualWeight = double.tryParse(value!);
                    },
                  ),
                ],
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Hủy'),
                    ),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Cập nhật'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}