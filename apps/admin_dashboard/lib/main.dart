import 'package:admin_dashboard/login.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/date_symbol_data_local.dart'; // Thêm import này

void main() async {
  // Đảm bảo các thành phần Flutter đã sẵn sàng
  WidgetsFlutterBinding.ensureInitialized();

  // Thêm dòng này để khởi tạo dữ liệu định dạng ngày tháng cho Tiếng Việt
  await initializeDateFormatting('vi_VN', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create:
              (context) => AchievementRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => AthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  CoachAthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  CoachCertificationRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => CoachRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  CustomNotificationRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  DailyScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => ExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => FeedbackRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => FoodRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => GroupMemberRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => GroupRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => HealthRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(create: (context) => ImageRepository()),
        RepositoryProvider(
          create: (context) => InjuryRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  MatchScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  MedicalHistoryRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => MessageRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  NutritionPlanRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => PlanFoodRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => ReminderRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => SportRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => TeamMemberRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => TeamRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => TournamentRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  TrainingExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  TrainingScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (context) => UserMatchRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create:
                (context) => AchievementBloc(
                  achievementRepository: context.read<AchievementRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => AthleteBloc(
                  athleteRepository: context.read<AthleteRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => CoachAthleteBloc(
                  coachAthleteRepository:
                      context.read<CoachAthleteRepository>(),
                  athleteRepository: context.read<AthleteRepository>(),
                  userRepository: context.read<UserRepository>(),
                  sportRepository: context.read<SportRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => CoachCertificationBloc(
                  coachCertificationRepository:
                      context.read<CoachCertificationRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    CoachBloc(coachRepository: context.read<CoachRepository>()),
          ),
          BlocProvider(
            create:
                (context) => CustomNotificationBloc(
                  notificationRepository:
                      context.read<CustomNotificationRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => DailyScheduleBloc(
                  dailyScheduleRepository:
                      context.read<DailyScheduleRepository>(),
                  userRepository: context.read<UserRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => ExerciseBloc(
                  exerciseRepository: context.read<ExerciseRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => FeedbackBloc(
                  feedbackRepository: context.read<FeedbackRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    FoodBloc(foodRepository: context.read<FoodRepository>()),
          ),
          BlocProvider(
            create:
                (context) => GroupMemberBloc(
                  groupMemberRepository: context.read<GroupMemberRepository>(),
                  groupRepository: context.read<GroupRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    GroupBloc(groupRepository: context.read<GroupRepository>()),
          ),
          BlocProvider(
            create:
                (context) => HealthBloc(
                  healthRepository: context.read<HealthRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    ImageBloc(imageRepository: context.read<ImageRepository>()),
          ),
          BlocProvider(
            create:
                (context) => InjuryBloc(
                  injuryRepository: context.read<InjuryRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => MatchScheduleBloc(
                  matchScheduleRepository:
                      context.read<MatchScheduleRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => MedicalHistoryBloc(
                  medicalHistoryRepository:
                      context.read<MedicalHistoryRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => MessageBloc(
                  messageRepository: context.read<MessageRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => NutritionPlanBloc(
                  nutritionPlanRepository:
                      context.read<NutritionPlanRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => PlanFoodBloc(
                  planFoodRepository: context.read<PlanFoodRepository>(),
                  foodRepository: context.read<FoodRepository>(),
                  nutritionPlanRepository:
                      context.read<NutritionPlanRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => ReminderBloc(
                  reminderRepository: context.read<ReminderRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    SportBloc(sportRepository: context.read<SportRepository>()),
          ),
          BlocProvider(
            create:
                (context) => TeamMemberBloc(
                  teamMemberRepository: context.read<TeamMemberRepository>(),
                  teamRepository: context.read<TeamRepository>(),
                  sportRepository: context.read<SportRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    TeamBloc(teamRepository: context.read<TeamRepository>()),
          ),
          BlocProvider(
            create:
                (context) => TournamentBloc(
                  tournamentRepository: context.read<TournamentRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => TrainingExerciseBloc(
                  trainingExerciseRepository:
                      context.read<TrainingExerciseRepository>(),
                  exerciseRepository: context.read<ExerciseRepository>(),
                  trainingScheduleRepository:
                      context.read<TrainingScheduleRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => TrainingScheduleBloc(
                  trainingScheduleRepository:
                      context.read<TrainingScheduleRepository>(),
                  trainingExerciseRepository:
                      context.read<TrainingExerciseRepository>(),
                  exerciseRepository: context.read<ExerciseRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) => UserMatchBloc(
                  userMatchRepository: context.read<UserMatchRepository>(),
                  matchScheduleRepository:
                      context.read<MatchScheduleRepository>(),
                  tournamentRepository: context.read<TournamentRepository>(),
                ),
          ),
          BlocProvider(
            create:
                (context) =>
                    UserBloc(userRepository: context.read<UserRepository>()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const LoginPage(),
        ),
      ),
    );
  }
}
