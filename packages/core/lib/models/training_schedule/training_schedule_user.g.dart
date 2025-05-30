// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_schedule_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingScheduleUser _$TrainingScheduleUserFromJson(
  Map<String, dynamic> json,
) => _TrainingScheduleUser(
  id: json['id'] as String?,
  scheduleId: json['scheduleId'] as String,
  userId: json['userId'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$TrainingScheduleUserToJson(
  _TrainingScheduleUser instance,
) => <String, dynamic>{
  'id': instance.id,
  'scheduleId': instance.scheduleId,
  'userId': instance.userId,
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
