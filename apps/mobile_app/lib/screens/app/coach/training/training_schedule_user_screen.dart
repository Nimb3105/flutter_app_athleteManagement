import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/training/training_exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_user_create.dart';

class TrainingScheduleUserScreen extends StatelessWidget {
  final Athlete athlete;

  const TrainingScheduleUserScreen({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingScheduleUserBloc(
        trainingScheduleUserRepository: TrainingScheduleUserRepository(
          baseUrl: ApiConstants.baseUrl, // Thay bằng baseUrl thực tế
        ),
        trainingScheduleRepository: TrainingScheduleRepository(
          baseUrl: ApiConstants.baseUrl, // Thay bằng baseUrl thực tế
        ),
      )..add(GetAllTrainingScheduleUserByUserId(athlete.userId)),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Training Schedules'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body:
              BlocBuilder<TrainingScheduleUserBloc, TrainingScheduleUserState>(
            builder: (context, state) {
              if (state is TrainingScheduleUser_Initial) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TrainingScheduleUser_Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedTrainingScheduleUser) {
                return const Center(
                  child: Text('Single schedule loaded (not expected here)'),
                );
              } else if (state is LoadedTrainingScheduleUsers) {
                return _buildScheduleList(
                  context,
                  state.scheduleAthletes,
                  state.trainingSchedules,
                );
              } else if (state is TrainingScheduleUser_Error) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Error: ${state.message}',
                        style: const TextStyle(color: Colors.red, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<TrainingScheduleUserBloc>().add(
                                GetAllTrainingScheduleUserByUserId(
                                    athlete.userId),
                              );
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              } else if (state is TrainingScheduleUser_Success) {
                return Center(
                  child: Text(
                    state.message,
                    style: const TextStyle(color: Colors.green, fontSize: 16),
                  ),
                );
              }
              return const Center(child: Text('Unknown state'));
            },
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (routeContext) => MultiBlocProvider(
                      providers: [
                        BlocProvider.value(
                          value: context.read<TrainingScheduleUserBloc>(),
                        ),
                        BlocProvider(
                          create: (context) => TrainingScheduleBloc(
                            trainingScheduleRepository:
                                TrainingScheduleRepository(
                              baseUrl: ApiConstants.baseUrl,
                            ),
                          )..add(const GetAllTrainingSchedules()),
                        ),
                      ],
                      child: TrainingScheduleUserCreateScreen(athlete: athlete),
                    ),
                  ),
                );
              },
              tooltip: 'Create New Schedule',
              child: const Icon(Icons.add),
            ),
          )),
    );
  }

  Widget _buildScheduleList(
    BuildContext context,
    List<TrainingScheduleUser> scheduleAthletes,
    Map<String, TrainingSchedule> trainingSchedules,
  ) {
    if (scheduleAthletes.isEmpty) {
      return const Center(
        child: Text(
          'No training schedules available',
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: scheduleAthletes.length,
      itemBuilder: (context, index) {
        final scheduleAthlete = scheduleAthletes[index];
        final schedule = trainingSchedules[scheduleAthlete.scheduleId];

        if (schedule == null) {
          return const ListTile(
            title: Text('Schedule not found'),
          );
        }

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          elevation: 2,
          child: ListTile(
            title: Text(
              schedule.type,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date: ${DateFormat('yyyy-MM-dd').format(schedule.date)}'),
                Text(
                  'Time: ${DateFormat('HH:mm').format(schedule.startTime)} - '
                  '${DateFormat('HH:mm').format(schedule.endTime)}',
                ),
                Text('Location: ${schedule.location}'),
                Text('Status: ${schedule.status}'),
                if (schedule.notes.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text('Notes: ${schedule.notes}'),
                ],
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TrainingExerciseScreen(trainingSchedule: schedule),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
