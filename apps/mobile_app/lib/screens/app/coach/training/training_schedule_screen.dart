import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/training/training_exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_create.dart';

class TrainingScheduleScreen extends StatelessWidget {
  const TrainingScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingScheduleBloc(
        trainingScheduleRepository: TrainingScheduleRepository(
          baseUrl: ApiConstants.baseUrl,
        ),
      )..add(const GetAllTrainingSchedules()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Danh sách lịch tập'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
          listener: (context, state) {
            if (state is TrainingSchedule_Success) {
              context
                  .read<TrainingScheduleBloc>()
                  .add(const GetAllTrainingSchedules());
            }
          },
          child: BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
            builder: (context, state) {
              if (state is TrainingSchedule_Initial) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TrainingSchedule_Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedTrainingSchedules) {
                return _buildScheduleList(context, state.schedules);
              } else if (state is TrainingSchedule_Error) {
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
                          context
                              .read<TrainingScheduleBloc>()
                              .add(const GetAllTrainingSchedules());
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              }
              return const Center(child: Text('Unknown state'));
            },
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (routeContext) => BlocProvider.value(
                    value: context.read<TrainingScheduleBloc>(),
                    child: const TrainingScheduleCreate(),
                  ),
                ),
              );
            },
            tooltip: 'Create New Schedule',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleList(
    BuildContext context,
    List<TrainingSchedule> schedules,
  ) {
    if (schedules.isEmpty) {
      return const Center(
        child: Text(
          'No training schedules available',
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        final schedule = schedules[index];

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
