// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Exercise _$ExerciseFromJson(Map<String, dynamic> json) => _Exercise(
  id: json['id'] as String?,
  name: json['name'] as String,
  bodyPart: json['bodyPart'] as String,
  target: json['target'] as String,
  secondaryMuscles:
      (json['secondaryMuscles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  instructions:
      (json['instructions'] as List<dynamic>).map((e) => e as String).toList(),
  equipment: json['equipment'] as String,
  gifUrl: json['gifUrl'] as String,
  sportId: json['sportId'] as String,
  unitType: json['unitType'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$ExerciseToJson(_Exercise instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'bodyPart': instance.bodyPart,
  'target': instance.target,
  'secondaryMuscles': instance.secondaryMuscles,
  'instructions': instance.instructions,
  'equipment': instance.equipment,
  'gifUrl': instance.gifUrl,
  'sportId': instance.sportId,
  'unitType': instance.unitType,
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
