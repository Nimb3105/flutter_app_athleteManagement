// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingSchedule _$TrainingScheduleFromJson(Map<String, dynamic> json) =>
    _TrainingSchedule(
      id: json['id'] as String?,
      date: const UtcDateTimeConverter().fromJson(json['date'] as String),
      startTime: const UtcDateTimeConverter().fromJson(
        json['startTime'] as String,
      ),
      endTime: const UtcDateTimeConverter().fromJson(json['endTime'] as String),
      status: json['status'] as String,
      location: json['location'] as String,
      type: json['type'] as String,
      notes: json['notes'] as String,
      createdBy: json['createdBy'] as String,
      progress: (json['progress'] as num?)?.toDouble(),
      dailyScheduleId: json['dailyScheduleId'] as String?,
      sportId: json['sportId'] as String,
      trainingExercises:
          (json['trainingExercises'] as List<dynamic>?)
              ?.map((e) => TrainingExercise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: _$JsonConverterFromJson<String, DateTime>(
        json['createdAt'],
        const UtcDateTimeConverter().fromJson,
      ),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
        json['updatedAt'],
        const UtcDateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$TrainingScheduleToJson(_TrainingSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': const UtcDateTimeConverter().toJson(instance.date),
      'startTime': const UtcDateTimeConverter().toJson(instance.startTime),
      'endTime': const UtcDateTimeConverter().toJson(instance.endTime),
      'status': instance.status,
      'location': instance.location,
      'type': instance.type,
      'notes': instance.notes,
      'createdBy': instance.createdBy,
      'progress': instance.progress,
      'dailyScheduleId': instance.dailyScheduleId,
      'sportId': instance.sportId,
      'trainingExercises': instance.trainingExercises,
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
