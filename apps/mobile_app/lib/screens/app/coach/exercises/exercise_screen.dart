import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ExerciseBloc(
            exerciseRepository: context.read<ExerciseRepository>(),
          )..add(const GetAllExercises()),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.fitness_center),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Danh sách bài tập',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade100, Colors.white],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: ExerciseListView(),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder:
              (context) => FloatingActionButton.extended(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder:
                  //         (_) => RepositoryProvider.value(
                  //           value: context.read<ExerciseRepository>(),
                  //           child: BlocProvider.value(
                  //             value: context.read<ExerciseBloc>(),
                  //             child: const ExerciseCreateScreen(),
                  //           ),
                  //         ),
                  //   ),
                  // );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Thêm Exercise',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                backgroundColor: Colors.blue.shade700,
              ),
        ),
      ),
    );
  }
}

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        if (state is Exercise_Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        } else if (state is Exercise_Success) {
          // Hiển thị thông báo thành công và làm mới danh sách
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
          // Kích hoạt GetAllExercises để tải lại danh sách
          context.read<ExerciseBloc>().add(const GetAllExercises());
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context.read<ExerciseBloc>().add(const GetAllExercises());
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                if (state is Exercise_Initial || state is Exercise_Loading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  )
                else if (state is LoadedExercises)
                  state.exercises.isEmpty
                      ? const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'No exercises found',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      )
                      : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.exercises.length,
                        itemBuilder: (context, index) {
                          final exercise = state.exercises[index];
                          return ExerciseCard(exercise: exercise);
                        },
                      )
                else if (state is Exercise_Error)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Error: ${state.message}',
                        style: const TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                  )
                else
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Unexpected state',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          exercise.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('Type: ${exercise.bodyPart}'),
            Text('Intensity: ${exercise.equipment}'),
            Text('Muscle: ${exercise.target}'),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => RepositoryProvider.value(
                    value: context.read<ExerciseRepository>(),
                    child: BlocProvider.value(
                      value: context.read<ExerciseBloc>(),
                      child: ExerciseDetailScreen(exercise: exercise),
                    ),
                  ),
            ),
          );
        },
      ),
    );
  }
}
