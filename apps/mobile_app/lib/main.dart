// main.dart

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/auth/login_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/screens/navigationbutton/navigation_menu.dart';

void main() async {
  // Đảm bảo Flutter bindings đã được khởi tạo.
  WidgetsFlutterBinding.ensureInitialized();
  // Khởi tạo định dạng ngày tháng cho Tiếng Việt.
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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
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
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ).apply(bodyColor: textColor, displayColor: textColor),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              foregroundColor: textColor,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
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
            cardTheme: CardThemeData(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 4.0,
              ),
              shadowColor: Colors.black.withOpacity(0.05),
              clipBehavior: Clip.antiAlias,
            ),
            scaffoldBackgroundColor: backgroundColor,
          ),
          // Thay thế 'home' bằng 'initialRoute' và 'routes'
          initialRoute: '/login', // 1. Route ban đầu của ứng dụng
          routes: {
            // 2. Định nghĩa route cho màn hình đăng nhập
            '/login': (context) => const LoginScreen(),
            // 3. Định nghĩa route cho màn hình chính sau khi đăng nhập
            '/home': (context) {
              // Lấy arguments được truyền từ màn hình Login
              final args =
                  ModalRoute.of(context)!.settings.arguments
                      as Map<String, String>;
              final coachId = args['coachId']!;
              final sportId = args['sportId']!;
              return NavigationMenu(coachId: coachId, sportId: sportId);
            },
          },
        ),
      ),
    );
  }
}
