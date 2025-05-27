import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/training/exercise_in_training_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_exercise_create.dart';

class TrainingExerciseScreen extends StatelessWidget {
  final TrainingSchedule trainingSchedule;

  const TrainingExerciseScreen({super.key, required this.trainingSchedule});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => TrainingExerciseBloc(
                trainingExerciseRepository: TrainingExerciseRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
                exerciseRepository: ExerciseRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
              )..add(GetAllTrainingExercisesByScheduleId(trainingSchedule.id!)),
        ),
        BlocProvider(
          create:
              (context) => ExerciseBloc(
                exerciseRepository: ExerciseRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
              ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bài tập liên quan'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
          listener: (context, state) {
            if (state is TrainingExercise_Error) {
              debugPrint('TrainingExerciseBloc Error: ${state.message}');
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          child: BlocBuilder<TrainingExerciseBloc, TrainingExerciseState>(
            builder: (context, state) {
              if (state is TrainingExercise_Initial) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TrainingExercise_Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedTrainingExercise) {
                return const Center(
                  child: Text('Đã tải một bài tập (không mong đợi ở đây)'),
                );
              } else if (state is LoadedTrainingExercisesWithExercises) {
                return _buildExerciseList(
                  context,
                  state.trainingExercises,
                  state.exercises,
                );
              } else if (state is TrainingExercise_Error) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lỗi: ${state.message}',
                        style: const TextStyle(color: Colors.red, fontSize: 16),
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
                    style: const TextStyle(color: Colors.green, fontSize: 16),
                  ),
                );
              }
              return const Center(child: Text('Vui lòng chờ...'));
            },
          ),
        ),
        floatingActionButton: Builder(
          builder:
              (context) => FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (routeContext) => MultiBlocProvider(
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
      ),
    );
  }

  Widget _buildExerciseList(
    BuildContext context,
    List<TrainingExercise> trainingExercises,
    Map<String, Exercise> exercises,
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
                Text(
                  'Thêm vào: ${_formatDate(trainingExercise.createdAt!)}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            onTap: () {
              if (exercise != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) => ExerciseInTrainingScreen(exercise: exercise),
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

  String _formatDate(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
}
