// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingExercise _$TrainingExerciseFromJson(Map<String, dynamic> json) =>
    _TrainingExercise(
      id: json['id'] as String?,
      scheduleId: json['scheduleId'] as String?,
      exerciseId: json['exerciseId'] as String,
      order: (json['order'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      sets: (json['sets'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toInt(),
      distance: (json['distance'] as num).toDouble(),
      actualReps: (json['actualReps'] as num).toInt(),
      actualSets: (json['actualSets'] as num).toInt(),
      actualWeight: (json['actualWeight'] as num).toDouble(),
      actualDuration: (json['actualDuration'] as num).toInt(),
      actualDistance: (json['actualDistance'] as num).toDouble(),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
        json['createdAt'],
        const UtcDateTimeConverter().fromJson,
      ),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
        json['updatedAt'],
        const UtcDateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$TrainingExerciseToJson(_TrainingExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'exerciseId': instance.exerciseId,
      'order': instance.order,
      'reps': instance.reps,
      'sets': instance.sets,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'actualReps': instance.actualReps,
      'actualSets': instance.actualSets,
      'actualWeight': instance.actualWeight,
      'actualDuration': instance.actualDuration,
      'actualDistance': instance.actualDistance,
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
