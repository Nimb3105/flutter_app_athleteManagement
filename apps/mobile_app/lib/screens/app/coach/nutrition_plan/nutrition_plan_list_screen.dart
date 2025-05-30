import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/nutrition_plan/nutrition_plan_create_screen.dart';

class NutritionPlanListScreen extends StatelessWidget {
  final Athlete athlete;

  const NutritionPlanListScreen({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => NutritionPlanBloc(
            nutritionPlanRepository:
                RepositoryProvider.of<NutritionPlanRepository>(context),
          )..add(
            GetNutritionPlansByUserId(athlete.userId),
          ), // Kích hoạt sự kiện ngay khi tạo
      child: Scaffold(
        appBar: AppBar(
          //title: Text('Kế hoạch dinh dưỡng cho ${athlete.name ?? 'Vận động viên'}'),
        ),
        body: BlocBuilder<NutritionPlanBloc, NutritionPlanState>(
          builder: (context, state) {
            if (state is NutritionPlan_Initial ||
                state is NutritionPlan_Loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is LoadedNutritionPlans) {
              if (state.nutritionPlans.isEmpty) {
                return const Center(
                  child: Text('Không tìm thấy kế hoạch dinh dưỡng nào.'),
                );
              }
              return ListView.builder(
                itemCount: state.nutritionPlans.length,
                itemBuilder: (context, index) {
                  final plan = state.nutritionPlans[index];
                  return ListTile(
                    title: Text(plan.name),
                    subtitle: Text(
                      '${plan.description}\nCalo: ${plan.totalCalories} kcal | Bữa ăn mỗi ngày: ${plan.mealCount}',
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => NutritionPlanDetailScreen(plan: plan)));
                    },
                  );
                },
              );
            }

            if (state is NutritionPlan_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }

            if (state is NutritionPlan_Success) {
              return Center(child: Text(state.message));
            }

            if (state is LoadedNutritionPlan) {
              return const Center(
                child: Text(
                  'Đã tải một kế hoạch dinh dưỡng (không mong đợi ở đây)',
                ),
              );
            }

            return const Center(child: Text('Trạng thái không xác định'));
          },
        ),
        floatingActionButton: Builder(
          builder:
              (fabContext) => FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    fabContext,
                    MaterialPageRoute(
                      builder:
                          (newContext) => BlocProvider.value(
                            value: fabContext.read<NutritionPlanBloc>(),
                            child: NutritionPlanCreateScreen(athlete: athlete),
                          ),
                    ),
                  );
                },
                tooltip: 'Thêm kế hoạch dinh dưỡng',
                child: const Icon(Icons.add),
              ),
        ),
      ),
    );
  }
}
