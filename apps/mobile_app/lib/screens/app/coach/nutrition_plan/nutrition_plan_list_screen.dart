import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/nutrition_plan/nutrition_plan_create_screen.dart';

class NutritionPlanListScreen extends StatelessWidget {
  final Athlete athlete;

  const NutritionPlanListScreen({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NutritionPlanBloc(nutritionPlanRepository: RepositoryProvider.of<NutritionPlanRepository>(context))..add(GetNutritionPlansByUserId(athlete.userId)),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
          listener: (context, state) {},
          child: BlocBuilder<NutritionPlanBloc, NutritionPlanState>(
            builder: (context, state) {
              if (state is NutritionPlan_Initial || state is NutritionPlan_Loading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is LoadedNutritionPlans) {
                if (state.nutritionPlans.isEmpty) {
                  return const Center(child: Text('Không có kế hoạch dinh dưỡng nào.'));
                }

                return ListView.builder(
                  itemCount: state.nutritionPlans.length,
                  itemBuilder: (context, index) {
                    final plan = state.nutritionPlans[index];
                    return ListTile(
                      title: Text(plan.name),
                      subtitle: Text('${plan.description}\nCalo: ${plan.totalCalories} kcal | Bữa ăn mỗi ngày: ${plan.mealCount}'),
                      onTap: () {
                        // Xử lý khi tap vào kế hoạch
                      },
                    );
                  },
                );
              }

              if (state is NutritionPlan_Error) {
                return Center(child: Text('Lỗi: ${state.message}'));
              }

              return const Center(child: Text('Trạng thái không xác định'));
            },
          ),
        ),
        floatingActionButton: Builder(
          builder:
              (fabContext) => FloatingActionButton(
                onPressed: () {
                  Navigator.push(fabContext, MaterialPageRoute(builder: (_) => BlocProvider.value(value: fabContext.read<NutritionPlanBloc>(), child: NutritionPlanCreateScreen(athlete: athlete))));
                },
                tooltip: 'Thêm kế hoạch dinh dưỡng',
                child: const Icon(Icons.add),
              ),
        ),
      ),
    );
  }
}
