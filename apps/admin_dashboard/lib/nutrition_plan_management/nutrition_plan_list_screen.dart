import 'package:flutter/material.dart';
import 'package:core/core.dart';

class NutritionPlanListScreen extends StatelessWidget {
  const NutritionPlanListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NutritionPlanBloc(nutritionPlanRepository: RepositoryProvider.of(context))
            ..add(const NutritionPlanEvent.getAllNutritionPlans(page: 1, limit: 10)),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<NutritionPlanBloc, NutritionPlanState>(
          listener: (context, state) {
            if (state is NutritionPlan_Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              context.read<NutritionPlanBloc>().add(
                    const NutritionPlanEvent.getAllNutritionPlans(page: 1, limit: 10),
                  ); // Refresh danh sách sau khi xóa
            } else if (state is NutritionPlan_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Lỗi: ${state.message}')),
              );
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<NutritionPlan> nutritionPlans = [];

            if (state is LoadedNutritionPlans) {
              currentPage = state.currentPage;
              hasMore = state.hasMore;
              nutritionPlans = state.nutritionPlans;
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
                            'Tên kế hoach dinh dưỡng',
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
                      rows: nutritionPlans.isEmpty && state is! NutritionPlan_Loading
                          ? [
                              const DataRow(cells: [
                                DataCell(
                                  Center(child: Text('không có kế hoạch dinh dưỡng nào')),
                                ),
                                DataCell(SizedBox.shrink()),
                                DataCell(SizedBox.shrink()),
                                DataCell(SizedBox.shrink()),
                              ])
                            ]
                          : nutritionPlans.map((nutritionPlan) {
                              return DataRow(
                                cells: [
                                  DataCell(Text(nutritionPlan.name)),
                                  DataCell(Text(formatUtcToLocal(nutritionPlan.createdAt))),
                                  DataCell(Text(formatUtcToLocal(nutritionPlan.updatedAt))),
                                  DataCell(
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Color.fromARGB(255, 174, 180, 186),
                                          ),
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
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                          tooltip: 'Xóa',
                                          onPressed: () {
                                            if (nutritionPlan.id != null) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                  title: const Text('Xác nhận xóa'),
                                                  content: Text(
                                                    'Bạn có chắc muốn xóa món ăn ${nutritionPlan.name}?',
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () => Navigator.pop(context),
                                                      child: const Text('Hủy'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        context.read<NutritionPlanBloc>().add(
                                                              NutritionPlanEvent.deleteNutritionPlan(nutritionPlan.id!),
                                                            );
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        'Xóa',
                                                        style: TextStyle(color: Colors.red),
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
                if (state is NutritionPlan_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is NutritionPlan_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedNutritionPlan)
                  const Center(child: Text('Không hiển thị món ăn đơn')),
                if (state is! NutritionPlan_Loading && state is! NutritionPlan_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: currentPage > 1
                              ? () {
                                  context.read<NutritionPlanBloc>().add(
                                        NutritionPlanEvent.getAllNutritionPlans(
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
                          onPressed: hasMore
                              ? () {
                                  context.read<NutritionPlanBloc>().add(
                                        NutritionPlanEvent.getAllNutritionPlans(
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