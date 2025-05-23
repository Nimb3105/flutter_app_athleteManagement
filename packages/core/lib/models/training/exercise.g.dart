// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Exercise _$ExerciseFromJson(Map<String, dynamic> json) => _Exercise(
  id: json['id'] as String?,
  name: json['name'] as String,
  type: json['type'] as String,
  intensity: json['intensity'] as String,
  duration: (json['duration'] as num).toInt(),
  description: json['description'] as String,
  equipment: json['equipment'] as String,
  muscle: json['muscle'] as String,
  mediaUrl: json['mediaUrl'] as String,
  createdDate: _$JsonConverterFromJson<String, DateTime>(
    json['createdDate'],
    const UtcDateTimeConverter().fromJson,
  ),
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
  'type': instance.type,
  'intensity': instance.intensity,
  'duration': instance.duration,
  'description': instance.description,
  'equipment': instance.equipment,
  'muscle': instance.muscle,
  'mediaUrl': instance.mediaUrl,
  'createdDate': _$JsonConverterToJson<String, DateTime>(
    instance.createdDate,
    const UtcDateTimeConverter().toJson,
  ),
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
