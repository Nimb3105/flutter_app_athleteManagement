// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/auth/login_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('vi_VN', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // -- Bảng màu hiện đại và chuyên nghiệp --
    const Color primaryColor = Color(0xFF4A90E2); // Xanh dương hiện đại
    const Color secondaryColor = Color(0xFF50E3C2); // Xanh ngọc
    const Color backgroundColor = Color(0xFFF7F9FC); // Nền xám rất nhạt
    const Color cardColor = Colors.white;
    const Color errorColor = Color(0xFFD0021B); // Đỏ
    const Color textColor = Color(0xFF2D3748); // Màu chữ chính (xám đậm)
    const Color subTextColor = Color(0xFF718096); // Màu chữ phụ

    return MultiRepositoryProvider(
      providers: [
        // Giữ nguyên các RepositoryProvider của bạn
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
        RepositoryProvider<AthleteRepository>(
          create: (_) => AthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<TrainingScheduleRepository>(
          create:
              (_) => TrainingScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<DailyScheduleRepository>(
          create: (_) => DailyScheduleRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider<TrainingExerciseRepository>(
          create:
              (_) => TrainingExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          // -- Định nghĩa bảng màu --
          colorScheme: ColorScheme.fromSeed(
            seedColor: primaryColor,
            primary: primaryColor,
            secondary: secondaryColor,
            background: backgroundColor,
            surface: cardColor,
            error: errorColor,
            onPrimary: Colors.white,
            onSecondary: Colors.black,
            onBackground: textColor,
            onSurface: textColor,
            onError: Colors.white,
          ),

          // -- Sử dụng Google Fonts cho toàn bộ ứng dụng --
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).apply(bodyColor: textColor, displayColor: textColor),

          // -- Kiểu dáng cho AppBar --
          appBarTheme: AppBarTheme(
            backgroundColor:
                Colors.transparent, // Nền trong suốt để hòa hợp với nền chung
            foregroundColor: textColor,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),

          // -- Kiểu dáng cho trường nhập liệu --
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(color: subTextColor.withOpacity(0.7)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 18.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: primaryColor, width: 2.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: errorColor, width: 1.5),
            ),
          ),

          // -- Kiểu dáng cho nút bấm --
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 5,
              shadowColor: primaryColor.withOpacity(0.4),
              textStyle: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // -- Kiểu dáng cho Card --
          cardTheme: CardThemeData(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            shadowColor: Colors.black.withOpacity(0.05),
            clipBehavior: Clip.antiAlias,
          ),

          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
