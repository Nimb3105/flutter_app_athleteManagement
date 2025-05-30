import 'package:flutter/material.dart';
import 'package:core/core.dart';

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FoodBloc(foodRepository: RepositoryProvider.of(context))
                    ..add(const FoodEvent.getAllFoods(page: 1, limit: 10)),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<FoodBloc, FoodState>(
          listener: (context, state) {
            if (state is Food_Success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              context.read<FoodBloc>().add(
                const FoodEvent.getAllFoods(page: 1, limit: 10),
              ); // Refresh danh sách sau khi xóa
            } else if (state is Food_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<Food> foods = [];

            if (state is LoadedFoods) {
              currentPage = state.currentPage;
              hasMore = state.hasMore;
              foods = state.foods;
            }

            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Tên món ăn',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Loại món ăn',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Calories',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày tạo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày cập nhật',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tác vụ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      rows:
                          foods.isEmpty && state is! Food_Loading
                              ? [
                                const DataRow(
                                  cells: [
                                    DataCell(
                                      Center(
                                        child: Text('Không có món ăn nào'),
                                      ),
                                    ),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                  ],
                                ),
                              ]
                              : foods.map((food) {
                                return DataRow(
                                  cells: [
                                    DataCell(Text(food.name)),
                                    DataCell(Text(food.foodType)),
                                    DataCell(Text(food.calories.toString())),
                                    DataCell(
                                      Text(formatUtcToLocal(food.createdAt)),
                                    ),
                                    DataCell(
                                      Text(formatUtcToLocal(food.updatedAt)),
                                    ),
                                    DataCell(
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Color.fromARGB(
                                                255,
                                                174,
                                                180,
                                                186,
                                              ),
                                            ),
                                            tooltip: 'Sửa',
                                            onPressed: () {
                                              ScaffoldMessenger.of(
                                                context,
                                              ).showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                    'Chức năng sửa đang được phát triển',
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                            tooltip: 'Xóa',
                                            onPressed: () {
                                              if (food.id != null) {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                        title: const Text(
                                                          'Xác nhận xóa',
                                                        ),
                                                        content: Text(
                                                          'Bạn có chắc muốn xóa món ăn ${food.name}?',
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                            onPressed:
                                                                () =>
                                                                    Navigator.pop(
                                                                      context,
                                                                    ),
                                                            child: const Text(
                                                              'Hủy',
                                                            ),
                                                          ),
                                                          TextButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                    FoodBloc
                                                                  >()
                                                                  .add(
                                                                    FoodEvent.deleteFood(
                                                                      food.id!,
                                                                    ),
                                                                  );
                                                              Navigator.pop(
                                                                context,
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Xóa',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                            ),
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
                  ),
                ),
                if (state is Food_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is Food_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedFood)
                  const Center(child: Text('Không hiển thị món ăn đơn')),
                if (state is! Food_Loading && state is! Food_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed:
                              currentPage > 1
                                  ? () {
                                    context.read<FoodBloc>().add(
                                      FoodEvent.getAllFoods(
                                        page: currentPage - 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Previous'),
                        ),
                        const SizedBox(width: 16),
                        Text('Trang $currentPage'),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed:
                              hasMore
                                  ? () {
                                    context.read<FoodBloc>().add(
                                      FoodEvent.getAllFoods(
                                        page: currentPage + 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
