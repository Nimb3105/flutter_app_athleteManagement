// import 'package:core/core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_detail.dart';
// import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_list_screen.dart';
// import 'package:mobile_app/screens/app/coach/exercises/exercise_screen.dart';
// import 'package:mobile_app/screens/app/coach/sports/sport_screen.dart';
// import 'package:mobile_app/screens/app/coach/training/training_schedule_screen.dart';

// class CoachHomeApp extends StatelessWidget {
//   const CoachHomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider(
//           create: (context) => AthleteRepository(baseUrl: ApiConstants.baseUrl),
//         ),
//         RepositoryProvider(
//           create: (context) => UserRepository(baseUrl: ApiConstants.baseUrl),
//         ),
//         RepositoryProvider(
//           create:
//               (context) => ExerciseRepository(baseUrl: ApiConstants.baseUrl),
//         ),
//       ],
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(
//             create:
//                 (context) => AthleteBloc(
//                   athleteRepository: context.read<AthleteRepository>(),
//                 )..add(const AthleteEvent.getAllAthletes()),
//           ),
//           BlocProvider(
//             create:
//                 (context) =>
//                     UserBloc(userRepository: context.read<UserRepository>()),
//           ),
//         ],
//         child: MaterialApp(
//           title: 'Coach Home',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primaryColor: const Color(0xFF1E88E5),
//             colorScheme: ColorScheme.fromSeed(
//               seedColor: const Color(0xFF1E88E5),
//               primary: const Color(0xFF1E88E5),
//               secondary: const Color(0xFF26C6DA),
//               // ignore: deprecated_member_use
//               background: Colors.grey[50]!,
//             ),
//             appBarTheme: const AppBarTheme(
//               backgroundColor: Color(0xFF1E88E5),
//               foregroundColor: Colors.white,
//               elevation: 0,
//             ),
//             cardTheme: CardTheme(
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               color: Colors.white,
//             ),
//             fontFamily: 'Roboto',
//             elevatedButtonTheme: ElevatedButtonThemeData(
//               style: ElevatedButton.styleFrom(
//                 elevation: 2,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             floatingActionButtonTheme: const FloatingActionButtonThemeData(
//               backgroundColor: Color(0xFF26C6DA),
//               foregroundColor: Colors.white,
//             ),
//             scaffoldBackgroundColor: Colors.grey[50],
//           ),
//           home: const CoachHomePage(),
//         ),
//       ),
//     );
//   }
// }

// class CoachHomePage extends StatelessWidget {
//   const CoachHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Row(
//           children: [
//             Icon(Icons.sports_kabaddi, size: 28),
//             SizedBox(width: 12),
//             Expanded(
//               child: Text(
//                 'Home',
//                 style: TextStyle(fontWeight: FontWeight.w600),
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//           ],
//         ),
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: () {
//               context.read<AthleteBloc>().add(
//                 const AthleteEvent.getAllAthletes(),
//               );
//             },
//             tooltip: 'Làm mới danh sách',
//           ),
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Tính năng tìm kiếm đang phát triển'),
//                 ),
//               );
//             },
//             tooltip: 'Tìm kiếm',
//           ),
//           const SizedBox(width: 8),
//         ],
//       ),
//       body: Container(
//         padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//         color: Theme.of(context).colorScheme.surface,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildHeader(context),
//             const SizedBox(height: 16),
//             Expanded(
//               child: BlocBuilder<AthleteBloc, AthleteState>(
//                 builder: (context, athleteState) {
//                   if (athleteState is Athlete_Loading) {
//                     return _buildLoadingState();
//                   } else if (athleteState is LoadedAthletes) {
//                     return AthleteListView(athletes: athleteState.athletes);
//                   } else if (athleteState is Athlete_Error) {
//                     return _buildErrorState(athleteState.message);
//                   }
//                   return _buildLoadingState();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: SpeedDial(
//         icon: Icons.add,
//         activeIcon: Icons.close,
//         backgroundColor: Theme.of(context).primaryColor,
//         children: [
//           SpeedDialChild(
//             child: const Icon(Icons.sports),
//             label: 'Xem danh sách môn thể thao',
//             backgroundColor: Colors.blue,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SportScreen()),
//               );
//             },
//           ),
//           SpeedDialChild(
//             child: const Icon(Icons.calendar_today),
//             label: 'Xem danh sách lịch tập',
//             backgroundColor: Colors.blue,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const TrainingScheduleScreen(),
//                 ),
//               );
//             },
//           ),
//           SpeedDialChild(
//             child: const Icon(Icons.fitness_center),
//             label: 'Xem danh sách bài tập',
//             backgroundColor: Colors.blue,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ExerciseScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Danh sách vận động viên',
//             style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//               fontWeight: FontWeight.bold,
//               color: const Color(0xFF1E3A8A),
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             'Theo dõi và quản lý thông tin chi tiết của vận động viên',
//             style: Theme.of(
//               context,
//             ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLoadingState() {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const CircularProgressIndicator(),
//           const SizedBox(height: 16),
//           Text(
//             'Đang tải danh sách vận động viên...',
//             style: TextStyle(color: Colors.grey[700]),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildErrorState(String message) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Icon(Icons.error_outline, color: Colors.redAccent, size: 48),
//           const SizedBox(height: 16),
//           Text(
//             'Đã xảy ra lỗi',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.grey[800],
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             message,
//             style: TextStyle(color: Colors.grey[700]),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 24),
//           ElevatedButton.icon(
//             onPressed: () {
//               // Retry loading
//             },
//             icon: const Icon(Icons.refresh),
//             label: const Text('Thử lại'),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/navigationbutton/navigation_menu.dart';

class CoachHomeApp extends StatelessWidget {
  const CoachHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AthleteRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(baseUrl: ApiConstants.baseUrl),
        ),
        RepositoryProvider(
          create: (context) => ExerciseRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AthleteBloc(
              athleteRepository: context.read<AthleteRepository>(),
            )..add(const AthleteEvent.getAllAthletes()),
          ),
          BlocProvider(
            create: (context) => UserBloc(userRepository: context.read<UserRepository>()),
          ),
        ],
        child: const NavigationMenu(),
      ),
    );
  }
}