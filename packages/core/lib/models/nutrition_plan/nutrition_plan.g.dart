// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NutritionPlan _$NutritionPlanFromJson(
  Map<String, dynamic> json,
) => _NutritionPlan(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String,
  userId: json['userId'] as String,
  createBy: json['createBy'] as String,
  totalCalories: (json['totalCalories'] as num).toInt(),
  mealCount: (json['mealCount'] as num).toInt(),
  mealType: json['mealType'] as String,
  foodIds:
      (json['foodIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  mealTime: const UtcDateTimeConverter().fromJson(json['mealTime'] as String),
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$NutritionPlanToJson(_NutritionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'userId': instance.userId,
      'createBy': instance.createBy,
      'totalCalories': instance.totalCalories,
      'mealCount': instance.mealCount,
      'mealType': instance.mealType,
      'foodIds': instance.foodIds,
      'mealTime': const UtcDateTimeConverter().toJson(instance.mealTime),
      'createdAt': _$JsonConverterToJson<String, DateTime>(
        instance.createdAt,
        const UtcDateTimeConverter().toJson,
      ),
      'updatedAt': _$JsonConverterToJson<String, DateTime>(
        instance.updatedAt,
        const UtcDateTimeConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
