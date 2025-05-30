// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainingExercise _$TrainingExerciseFromJson(Map<String, dynamic> json) =>
    _TrainingExercise(
      id: json['id'] as String?,
      scheduleId: json['scheduleId'] as String,
      exerciseId: json['exerciseId'] as String,
      order: (json['order'] as num).toInt(),
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
