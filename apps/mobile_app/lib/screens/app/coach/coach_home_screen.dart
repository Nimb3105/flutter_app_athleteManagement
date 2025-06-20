import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_list_screen.dart';
import 'package:mobile_app/screens/app/coach/food/food_list_screen.dart';

class CoachHomeScreen extends StatelessWidget {
  const CoachHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang Chủ Huấn Luyện Viên'),
        backgroundColor: Theme.of(context).primaryColor ,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExerciseScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Xem Bài Tập'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodListScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Xem Món Ăn'),
            ),
          ],
        ),
      ),
    );
  }
}