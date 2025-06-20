import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/training/training_exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_create.dart';

class TrainingScheduleUserScreen extends StatelessWidget {
  final Athlete athlete;
  final String createBy;

  const TrainingScheduleUserScreen({
    super.key,
    required this.athlete,
    required this.createBy,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => TrainingScheduleUserBloc(
                trainingScheduleUserRepository: TrainingScheduleUserRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
                trainingScheduleRepository: TrainingScheduleRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
              )..add(GetAllTrainingScheduleUserByUserId(athlete.userId)),
        ),
        BlocProvider(
          create:
              (context) => TrainingScheduleBloc(
                trainingScheduleRepository: TrainingScheduleRepository(
                  baseUrl: ApiConstants.baseUrl,
                ),
              ),
        ),
      ],
      child: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is LoadedTrainingSchedule ||
              state is TrainingSchedule_Success) {
            context.read<TrainingScheduleUserBloc>().add(
              GetAllTrainingScheduleUserByUserId(athlete.userId),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lịch tập luyện'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: BlocBuilder<
            TrainingScheduleUserBloc,
            TrainingScheduleUserState
          >(
            builder: (context, state) {
              if (state is TrainingScheduleUser_Initial) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TrainingScheduleUser_Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedTrainingScheduleUser) {
                return const Center(
                  child: Text('Đã tải một lịch (không mong muốn ở đây)'),
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
                        'Lỗi: ${state.message}',
                        style: const TextStyle(color: Colors.red, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<TrainingScheduleUserBloc>().add(
                            GetAllTrainingScheduleUserByUserId(athlete.userId),
                          );
                        },
                        child: const Text('Thử lại'),
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
              return const Center(child: Text('Trạng thái không xác định'));
            },
          ),
          floatingActionButton: Builder(
            builder:
                (context) => FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (routeContext) => BlocProvider.value(
                              value: context.read<TrainingScheduleBloc>(),
                              child: TrainingScheduleCreate(
                                athleteId: athlete.userId,
                                createBy: createBy,
                              ),
                            ),
                      ),
                    );
                  },
                  tooltip: 'Tạo lịch mới',
                  child: const Icon(Icons.add),
                ),
          ),
        ),
      ),
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
          'Không có lịch tập nào được tạo cho vận động viên này.',
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
          return const ListTile(title: Text('Schedule not found'));
        }

        Color cardColor;
        switch (schedule.status.toLowerCase()) {
          case 'chưa hoàn thành':
            // ignore: deprecated_member_use
            cardColor = Colors.black.withOpacity(0.1);
            break;
          case 'hoàn thành':
            cardColor = Colors.green[100]!;
            break;
          case 'đã lên lịch':
            cardColor = Colors.yellow[100]!;
            break;
          default:
            cardColor = Colors.white;
        }

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          elevation: 2,
          color: cardColor,
          child: ListTile(
            title: Text(
              schedule.type,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ngày tập: ${DateFormat('yyyy-MM-dd').format(schedule.date)}',
                ),
                Text(
                  'Thời gian tập: ${DateFormat('HH:mm').format(schedule.startTime)} - '
                  '${DateFormat('HH:mm').format(schedule.endTime)}',
                ),
                Text('Vị trí: ${schedule.location}'),
                Text('Trạng thái: ${schedule.status}'),
                if (schedule.notes.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text('Ghi chú: ${schedule.notes}'),
                ],
                const SizedBox(height: 4),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    LinearProgressIndicator(
                      value: schedule.progress ?? 0.0,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      minHeight: 20,
                    ),
                    Text(
                      '${((schedule.progress ?? 0.0) * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              if (schedule.id == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Lịch không có ID hợp lệ'),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (routeContext) => MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create:
                                (context) => TrainingExerciseBloc(
                                  trainingExerciseRepository:
                                      TrainingExerciseRepository(
                                        baseUrl: ApiConstants.baseUrl,
                                      ),
                                  exerciseRepository: ExerciseRepository(
                                    baseUrl: ApiConstants.baseUrl,
                                  ),
                                  trainingScheduleRepository:
                                      TrainingScheduleRepository(
                                        baseUrl: ApiConstants.baseUrl,
                                      ),
                                )..add(
                                  GetAllTrainingExercisesByScheduleId(
                                    schedule.id!,
                                  ),
                                ),
                          ),
                          BlocProvider(
                            create:
                                (context) => ExerciseBloc(
                                  exerciseRepository: ExerciseRepository(
                                    baseUrl: ApiConstants.baseUrl,
                                  ),
                                ),
                          ),
                          BlocProvider(
                            create:
                                (context) => TrainingScheduleBloc(
                                  trainingScheduleRepository:
                                      TrainingScheduleRepository(
                                        baseUrl: ApiConstants.baseUrl,
                                      ),
                                ),
                          ),
                          BlocProvider.value(
                            value: context.read<TrainingScheduleBloc>(),
                          ),
                        ],
                        child: TrainingExerciseScreen(
                          trainingSchedule: schedule,
                        ),
                      ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
