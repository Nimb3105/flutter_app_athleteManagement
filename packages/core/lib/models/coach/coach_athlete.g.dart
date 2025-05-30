// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoachAthlete _$CoachAthleteFromJson(
  Map<String, dynamic> json,
) => _CoachAthlete(
  id: json['id'] as String?,
  coachId: json['coachId'] as String,
  athleteId: json['athleteId'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$CoachAthleteToJson(_CoachAthlete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coachId': instance.coachId,
      'athleteId': instance.athleteId,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
