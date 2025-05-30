
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_list_screen.dart';
// import 'package:mobile_app/screens/app/coach/exercises/exercise_screen.dart';
// import 'package:mobile_app/screens/app/coach/food/food_list_screen.dart';
// import 'package:mobile_app/screens/app/coach/sports/sport_screen.dart';
// import 'package:mobile_app/screens/app/coach/training/training_schedule_screen.dart';

// class NavigationMenu extends StatefulWidget {
//   const NavigationMenu({super.key});

//   @override
//   State<NavigationMenu> createState() => _NavigationMenuState();
// }

// class _NavigationMenuState extends State<NavigationMenu> {
//   int _selectedIndex = 0;

//   // Danh sách các màn hình tương ứng với từng tab
//   final List<Widget> _widgetOptions = [
//     const AthleteListView(athletes: [],), // Trang chủ: Danh sách vận động viên
//     const SportScreen(), // Môn thể thao
//     const TrainingScheduleScreen(), // Lịch tập
//     const ExerciseScreen(), // Bài tập
//     const FoodListScreen(), // Danh sách thực phẩm
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.sports),
//             label: 'Môn thể thao',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Lịch tập',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.fitness_center),
//             label: 'Bài tập',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.food_bank),
//             label: 'Món ăn',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed,
//       ),
//       floatingActionButton:
//           _selectedIndex == 0
//               ? SpeedDial(
//                 icon: Icons.add,
//                 activeIcon: Icons.close,
//                 backgroundColor: Theme.of(context).primaryColor,
//                 children: [
//                   SpeedDialChild(
//                     child: const Icon(Icons.sports),
//                     label: 'Xem danh sách môn thể thao',
//                     backgroundColor: Colors.blue,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const SportScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   SpeedDialChild(
//                     child: const Icon(Icons.calendar_today),
//                     label: 'Xem danh sách lịch tập',
//                     backgroundColor: Colors.blue,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const TrainingScheduleScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   SpeedDialChild(
//                     child: const Icon(Icons.fitness_center),
//                     label: 'Xem danh sách bài tập',
//                     backgroundColor: Colors.blue,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ExerciseScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               )
//               : null, // Chỉ hiển thị SpeedDial ở tab Trang chủ
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_list_screen.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/food/food_list_screen.dart';
import 'package:mobile_app/screens/app/coach/sports/sport_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  // Danh sách các màn hình tương ứng với từng tab
  final List<Widget> _widgetOptions = [
    const AthleteListView(), // Sử dụng AthleteListView với AthleteBloc
    const SportScreen(),
    const TrainingScheduleScreen(),
    const ExerciseScreen(),
    //const FoodListScreen(selectedFoodIds: [], onSelectionChanged: (List<String> ) {  },),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports),
            label: 'Môn thể thao',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Lịch tập',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Bài tập',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.food_bank),
          //   label: 'Món ăn',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: _selectedIndex == 0
          ? SpeedDial(
              icon: Icons.add,
              activeIcon: Icons.close,
              backgroundColor: Theme.of(context).primaryColor,
              children: [
                SpeedDialChild(
                  child: const Icon(Icons.sports),
                  label: 'Xem danh sách môn thể thao',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportScreen(),
                      ),
                    );
                  },
                ),
                SpeedDialChild(
                  child: const Icon(Icons.calendar_today),
                  label: 'Xem danh sách lịch tập',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrainingScheduleScreen(),
                      ),
                    );
                  },
                ),
                SpeedDialChild(
                  child: const Icon(Icons.fitness_center),
                  label: 'Xem danh sách bài tập',
                  backgroundColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExerciseScreen(),
                      ),
                    );
                  },
                ),
              ],
            )
          : null, // Chỉ hiển thị SpeedDial ở tab Trang chủ
    );
  }
}