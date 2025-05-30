import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/models/converters/converters.dart';

part 'plan_food.freezed.dart';
part 'plan_food.g.dart';

@freezed
abstract class PlanFood with _$PlanFood {
  const factory PlanFood({
    required String? id,
    required String foodId,
    required String nutritionPlanId,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _PlanFood;

  factory PlanFood.fromJson(Map<String, dynamic> json) =>
      _$PlanFoodFromJson(json);
}