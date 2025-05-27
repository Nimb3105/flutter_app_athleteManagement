import 'package:admin_dashboard/dashboard_screen.dart';
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
          create: (_) => NotificationRepository(baseUrl: ApiConstants.baseUrl),
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
