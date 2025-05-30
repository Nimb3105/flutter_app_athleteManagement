import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (_) => UserRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<ExerciseRepository>(
          create: (_) => ExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<CoachAthleteRepository>(
          create: (_) => CoachAthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<NutritionPlanRepository>(
          create: (_) => NutritionPlanRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<PlanFoodRepository>(
          create: (_) => PlanFoodRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<FoodRepository>(
          create: (_) => FoodRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<SportRepository>(
          create: (_) => SportRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<SportUserRepository>(
          create: (_) => SportUserRepository(baseUrl: ApiConstants.baseUrl),
        ),

        // Thêm các repository khác nếu cần
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
