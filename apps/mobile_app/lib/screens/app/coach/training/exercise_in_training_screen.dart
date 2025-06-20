import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ExerciseInTrainingScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseInTrainingScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          exercise.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Media Section
                  if (exercise.gifUrl.isNotEmpty)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        ApiConstants.baseUrl + exercise.gifUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            height: 200,
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 200,
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  else
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Center(
                        child: Text(
                          'No media available',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),

                  // Exercise Details
                  Text(
                    'Chi tiết bài tập',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Detail Card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow('Phần cơ thể', exercise.bodyPart),
                          _buildDetailRow(
                            'Thiết bị hỗ trợ',
                            exercise.equipment,
                          ),
                          _buildDetailRow('Cơ chính', exercise.target),

                          if (exercise.secondaryMuscles.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Cơ phụ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children:
                                  exercise.secondaryMuscles
                                      .map(
                                        (muscle) => Tooltip(
                                          message: '', // Vô hiệu hóa tooltip
                                          child: Chip(
                                            label: Text(
                                              muscle.length > 20
                                                  ? '${muscle.substring(0, 20)}...'
                                                  : muscle,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                            ),
                          ],

                          if (exercise.instructions.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Hướng dẫn',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children:
                                  exercise.instructions
                                      .map(
                                        (instruction) => Tooltip(
                                          message: '', // Vô hiệu hóa tooltip
                                          child: Chip(
                                            label: Text(
                                              instruction.length > 30
                                                  ? '${instruction.substring(0, 30)}...'
                                                  : instruction,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade900,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
