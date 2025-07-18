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
  final String coachId;
  const ExerciseListScreen({
    required this.sportId,
    super.key,
    required this.coachId,
  });

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Exercise> _allExercises = [];
  List<Exercise> _filteredExercises = [];
  String? _selectedBodyPart;

  // Giả sử đây là các giá trị lọc bạn có
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

    // Tải danh sách bài tập ban đầu
    context.read<ExerciseBloc>().add(GetAllExercisesBySportId(widget.sportId));
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    setState(() {
      _filteredExercises =
          _allExercises.where((exercise) {
            final matchesSearch =
                _searchController.text.isEmpty ||
                exercise.name.toLowerCase().contains(
                  _searchController.text.toLowerCase(),
                );
            final matchesFilter =
                _selectedBodyPart == null ||
                exercise.bodyPart == _selectedBodyPart;
            return matchesSearch && matchesFilter;
          }).toList();
    });
  }

  void _onSearchChanged() {
    _applyFilters();
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
                          _applyFilters(); // Áp dụng bộ lọc
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
        ],
      ),
      body: BlocConsumer<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          // THÊM LOGIC XỬ LÝ KHI TẢI XONG
          if (state is LoadedExercisesBySportId) {
            setState(() {
              _allExercises = state.exercises;
              _applyFilters();
            });
          } else if (state is Exercise_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.green,
              ),
            );
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
          if (state is Exercise_Error) {
            return Center(child: Text('Lỗi: ${state.message}'));
          }
          // Giờ đây điều kiện này sẽ hoạt động đúng
          if (state is Exercise_Loading && _allExercises.isEmpty) {
            return _buildLoadingShimmer();
          }
          if (_filteredExercises.isEmpty) {
            return _buildEmptyState(context);
          }
          return _buildExerciseList(context, _filteredExercises);
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
                        value: BlocProvider.of<ExerciseBloc>(innerContext),
                        child: ExerciseCreateScreen(sportId: widget.sportId,createdBy: widget.coachId,),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExerciseDetailScreen(exercise: exercise,coachId: widget.coachId,),
            ),
          );
        },
      ),
    );
  }
}
