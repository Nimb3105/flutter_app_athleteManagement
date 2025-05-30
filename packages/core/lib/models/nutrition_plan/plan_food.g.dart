// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanFood _$PlanFoodFromJson(Map<String, dynamic> json) => _PlanFood(
  id: json['id'] as String?,
  foodId: json['foodId'] as String,
  nutritionPlanId: json['nutritionPlanId'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$PlanFoodToJson(_PlanFood instance) => <String, dynamic>{
  'id': instance.id,
  'foodId': instance.foodId,
  'nutritionPlanId': instance.nutritionPlanId,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
