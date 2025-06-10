import 'package:admin_dashboard/home/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => UserRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => AthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => CoachRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => SportRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => SportUserRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(create: (_) => ImageRepository()),
        RepositoryProvider(
          create:
              (_) =>
                  CustomNotificationRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => ReminderRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => ExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (_) => TrainingExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (_) => TrainingScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create:
              (_) =>
                  TrainingScheduleUserRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create: (_) => FoodRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create: (_) => NutritionPlanRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create: (_) => PlanFoodRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create:
              (_) =>
                  CustomNotificationRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create: (_) => AchievementRepository(baseUrl: ApiConstants.baseUrl),
        ),

        RepositoryProvider(
          create: (_) => InjuryRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => HealthRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => ProgressRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => UserMatchRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => TeamMemberRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => PerformanceRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => CoachAthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => MatchScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => TournamentRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => TeamRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => GroupRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (_) => GroupMemberRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MaterialApp(
        title: 'Trang quản trị viên',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blueGrey,
        ),
        debugShowCheckedModeBanner: false,
        home: const DashboardScreen(),
      ),
    );
  }
}
