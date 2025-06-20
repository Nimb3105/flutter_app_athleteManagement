import 'package:admin_dashboard/athlete_management/athlete_list_screen.dart';
import 'package:admin_dashboard/coach_management/coach_list_screen.dart';
import 'package:admin_dashboard/exercise_management/exercise_list_screen.dart';
import 'package:admin_dashboard/food_management/food_list_screen.dart';
import 'package:admin_dashboard/notification_reminder_management/notification_reminder_list_screen.dart';
import 'package:admin_dashboard/nutrition_plan_management/nutrition_plan_list_screen.dart';
import 'package:admin_dashboard/sport_management/sport_list_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget _currentBody = const Center(
    child: Text(
      "Chào mừng đến với trang quản trị viên",
      style: TextStyle(fontSize: 24),
    ),
  );
  String _appBarTitle = "Trang chủ";

  void _updateBody(Widget newBody, String newTitle) {
    setState(() {
      _currentBody = newBody;
      _appBarTitle = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Danh mục", style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("trang chủ"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(
                  const Center(
                    child: Text(
                      "Chào mừng đến với trang quản trị viên",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  "Trang chủ",
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.supervisor_account),
              title: const Text("Quản lý vận động viên"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(const AthleteListScreen(), "Quản lý vận động viên");
              },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text("Quản lý huấn luyện viên"),
              onTap: () {
                // Navigator.pop(context); // Close the drawer
                // _updateBody(const CoachListScreen(), "Quản lý huấn luyện viên");
              },
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: Text("Quản lý món ăn"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(const FoodListScreen(), "Quản lý món ăn");
              },
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text("Quản lý kế hoach dinh dưỡng"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(
                  const NutritionPlanListScreen(),
                  "Quản lý kế hoạch dinh dưỡng",
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.sports),
              title: Text("Quản lý môn thể thao"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(const SportListScreen(), "Quản lý môn thể thao");
              },
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text("Quản lý bài tập"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(const ExerciseListScreen(), "Quản lý bài tập");
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Quản lý thông báo"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(
                  const NotificationReminderListScreen(),
                  "Quản lý thông báo",
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Cài đặt"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _updateBody(
                  const Center(
                    child: Text(
                      "Cài đặt sẽ được cập nhật sau",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  "Cài đặt",
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text(_appBarTitle)),
      body: _currentBody,
    );
  }
}
