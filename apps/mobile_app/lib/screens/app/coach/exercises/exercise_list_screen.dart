// lib/screens/app/coach/exercises/exercise_list_screen.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_create_screen.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'dart:async';

import 'other_sports_exercises_screen.dart';

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class ExerciseListScreen extends StatefulWidget {
  final String sportId;
  final String coachId;
  const ExerciseListScreen({
    required this.sportId,
    required this.coachId,
    super.key,
  });

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  final _searchController = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 500);
  String? _selectedBodyPart;

  final List<String> _bodyParts = [
    'Ngực',
    'Lưng',
    'Chân',
    'Vai',
    'Tay',
    'Bụng',
  ];

  @override
  void initState() {
    super.initState();
    context.read<ExerciseBloc>().add(
      ExerciseEvent.getAllExxerciseBySportId(widget.sportId),
    );

    // Lắng nghe thay đổi để rebuild UI thay vì fetch lại
    _searchController.addListener(() {
      _debouncer.run(() {
        if (mounted) {
          setState(() {}); // Chỉ cần rebuild lại widget
        }
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debouncer._timer?.cancel();
    super.dispose();
  }

  void _fetchExercises() {
    context.read<ExerciseBloc>().add(
      ExerciseEvent.getAllExxerciseBySportId(widget.sportId),
    );
  }

  void _showFilterDialog() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lọc theo Nhóm Cơ',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  DropdownButtonFormField<String>(
                    value: _selectedBodyPart,
                    hint: const Text('Tất cả các nhóm cơ'),
                    onChanged: (value) {
                      setModalState(() {
                        _selectedBodyPart = value;
                      });
                    },
                    items: [
                      const DropdownMenuItem<String>(
                        value: null,
                        child: Text('Tất cả'),
                      ),
                      ..._bodyParts.map(
                        (part) =>
                            DropdownMenuItem(value: part, child: Text(part)),
                      ),
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nhóm cơ',
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Hủy'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {},
                          ); // Cập nhật state để rebuild UI với bộ lọc mới
                          Navigator.pop(context);
                        },
                        child: const Text('Áp dụng'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Tìm kiếm bài tập...',
              prefixIcon: const Icon(Icons.search, size: 20),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 15,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: _showFilterDialog,
            icon: const Icon(Icons.filter_list),
            tooltip: 'Lọc bài tập',
          ),
          // --- THAY ĐỔI Ở ĐÂY ---
          IconButton(
            icon: const Icon(Icons.sports),
            tooltip: 'Môn thể thao khác',
            onPressed: () async {
              // Thêm async
              // Đợi màn hình mới đóng lại
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(value: context.read<SportBloc>()),
                          BlocProvider.value(
                            value: context.read<ExerciseBloc>(),
                          ),
                        ],
                        child: OtherSportsExercisesScreen(
                          currentSportId: widget.sportId,
                          coachId: widget.coachId,
                        ),
                      ),
                ),
              );

              // Sau khi quay lại, gọi lại hàm fetch dữ liệu ban đầu
              if (mounted) {
                _fetchExercises();
              }
            },
          ),
          // --- KẾT THÚC THAY ĐỔI ---
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
            _fetchExercises();
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
          if (state is Exercise_Initial || state is Exercise_Loading) {
            return _buildLoadingShimmer();
          } else if (state is Exercise_LoadingMore) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedExercise) {
            return const SizedBox.shrink();
          } else if (state is LoadedExercises) {
            final exercises = state.exercises;
            if (exercises.isEmpty) return _buildEmptyState(context);
            return _buildExerciseList(context, exercises);
          } else if (state is LoadedExercisesBySportId) {
            // Lấy danh sách gốc
            final allExercises = state.exercises;

            // Áp dụng bộ lọc và tìm kiếm
            final filteredExercises =
                allExercises.where((exercise) {
                  final matchesSearch = exercise.name.toLowerCase().contains(
                    _searchController.text.toLowerCase(),
                  );
                  final matchesBodyPart =
                      _selectedBodyPart == null ||
                      exercise.bodyPart == _selectedBodyPart;
                  return matchesSearch && matchesBodyPart;
                }).toList();
            if (filteredExercises.isEmpty) return _buildEmptyState(context);
            return _buildExerciseList(context, filteredExercises);
          } else if (state is Exercise_Error) {
            return Center(child: Text('Lỗi: ${state.message}'));
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => BlocProvider.value(
                    value: context.read<ExerciseBloc>(),
                    child: ExerciseCreateScreen(
                      sportId: widget.sportId,
                      createdBy: widget.coachId,
                    ),
                  ),
            ),
          );
          if (result == true) {
            _fetchExercises();
          }
        },
        child: const Icon(Icons.add),
      ),
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

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          Text(
            'Không tìm thấy bài tập phù hợp',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Hãy thử thay đổi từ khóa tìm kiếm hoặc bộ lọc.',
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
        onTap: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => ExerciseDetailScreen(
                    exercise: exercise,
                    coachId: widget.coachId,
                  ),
            ),
          );
          if (result == 'deleted' || result == 'updated') {
            _fetchExercises();
          }
        },
      ),
    );
  }
}
