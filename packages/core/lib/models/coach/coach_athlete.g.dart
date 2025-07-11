// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoachAthlete _$CoachAthleteFromJson(Map<String, dynamic> json) =>
    _CoachAthlete(
      id: json['id'] as String?,
      coachId: json['coachId'] as String,
      athleteId: json['athleteId'] as String,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
        json['createdAt'],
        const UtcDateTimeConverter().fromJson,
      ),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
        json['updatedAt'],
        const UtcDateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$CoachAthleteToJson(_CoachAthlete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coachId': instance.coachId,
      'athleteId': instance.athleteId,
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
