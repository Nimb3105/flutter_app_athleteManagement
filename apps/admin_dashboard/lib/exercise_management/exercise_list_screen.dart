import 'package:flutter/material.dart';
import 'package:core/core.dart';

class ExerciseListScreen extends StatelessWidget {
  const ExerciseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExerciseBloc(
            exerciseRepository: RepositoryProvider.of(context),
          )..add(const ExerciseEvent.getAllExercises()),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<ExerciseBloc, ExerciseState>(
          listener: (context, state) {
            if (state is Exercise_Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              context.read<ExerciseBloc>().add(const ExerciseEvent.getAllExercises());
            } else if (state is Exercise_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Lỗi: ${state.message}')),
              );
            }
          },
          builder: (context, state) {
            if (state is Exercise_Initial) {
              return const Center(child: Text('Khởi tạo...'));
            } else if (state is Exercise_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedExercises) {
              if (state.exercises.isEmpty) {
                return const Center(child: Text('Không có bài tập nào'));
              }
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(
                      label: Text('Tên bài tập', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    DataColumn(
                      label: Text('Ngày tạo', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    DataColumn(
                      label: Text('Ngày cập nhật', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    DataColumn(
                      label: Text('Tác vụ', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                  rows: state.exercises.map((exercise) {
                    return DataRow(
                      cells: [
                        DataCell(Text(exercise.name)),
                        DataCell(Text(formatUtcToLocal(exercise.createdAt))),
                        DataCell(Text(formatUtcToLocal(exercise.updatedAt))),
                        DataCell(
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.blue),
                                tooltip: 'Sửa',
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Chức năng sửa đang được phát triển'),
                                    ),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                tooltip: 'Xóa',
                                onPressed: () {
                                  if (exercise.id != null) {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text('Xác nhận xóa'),
                                        content: Text(
                                          'Bạn có chắc muốn xóa bài tập ${exercise.name}?',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(context),
                                            child: const Text('Hủy'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              context.read<ExerciseBloc>().add(
                                                    ExerciseEvent.deleteExercise(exercise.id!),
                                                  );
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Xóa', style: TextStyle(color: Colors.red)),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              );
            } else if (state is LoadedExercise) {
              return const Center(child: Text('Không hiển thị bài tập đơn'));
            }
            return const Center(child: Text('Trạng thái không xác định'));
          },
        ),
      ),
    );
  }
}