import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/nutrition_plan/nutrition_plan_create_screen.dart';
import 'package:intl/intl.dart';

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
          )..add(GetNutritionPlansByUserId(athlete.userId)),
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('Kế hoạch dinh dưỡng'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          elevation: 2,
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                context.read<NutritionPlanBloc>().add(
                  GetNutritionPlansByUserId(athlete.userId),
                );
              },
            ),
          ],
        ),
        body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
          listener: (context, state) {
            if (state is NutritionPlan_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Lỗi: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: BlocBuilder<NutritionPlanBloc, NutritionPlanState>(
            builder: (context, state) {
              if (state is NutritionPlan_Initial ||
                  state is NutritionPlan_Loading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is LoadedNutritionPlans) {
                if (state.nutritionPlans.isEmpty) {
                  return _buildEmptyState();
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<NutritionPlanBloc>().add(
                      GetNutritionPlansByUserId(athlete.userId),
                    );
                  },
                  child: Column(
                    children: [
                      // List of nutrition plans
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.all(16),
                          itemCount: state.nutritionPlans.length,
                          separatorBuilder:
                              (context, index) => const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            final plan = state.nutritionPlans[index];
                            return _buildNutritionPlanCard(context, plan);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }

              if (state is NutritionPlan_Error) {
                return _buildErrorState(state.message);
              }

              return const Center(child: Text('Trạng thái không xác định'));
            },
          ),
        ),
        floatingActionButton: Builder(
          builder:
              (fabContext) => FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    fabContext,
                    MaterialPageRoute(
                      builder:
                          (_) => MultiBlocProvider(
                            providers: [
                              BlocProvider.value(
                                value: fabContext.read<NutritionPlanBloc>(),
                              ),
                              BlocProvider(
                                create:
                                    (context) => FoodBloc(
                                      foodRepository:
                                          context.read<FoodRepository>(),
                                    )..add(const GetAllFoods()),
                              ),
                            ],
                            child: NutritionPlanCreateScreen(athlete: athlete),
                          ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Thêm kế hoạch'),
                backgroundColor: Theme.of(fabContext).colorScheme.primary,
              ),
        ),
      ),
    );
  }

  Widget _buildNutritionPlanCard(BuildContext context, NutritionPlan plan) {
    final timeFormat = DateFormat('HH:mm');

    return BlocProvider<PlanFoodBloc>(
      create: (context) {
        final bloc = PlanFoodBloc(
          planFoodRepository: RepositoryProvider.of(context),
          foodRepository: RepositoryProvider.of(context),
          nutritionPlanRepository: RepositoryProvider.of(context),
        );
        bloc.add(PlanFoodEvent.getAllByNutritionPlanId(plan.id!));
        return bloc;
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.all(16),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.restaurant, color: Colors.white, size: 24),
            ),
            title: Text(
              plan.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        plan.mealType,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      timeFormat.format(plan.mealTime),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _buildPlanInfo(
                      Icons.local_fire_department,
                      '${plan.totalCalories} kcal',
                      Colors.red,
                    ),
                    const SizedBox(width: 16),
                    _buildPlanInfo(
                      Icons.restaurant_menu,
                      '${plan.mealCount} món',
                      Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
            children: [_buildPlanDetails(context, plan)],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanInfo(IconData icon, String text, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildPlanDetails(BuildContext context, NutritionPlan plan) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),

        // Description
        if (plan.description.isNotEmpty == true) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.description, size: 20, color: Colors.grey[600]),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mô tả',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      plan.description,
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],

        // Food list header
        Row(
          children: [
            Icon(Icons.fastfood, size: 20, color: Colors.grey[600]),
            const SizedBox(width: 8),
            Text(
              'Danh sách món ăn',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Food list
        BlocBuilder<PlanFoodBloc, PlanFoodState>(
          builder: (context, planFoodState) {
            if (planFoodState is PlanFood_Loading) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (planFoodState is PlanFood_Error) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error_outline, color: Colors.red[600]),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Lỗi: ${planFoodState.message}',
                        style: TextStyle(color: Colors.red[700]),
                      ),
                    ),
                  ],
                ),
              );
            }

            if (planFoodState is LoadedPlanFoods) {
              final planFoods =
                  planFoodState.planFoods
                      .where((pf) => pf.nutritionPlanId == plan.id)
                      .toList();

              if (planFoods.isEmpty) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.restaurant_outlined, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        'Chưa có món ăn trong kế hoạch này',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                );
              }

              return Column(
                children:
                    planFoods.map((planFood) {
                      final food = planFoodState.foods?[planFood.foodId];
                      return _buildFoodItem(context, food, planFood);
                    }).toList(),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  Widget _buildFoodItem(BuildContext context, Food? food, PlanFood planFood) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          // Food image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:
                food?.foodImage.isNotEmpty == true
                    ? Image.network(
                      food!.foodImage,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, error, stackTrace) => Container(
                            width: 50,
                            height: 50,
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.broken_image,
                              color: Colors.grey,
                            ),
                          ),
                    )
                    : Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey[200],
                      child: Icon(Icons.fastfood, color: Colors.grey[500]),
                    ),
          ),
          const SizedBox(width: 12),

          // Food details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food?.name ?? 'Không xác định',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                if (food?.foodType.isNotEmpty == true)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      // ignore: deprecated_member_use
                      ).colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      food!.foodType,
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      size: 14,
                      color: Colors.orange[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${food?.calories ?? 0} kcal',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                if (food?.description.isNotEmpty == true) ...[
                  const SizedBox(height: 4),
                  Text(
                    food!.description,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restaurant_outlined, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'Chưa có kế hoạch dinh dưỡng',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tạo kế hoạch dinh dưỡng đầu tiên cho vận động viên',
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
          const SizedBox(height: 16),
          Text(
            'Đã xảy ra lỗi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: TextStyle(fontSize: 14, color: Colors.red[600]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
