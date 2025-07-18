// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachHomeScreen extends StatelessWidget {
  final String sportId;
  final String coachId;
  const CoachHomeScreen({super.key, required this.sportId,required this.coachId});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            _buildHeader(context, 'Coach'),
            const SizedBox(height: 32),
            _buildSectionTitle('Bảng điều khiển'),
            const SizedBox(height: 16),
            _buildFeatureGrid(context),
            const SizedBox(height: 32),
            _buildSectionTitle('Hoạt động gần đây'),
            const SizedBox(height: 16),
            _buildRecentActivityCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String coachName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Xin chào,',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            Text(
              coachName,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const CircleAvatar(radius: 30),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildFeatureCard(
          context,
          icon: Icons.fitness_center,
          label: 'Bài Tập',
          color: Colors.orange,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExerciseListScreen(sportId: sportId,coachId: coachId,),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: color.withOpacity(0.1),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 12),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivityCard() {
    return Card(
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: const Icon(Icons.history, color: Colors.grey),
          title: Text('Chưa có hoạt động mới', style: GoogleFonts.poppins()),
          subtitle: Text(
            'Các cập nhật gần đây sẽ hiển thị ở đây.',
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
    );
  }
}
