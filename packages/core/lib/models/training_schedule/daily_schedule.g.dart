// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailySchedule _$DailyScheduleFromJson(Map<String, dynamic> json) =>
    _DailySchedule(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      name: json['name'] as String,
      sportId: json['sportId'] as String,
      trainingSchedules:
          (json['trainingSchedules'] as List<dynamic>?)
              ?.map((e) => TrainingSchedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      startDate: _$JsonConverterFromJson<String, DateTime>(
        json['startDate'],
        const UtcDateTimeConverter().fromJson,
      ),
      endDate: _$JsonConverterFromJson<String, DateTime>(
        json['endDate'],
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

Map<String, dynamic> _$DailyScheduleToJson(_DailySchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'sportId': instance.sportId,
      'trainingSchedules': instance.trainingSchedules,
      'startDate': _$JsonConverterToJson<String, DateTime>(
        instance.startDate,
        const UtcDateTimeConverter().toJson,
      ),
      'endDate': _$JsonConverterToJson<String, DateTime>(
        instance.endDate,
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
