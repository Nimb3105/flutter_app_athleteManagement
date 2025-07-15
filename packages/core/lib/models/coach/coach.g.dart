// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coach _$CoachFromJson(Map<String, dynamic> json) => _Coach(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  experience: json['experience'] as String,
  level: json['level'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$CoachToJson(_Coach instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'experience': instance.experience,
  'level': instance.level,
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
