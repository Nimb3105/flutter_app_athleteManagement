// lib/screens/app/coach/exercises/other_sports_exercises_screen.dart
// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'exercise_detail.dart';

class OtherSportsExercisesScreen extends StatefulWidget {
  final String currentSportId;
  final String coachId;

  const OtherSportsExercisesScreen({
    required this.currentSportId,
    required this.coachId,
    super.key,
  });

  @override
  _OtherSportsExercisesScreenState createState() =>
      _OtherSportsExercisesScreenState();
}

class _OtherSportsExercisesScreenState
    extends State<OtherSportsExercisesScreen> {
  String? _selectedSportId;

  @override
  void initState() {
    super.initState();
    context.read<SportBloc>().add(const SportEvent.getAllSports());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài tập từ môn thể thao khác')),
      body: Column(
        children: [_buildSportSelector(), Expanded(child: _buildContent())],
      ),
    );
  }

  Widget _buildSportSelector() {
    return BlocBuilder<SportBloc, SportState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading:
              () => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              ),
          loadedSports: (sports, _, _, _) {
            final otherSports =
                sports.where((s) => s.id != widget.currentSportId).toList();
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButtonFormField<String>(
                value: _selectedSportId,
                hint: const Text('Chọn một môn thể thao'),
                onChanged: (newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedSportId = newValue;
                    });
                    context.read<ExerciseBloc>().add(
                      ExerciseEvent.getAllExxerciseBySportId(newValue),
                    );
                  }
                },
                items:
                    otherSports
                        .map(
                          (sport) => DropdownMenuItem(
                            value: sport.id,
                            child: Text(sport.name),
                          ),
                        )
                        .toList(),
                decoration: const InputDecoration(
                  labelText: 'Môn thể thao',
                  border: OutlineInputBorder(),
                ),
              ),
            );
          },
          error:
              (message) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Lỗi: $message'),
              ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildContent() {
    if (_selectedSportId == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.sports_kabaddi, size: 100, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'Vui lòng chọn một môn thể thao để xem bài tập',
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return BlocBuilder<ExerciseBloc, ExerciseState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildLoadingShimmer(),
          loadedExercisesBySportId: (exercises) {
            if (exercises.isEmpty) {
              return _buildEmptyState();
            }
            return _buildExerciseList(exercises);
          },
          error: (message) => Center(child: Text('Lỗi: $message')),
          orElse:
              () => const Center(
                child: Text('Đang tải hoặc trạng thái không xác định'),
              ),
        );
      },
    );
  }

  Widget _buildLoadingShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const ListTile(
              leading: CircleAvatar(radius: 28, backgroundColor: Colors.white),
              title: SizedBox(
                height: 20,
                child: ColoredBox(color: Colors.white),
              ),
              subtitle: SizedBox(
                height: 16,
                child: ColoredBox(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sentiment_dissatisfied,
            size: 100,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 24),
          Text(
            'Không có bài tập nào cho môn thể thao này',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseList(List<Exercise> exercises) {
    return AnimationLimiter(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final exercise = exercises[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: _buildExerciseCard(context, exercise),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildExerciseCard(BuildContext context, Exercise exercise) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
          child: Icon(Icons.fitness_center, color: theme.colorScheme.primary),
        ),
        title: Text(
          exercise.name,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          '${exercise.bodyPart} • ${exercise.equipment}',
          style: GoogleFonts.poppins(
            color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => ExerciseDetailScreen(
                    exercise: exercise,
                    coachId:
                        widget.coachId, // Pass coachId to the detail screen
                  ),
            ),
          );
        },
      ),
    );
  }
}
