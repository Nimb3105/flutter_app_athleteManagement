// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseSelectScreen extends StatelessWidget {
  final String? sportId;
  final String coachId;

  const ExerciseSelectScreen({
    required this.sportId,
    super.key,
    required this.coachId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ExerciseBloc(
            exerciseRepository: context.read<ExerciseRepository>(),
          )..add(GetAllExercisesBySportId(sportId!)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Chọn Bài Tập',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            if (state is Exercise_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedExercisesBySportId) {
              if (state.exercises.isEmpty) {
                return _buildEmptyState(context);
              }
              return _buildExerciseList(context, state.exercises);
            } else if (state is Exercise_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }
            return _buildEmptyState(context);
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off_rounded, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          Text(
            'Không tìm thấy bài tập',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Không có bài tập nào được tạo cho môn thể thao này.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseList(BuildContext context, List<Exercise> exercises) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        final exercise = exercises[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            leading: CircleAvatar(
              backgroundColor: Theme.of(
                context,
              ).colorScheme.secondary.withOpacity(0.1),
              child: Icon(
                Icons.fitness_center,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            title: Text(
              exercise.name,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(exercise.bodyPart, style: GoogleFonts.poppins()),
            trailing: IconButton(
              icon: const Icon(Icons.info_outline, color: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ExerciseDetailScreen(
                          exercise: exercise,
                          coachId: coachId,
                        ),
                  ),
                );
              },
            ),
            onTap: () {
              if (exercise.id != null) {
                Navigator.pop(context, [
                  exercise.id,
                  exercise.name,
                  exercise.unitType,
                ]);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bài tập không có ID hợp lệ')),
                );
              }
            },
          ),
        );
      },
    );
  }
}
