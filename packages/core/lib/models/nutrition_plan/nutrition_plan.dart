import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/models/converters/converters.dart';

part 'nutrition_plan.freezed.dart';
part 'nutrition_plan.g.dart';

@freezed
abstract class NutritionPlan with _$NutritionPlan {
  const factory NutritionPlan({
    required String? id,
    required String name,
    required String description,
    required String userId,
    required String createBy,
    required int totalCalories,
    required int mealCount,
    required String mealType,
    @UtcDateTimeConverter() required DateTime mealTime,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _NutritionPlan;

  factory NutritionPlan.fromJson(Map<String, dynamic> json) =>
      _$NutritionPlanFromJson(json);
}
