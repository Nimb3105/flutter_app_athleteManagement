import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrainingScheduleCard extends StatelessWidget {
  final TrainingSchedule trainingSchedule;
  final List<TrainingExercise> exercises;
  final Map<String, Exercise> exerciseDetails;

  const TrainingScheduleCard({
    super.key,
    required this.trainingSchedule,
    required this.exercises,
    required this.exerciseDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${trainingSchedule.type} (${DateFormat.Hm().format(trainingSchedule.startTime.toLocal())} - ${DateFormat.Hm().format(trainingSchedule.endTime.toLocal())})',
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
                context, Icons.location_on_outlined, 'Địa điểm:', trainingSchedule.location),
            _buildInfoRow(context, Icons.notes_outlined, 'Ghi chú:', trainingSchedule.notes),
            const Divider(height: 20),
            const Text(
              'Các bài tập:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            if (exercises.isEmpty)
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Chưa có bài tập nào được gán.'),
              )
            else
              ...exercises.map((exercise) {
                final details = exerciseDetails[exercise.exerciseId];
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                  child: Text(
                      '- ${details?.name ?? 'Bài tập không xác định'}'),
                );
              }),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).primaryColor, size: 20),
          const SizedBox(width: 12),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}