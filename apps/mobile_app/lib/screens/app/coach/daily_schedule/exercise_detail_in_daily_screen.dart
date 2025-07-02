import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseDetailInDailyScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailInDailyScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          exercise.name,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          // --- Hiển thị ảnh/GIF ---
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              height: 250,
              color: Colors.grey[200],
              child: Image.network(
                exercise.gifUrl, // Giả sử đây là URL trực tiếp
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.error, color: Colors.red, size: 50),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 32),

          // --- Các thông tin cơ bản ---
          _buildInfoCard(
            context,
            title: 'Thông tin cơ bản',
            icon: Icons.info_outline_rounded,
            children: [
              _buildInfoRow('Nhóm cơ', exercise.bodyPart),
              _buildInfoRow('Dụng cụ', exercise.equipment),
              _buildInfoRow('Đơn vị tính', exercise.unitType, isLast: true),
            ],
          ),
          const SizedBox(height: 24),

          // --- Cơ bắp tác động ---
          _buildInfoCard(
            context,
            title: 'Cơ bắp tác động',
            icon: Icons.accessibility_new_rounded,
            children: [
              _buildInfoRow('Cơ chính', exercise.target),
              if (exercise.secondaryMuscles.isNotEmpty)
                _buildInfoRow(
                  'Cơ phụ',
                  exercise.secondaryMuscles.join(', '),
                  isLast: true,
                ),
            ],
          ),
          const SizedBox(height: 24),

          // --- Hướng dẫn thực hiện ---
          _buildInfoCard(
            context,
            title: 'Hướng dẫn thực hiện',
            icon: Icons.integration_instructions_outlined,
            children: [
              for (int i = 0; i < exercise.instructions.length; i++)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(radius: 15, child: Text('${i + 1}')),
                  title: Text(
                    exercise.instructions[i],
                    style: GoogleFonts.poppins(),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget helper để tạo tiêu đề cho mỗi phần
  Widget _buildSectionTitle(BuildContext context, String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 12),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  // Widget helper để tạo Card cho các nhóm thông tin
  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, title, icon),
        const SizedBox(height: 16),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  // Widget helper để hiển thị từng dòng thông tin
  Widget _buildInfoRow(String label, String value, {bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border:
            isLast
                ? null
                : Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
