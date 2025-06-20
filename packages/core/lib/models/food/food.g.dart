// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Food _$FoodFromJson(Map<String, dynamic> json) => _Food(
  id: json['id'] as String?,
  name: json['name'] as String,
  foodType: json['foodType'] as String,
  foodImage: json['foodImage'] as String,
  description: json['description'] as String,
  calories: (json['calories'] as num).toInt(),
  protein: (json['protein'] as num).toInt(),
  carbs: (json['carbs'] as num).toInt(),
  fat: (json['fat'] as num).toInt(),
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$FoodToJson(_Food instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'foodType': instance.foodType,
  'foodImage': instance.foodImage,
  'description': instance.description,
  'calories': instance.calories,
  'protein': instance.protein,
  'carbs': instance.carbs,
  'fat': instance.fat,
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
