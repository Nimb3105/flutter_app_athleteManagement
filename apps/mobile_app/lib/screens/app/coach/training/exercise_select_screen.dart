import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';

class ExerciseSelectScreen extends StatelessWidget {
  final List<String> selectedExerciseIds;
  final Function(String) onExerciseSelected;
  final Function(String) onExerciseDeselected;
  final String? bodyPart;
  final String? sportName;

  const ExerciseSelectScreen({
    super.key,
    required this.selectedExerciseIds,
    required this.onExerciseSelected,
    required this.onExerciseDeselected,
    this.bodyPart,
    this.sportName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ExerciseBloc(
            exerciseRepository: context.read<ExerciseRepository>(),
          )..add(
            sportName != null && sportName != 'all'
                ? GetAllExercisesBySportName(sportName!, page: 1, limit: 10)
                : bodyPart != null && bodyPart != 'all'
                ? GetAllExercisesByBodyPart(bodyPart!, page: 1, limit: 10)
                : const GetAllExercises(page: 1, limit: 10),
          ),
      child: _ExerciseSelectView(
        initialSelectedExerciseIds: selectedExerciseIds,
        // Chỉ truyền các callback nếu bạn muốn xử lý đa lựa chọn ở màn hình này
        // Hiện tại, bạn chỉ muốn chọn 1 và pop, nên có thể bỏ qua onExerciseSelected/Deselected
        // hoặc thay đổi logic để nó pop thay vì chỉ gọi callback.
        onExerciseSelected: onExerciseSelected, // Giữ lại nếu muốn đa lựa chọn
        onExerciseDeselected:
            onExerciseDeselected, // Giữ lại nếu muốn đa lựa chọn
        initialBodyPart: bodyPart,
        initialSportName: sportName,
      ),
    );
  }
}

class _ExerciseSelectView extends StatefulWidget {
  final List<String> initialSelectedExerciseIds;
  final Function(String) onExerciseSelected;
  final Function(String) onExerciseDeselected;
  final String? initialBodyPart;
  final String? initialSportName;

  const _ExerciseSelectView({
    required this.initialSelectedExerciseIds,
    required this.onExerciseSelected,
    required this.onExerciseDeselected,
    this.initialBodyPart,
    this.initialSportName,
  });

  @override
  State<_ExerciseSelectView> createState() => _ExerciseSelectViewState();
}

class _ExerciseSelectViewState extends State<_ExerciseSelectView>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _hasMore = true;
  String? _selectedBodyPart;
  String? _selectedSportName;
  int _currentPage = 1;
  double? _lastScrollPosition;
  List<Exercise> _allExercises = []; // Lưu danh sách bài tập gốc để lọc trên FE

  final List<String> _bodyParts = [
    'all',
    'ngực',
    'lưng',
    'chân',
    'vai',
    'tay',
    'bụng',
  ];

  final List<String> _sportNames = [
    'all',
    'Cầu lông',
    'Bóng đá',
    'Bóng rổ',
    'Gym',
    'Yoga',
    'Bơi lội',
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _selectedBodyPart = widget.initialBodyPart ?? 'all';
    _selectedSportName = widget.initialSportName ?? 'all';
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    const threshold = 200;
    if (_scrollController.hasClients &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - threshold &&
        !_isLoadingMore &&
        _hasMore) {
      _lastScrollPosition = _scrollController.position.pixels;
      _isLoadingMore = true;
      if (_selectedSportName != 'all') {
        context.read<ExerciseBloc>().add(
          GetAllExercisesBySportName(
            _selectedSportName!,
            page: _currentPage + 1,
            limit: 10,
          ),
        );
      } else if (_selectedBodyPart != 'all') {
        context.read<ExerciseBloc>().add(
          GetAllExercisesByBodyPart(
            _selectedBodyPart!,
            page: _currentPage + 1,
            limit: 10,
          ),
        );
      } else {
        context.read<ExerciseBloc>().add(
          GetAllExercises(page: _currentPage + 1, limit: 10),
        );
      }
    }
  }

  // CHỈNH SỬA TẠI ĐÂY
  void _toggleExerciseSelection(String exerciseId) {
    Navigator.pop(context, exerciseId);
  }

  void _navigateToExerciseDetail(BuildContext context, Exercise exercise) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseDetailScreen(exercise: exercise),
      ),
    );
  }

  void _onBodyPartChanged(String? newBodyPart) {
    setState(() {
      _selectedBodyPart = newBodyPart ?? 'all';
      _currentPage = 1;
      _isLoadingMore = false;
      _hasMore = true;
      _lastScrollPosition = null;
    });

    if (_selectedSportName == 'all') {
      // Gọi API nếu sportName là 'all'
      context.read<ExerciseBloc>().add(
        _selectedBodyPart != 'all'
            ? GetAllExercisesByBodyPart(_selectedBodyPart!, page: 1, limit: 10)
            : const GetAllExercises(page: 1, limit: 10),
      );
    } else {
      // Lọc trên FE dựa trên _allExercises
      _filterExercisesOnFrontend();
    }
  }

  void _onSportNameChanged(String? newSportName) {
    setState(() {
      _selectedSportName = newSportName ?? 'all';
      _currentPage = 1;
      _isLoadingMore = false;
      _hasMore = true;
      _lastScrollPosition = null;
    });

    if (_selectedBodyPart == 'all') {
      // Gọi API nếu bodyPart là 'all'
      context.read<ExerciseBloc>().add(
        _selectedSportName != 'all'
            ? GetAllExercisesBySportName(
              _selectedSportName!,
              page: 1,
              limit: 10,
            )
            : const GetAllExercises(page: 1, limit: 10),
      );
    } else {
      // Lọc trên FE dựa trên _allExercises
      _filterExercisesOnFrontend();
    }
  }

  void _filterExercisesOnFrontend() {
    List<Exercise> filteredExercises = List.from(_allExercises);

    if (_selectedBodyPart != 'all') {
      filteredExercises =
          filteredExercises
              .where((exercise) => exercise.bodyPart == _selectedBodyPart)
              .toList();
    }

    if (_selectedSportName != 'all') {
      filteredExercises =
          filteredExercises
              .where((exercise) => exercise.sportName == _selectedSportName)
              .toList();
    }

    setState(() {
      _hasMore = false; // Không tải thêm khi lọc trên FE
      // ignore: invalid_use_of_visible_for_testing_member
      context.read<ExerciseBloc>().emit(
        LoadedExercises(filteredExercises, _currentPage, 10, false),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn bài tập'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedBodyPart,
              isExpanded: true,
              hint: const Text('Chọn nhóm cơ'),
              items:
                  _bodyParts
                      .map(
                        (bodypart) => DropdownMenuItem(
                          value: bodypart,
                          child: Text(
                            bodypart == 'all'
                                ? 'Tất cả'
                                : bodypart.capitalize(),
                          ),
                        ),
                      )
                      .toList(),
              onChanged: _onBodyPartChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedSportName,
              isExpanded: true,
              hint: const Text('Chọn môn thể thao'),
              items:
                  _sportNames
                      .map(
                        (sportName) => DropdownMenuItem(
                          value: sportName,
                          child: Text(
                            sportName == 'all'
                                ? 'Tất cả'
                                : sportName.capitalize(),
                          ),
                        ),
                      )
                      .toList(),
              onChanged: _onSportNameChanged,
            ),
          ),
          Expanded(
            child: BlocConsumer<ExerciseBloc, ExerciseState>(
              listener: (context, state) {
                if (state is LoadedExercises) {
                  setState(() {
                    _hasMore = state.hasMore;
                    _isLoadingMore = false;
                    _currentPage = state.currentPage;
                    // Lưu danh sách gốc để lọc trên FE
                    if (_selectedBodyPart == 'all' ||
                        _selectedSportName == 'all') {
                      _allExercises = List.from(state.exercises);
                    }
                  });
                  if (_lastScrollPosition != null &&
                      _scrollController.hasClients) {
                    _scrollController.jumpTo(_lastScrollPosition!);
                  }
                } else if (state is Exercise_LoadingMore) {
                  _isLoadingMore = true;
                } else if (state is Exercise_Error) {
                  _isLoadingMore = false;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Lỗi: ${state.message}')),
                  );
                }
              },
              builder: (context, state) {
                if (state is Exercise_Loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                List<Exercise> exercises = [];
                bool hasMore = _hasMore;
                if (state is LoadedExercises) {
                  exercises = state.exercises;
                  hasMore = state.hasMore;
                } else if (state is Exercise_LoadingMore) {
                  if (state is LoadedExercises) {
                    exercises = (state as LoadedExercises).exercises;
                    hasMore = (state as LoadedExercises).hasMore;
                  }
                }

                if (exercises.isEmpty && !_isLoadingMore) {
                  return const Center(
                    child: Text('Không tìm thấy bài tập nào'),
                  );
                }

                return ListView.builder(
                  key: const ValueKey('exercise_list'),
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: exercises.length + (hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    try {
                      if (index == exercises.length && hasMore) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }

                      final exercise = exercises[index];
                      // final isSelected = _selectedExerciseIds.contains(exercise.id); // Không cần nữa nếu chỉ chọn 1 và pop

                      return ListTile(
                        key: ValueKey(exercise.id ?? 'index_$index'),
                        title: Text('Tên bài tập: ${exercise.name}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nhóm cơ: ${exercise.bodyPart}'),
                            Text('Tác động: ${exercise.target}'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.info_outline),
                          tooltip: 'Xem chi tiết',
                          onPressed:
                              () =>
                                  _navigateToExerciseDetail(context, exercise),
                        ),
                        onTap:
                            () => _toggleExerciseSelection(
                              exercise.id ?? '',
                            ),
                      );
                    } catch (e) {
                      return const ListTile(
                        title: Text('Lỗi hiển thị bài tập'),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
