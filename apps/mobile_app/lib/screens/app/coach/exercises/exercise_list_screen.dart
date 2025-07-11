// lib/screens/app/coach/exercises/exercise_list_screen.dart

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_create_screen.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ExerciseListScreen extends StatefulWidget {
  final String sportId;

  const ExerciseListScreen({required this.sportId, super.key});

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  @override
  void initState() {
    super.initState();
    // Khi màn hình được tạo, gọi sự kiện để tải danh sách bài tập.
    // Bloc đã được cung cấp từ NavigationMenu.
    context.read<ExerciseBloc>().add(GetAllExercisesBySportId(widget.sportId));
  }

  @override
  Widget build(BuildContext context) {
    // Không cần BlocProvider ở đây nữa.
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bài Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
        ],
      ),
      body: BlocConsumer<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is Exercise_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.green,
              ),
            );
            // Tải lại danh sách sau khi có hành động thành công
            context.read<ExerciseBloc>().add(
              GetAllExercisesBySportId(widget.sportId),
            );
          } else if (state is Exercise_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Lỗi: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is Exercise_Loading) {
            return _buildLoadingShimmer();
          } else if (state is LoadedExercisesBySportId ||
              (state is Exercise_Loading)) {
            final exercises = (state as dynamic).exercises;
            if (exercises.isEmpty) {
              return _buildEmptyState(context);
            }
            return _buildExerciseList(context, exercises);
          } else if (state is Exercise_Error) {
            return Center(child: Text('Lỗi: ${state.message}'));
          }
          // Trạng thái mặc định hoặc không có bài tập
          return _buildEmptyState(context);
        },
      ),
      floatingActionButton: Builder(
        builder: (innerContext) {
          return FloatingActionButton(
            onPressed: () {
              Navigator.push(
                innerContext,
                MaterialPageRoute(
                  builder:
                      (_) => BlocProvider.value(
                        // Chia sẻ bloc hiện tại cho màn hình tạo mới
                        value: BlocProvider.of<ExerciseBloc>(innerContext),
                        child: ExerciseCreateScreen(sportId: widget.sportId),
                      ),
                ),
              );
            },
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }

  // ... các hàm _build còn lại không thay đổi ...
  Widget _buildLoadingShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 6,
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
              leading: CircleAvatar(backgroundColor: Colors.white),
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

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.fitness_center, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          Text(
            'Chưa có bài tập nào',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Nhấn nút + để thêm bài tập mới.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseList(BuildContext context, List<Exercise> exercises) {
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
              builder: (context) => ExerciseDetailScreen(exercise: exercise),
            ),
          );
        },
      ),
    );
  }
}
