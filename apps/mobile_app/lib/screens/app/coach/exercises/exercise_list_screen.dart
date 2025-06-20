// import 'package:core/core.dart';
// import 'package:flutter/material.dart';
// import 'package:mobile_app/screens/app/coach/exercises/exercise_create_screen.dart';
// import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';

// class ExerciseScreen extends StatelessWidget {
//   const ExerciseScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create:
//           (context) => ExerciseBloc(
//             exerciseRepository: context.read<ExerciseRepository>(),
//           )..add(const GetAllExercises()),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Row(
//             children: [
//               const Icon(Icons.fitness_center),
//               const SizedBox(width: 8),
//               Expanded(
//                 child: Text(
//                   'Danh sách bài tập',
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//           backgroundColor: Theme.of(context).primaryColor,
//           foregroundColor: Colors.white,
//           elevation: 2,
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Colors.blue.shade100, Colors.white],
//             ),
//           ),
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const SizedBox(height: 16),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                     child: ExerciseListView(),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: Builder(
//           builder:
//               (context) => FloatingActionButton.extended(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder:
//                           (_) => RepositoryProvider.value(
//                             value: context.read<ExerciseRepository>(),
//                             child: BlocProvider.value(
//                               value: context.read<ExerciseBloc>(),
//                               child: const ExerciseCreateScreen(),
//                             ),
//                           ),
//                     ),
//                   );
//                 },
//                 icon: const Icon(Icons.add),
//                 label: const Text(
//                   'Thêm Exercise',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                 ),
//                 backgroundColor: Theme.of(context).primaryColor,
//               ),
//         ),
//       ),
//     );
//   }
// }

// class ExerciseListView extends StatelessWidget {
//   const ExerciseListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ExerciseBloc, ExerciseState>(
//       listener: (context, state) {
//         print(state);
//         if (state is Exercise_Error) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(state.message), backgroundColor: Colors.red),
//           );
//         } else if (state is Exercise_Success) {
//           // Hiển thị thông báo thành công và làm mới danh sách
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.message),
//               backgroundColor: Colors.green,
//             ),
//           );
//           // Kích hoạt GetAllExercises để tải lại danh sách
//           context.read<ExerciseBloc>().add(const GetAllExercises());
//         }
//       },
//       builder: (context, state) {
//         return RefreshIndicator(
//           onRefresh: () async {
//             context.read<ExerciseBloc>().add(const GetAllExercises());
//           },
//           child: SingleChildScrollView(
//             physics: const AlwaysScrollableScrollPhysics(),
//             child: Column(
//               children: [
//                 if (state is Exercise_Initial || state is Exercise_Loading)
//                   const Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(16.0),
//                       child: CircularProgressIndicator(),
//                     ),
//                   )
//                 else if (state is LoadedExercises)
//                   state.exercises.isEmpty
//                       ? const Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: Center(
//                           child: Text(
//                             'No exercises found',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       )
//                       : ListView.builder(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         itemCount: state.exercises.length,
//                         itemBuilder: (context, index) {
//                           final exercise = state.exercises[index];
//                           return ExerciseCard(exercise: exercise);
//                         },
//                       )
//                 else if (state is Exercise_Error)
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Center(
//                       child: Text(
//                         'Error: ${state.message}',
//                         style: const TextStyle(color: Colors.red, fontSize: 16),
//                       ),
//                     ),
//                   )
//                 else
//                   const Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Center(
//                       child: Text(
//                         'Unexpected state',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class ExerciseCard extends StatelessWidget {
//   final Exercise exercise;

//   const ExerciseCard({super.key, required this.exercise});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       elevation: 3,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//       child: ListTile(
//         contentPadding: const EdgeInsets.all(16.0),
//         title: Text(
//           exercise.name,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 8),
//             Text('Type: ${exercise.bodyPart}'),
//             Text('Intensity: ${exercise.equipment}'),
//             Text('Muscle: ${exercise.target}'),
//           ],
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder:
//                   (_) => RepositoryProvider.value(
//                     value: context.read<ExerciseRepository>(),
//                     child: BlocProvider.value(
//                       value: context.read<ExerciseBloc>(),
//                       child: ExerciseDetailScreen(exercise: exercise),
//                     ),
//                   ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_create_screen.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ExerciseBloc(
            exerciseRepository: context.read<ExerciseRepository>(),
          )..add(const GetAllExercises()),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.fitness_center),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Danh sách bài tập',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
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
          child: SafeArea(child: ExerciseListView()),
        ),
        floatingActionButton: Builder(
          builder:
              (context) => FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => RepositoryProvider.value(
                            value: context.read<ExerciseRepository>(),
                            child: BlocProvider.value(
                              value: context.read<ExerciseBloc>(),
                              child: const ExerciseCreateScreen(),
                            ),
                          ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Thêm Exercise',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
        ),
      ),
    );
  }
}

class ExerciseListView extends StatefulWidget {
  const ExerciseListView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExerciseListViewState createState() => _ExerciseListViewState();
}

class _ExerciseListViewState extends State<ExerciseListView>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  double? _lastOffset;
  String? _selectedBodyPart;
  String? _selectedSportName;

  final List<String> bodyParts = ['tay', 'chân', 'ngực', 'lưng', 'bụng', 'vai'];
  final List<String> sportNames = [
    'Bóng đá',
    'Bóng rổ',
    'Cầu lông',
    'Bơi lội',
    'Chạy bộ',
    'Gym',
    'Yoga',
    'Đạp xe',
    'Võ thuật',
    'Tennis',
    'Bóng chuyền',
    'Leo núi',
    'Boxing',
    'Pilates',
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      final state = context.read<ExerciseBloc>().state;
      if (state is LoadedExercises && state.hasMore) {
        setState(() {
          _isLoadingMore = true;
          _lastOffset = _scrollController.position.pixels;
        });
        // Chỉ gọi API để tải thêm dữ liệu, không áp dụng bộ lọc trong API
        context.read<ExerciseBloc>().add(
          GetAllExercises(page: state.currentPage + 1, limit: state.limit),
        );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocConsumer<ExerciseBloc, ExerciseState>(
      buildWhen: (previous, current) {
        return current is Exercise_Initial ||
            current is Exercise_Loading ||
            current is Exercise_LoadingMore ||
            current is LoadedExercises ||
            current is Exercise_Error;
      },
      listener: (context, state) {
        if (state is LoadedExercises || state is Exercise_Error) {
          if (_isLoadingMore) {
            setState(() {
              _isLoadingMore = false;
            });
            if (_lastOffset != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _scrollController.jumpTo(_lastOffset!);
              });
            }
          }
        }
        if (state is Exercise_Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        } else if (state is Exercise_Success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            setState(() {
              _isLoadingMore = false;
              _lastOffset = null;
              _selectedBodyPart = null;
              _selectedSportName = null;
            });
            context.read<ExerciseBloc>().add(const GetAllExercises());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bộ lọc
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            hint: const Text('Chọn bộ phận cơ thể'),
                            value: _selectedBodyPart,
                            isExpanded: true,
                            items:
                                bodyParts
                                    .map(
                                      (bodyPart) => DropdownMenuItem(
                                        value: bodyPart,
                                        child: Text(bodyPart),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedBodyPart = value;
                                // Không reset _selectedSportName
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButton<String>(
                            hint: const Text('Chọn môn thể thao'),
                            value: _selectedSportName,
                            isExpanded: true,
                            items:
                                sportNames
                                    .map(
                                      (sportName) => DropdownMenuItem(
                                        value: sportName,
                                        child: Text(sportName),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedSportName = value;
                                // Không reset _selectedBodyPart
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_selectedBodyPart != null &&
                                  _selectedSportName != null) {
                                setState(
                                  () {},
                                ); // Áp dụng bộ lọc kết hợp trên FE
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Vui lòng chọn cả bộ phận cơ thể và môn thể thao',
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                            child: const Text('Áp dụng bộ lọc kết hợp'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedBodyPart = null;
                                _selectedSportName = null;
                              });
                            },
                            child: const Text('Xóa bộ lọc'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: _buildContent(state)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContent(ExerciseState state) {
    if (state is Exercise_Initial || state is Exercise_Loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is LoadedExercises) {
      List<Exercise> filteredExercises = state.exercises;
      // Áp dụng bộ lọc trên front-end
      if (_selectedBodyPart != null && _selectedSportName != null) {
        filteredExercises =
            state.exercises
                .where(
                  (exercise) =>
                      exercise.bodyPart == _selectedBodyPart &&
                      exercise.sportName == _selectedSportName,
                )
                .toList();
      } else if (_selectedBodyPart != null) {
        filteredExercises =
            state.exercises
                .where((exercise) => exercise.bodyPart == _selectedBodyPart)
                .toList();
      } else if (_selectedSportName != null) {
        filteredExercises =
            state.exercises
                .where((exercise) => exercise.sportName == _selectedSportName)
                .toList();
      }

      if (filteredExercises.isEmpty) {
        return ListView(
          controller: _scrollController,
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Không tìm thấy bài tập nào với bộ lọc đã chọn',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        );
      }

      return ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount:
            filteredExercises.length +
            (state.hasMore && _isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < filteredExercises.length) {
            return ExerciseCard(exercise: filteredExercises[index]);
          }
          if (state.hasMore && _isLoadingMore) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          return const SizedBox.shrink();
        },
      );
    } else if (state is Exercise_Error) {
      return ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Error: ${state.message}',
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ExerciseBloc>().add(const GetAllExercises());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return ListView(
      controller: _scrollController,
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text('Unexpected state', style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          exercise.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('Nhóm cơ: ${exercise.bodyPart}'),
            Text('Môn thể thao: ${exercise.sportName}'),
            Text('Tác động: ${exercise.target}'),
            Text('Thiết bị: ${exercise.equipment}'),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => RepositoryProvider.value(
                    value: context.read<ExerciseRepository>(),
                    child: BlocProvider.value(
                      value: context.read<ExerciseBloc>(),
                      child: ExerciseDetailScreen(exercise: exercise),
                    ),
                  ),
            ),
          );
        },
      ),
    );
  }
}
