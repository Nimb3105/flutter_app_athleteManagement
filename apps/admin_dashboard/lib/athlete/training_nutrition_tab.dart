import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrainingNutritionTab extends StatelessWidget {
  final String athleteId;
  const TrainingNutritionTab({super.key, required this.athleteId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildDailyScheduleSection(),
          const SizedBox(height: 24),
          //_buildNutritionPlanSection(),
        ],
      ),
    );
  }

  Widget _buildDailyScheduleSection() {
    return BlocBuilder<DailyScheduleBloc, DailyScheduleState>(
      builder: (context, state) {
        if (state is DailySchedule_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is LoadedDailySchedule) {
          final schedule = state.dailySchedule;
          if (schedule.id == null) {
            return const Card(
              child: ListTile(title: Text("Không có lịch tập hàng ngày.")),
            );
          }

          return Card(
            elevation: 2,
            child: ExpansionTile(
              title: Text("Lịch tập hàng ngày: ${schedule.name}"),
              subtitle: Text(
                "Từ ${DateFormat('dd/MM').format(schedule.startDate!.toLocal())} đến ${DateFormat('dd/MM/yyyy').format(schedule.endDate!.toLocal())}",
              ),
              initiallyExpanded: true,
              children: [
                const ListTile(title: Text("Chi tiết các buổi tập...")),
              ],
            ),
          );
        }
        return const Text("Không có lịch tập hàng ngày.");
      },
    );
  }

  // ignore: unused_element
  Widget _buildNutritionPlanSection() {
    return BlocBuilder<NutritionPlanBloc, NutritionPlanState>(
      builder: (context, state) {
        if (state is NutritionPlan_Loading) return const SizedBox.shrink();
        if (state is LoadedNutritionPlans && state.nutritionPlans.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              title: const Text("Kế hoạch dinh dưỡng"),
              initiallyExpanded: true,
              children:
                  state.nutritionPlans.map((plan) {
                    return ListTile(
                      title: Text(plan.name),
                      subtitle: Text(
                        "${plan.mealType} - ${plan.totalCalories} calories",
                      ),
                    );
                  }).toList(),
            ),
          );
        }
        return const Card(
          child: ListTile(title: Text("Không có kế hoạch dinh dưỡng.")),
        );
      },
    );
  }
}
