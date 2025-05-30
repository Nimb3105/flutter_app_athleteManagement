// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchSchedule _$MatchScheduleFromJson(
  Map<String, dynamic> json,
) => _MatchSchedule(
  id: json['id'] as String?,
  tournamentId: json['tournamentId'] as String,
  location: json['location'] as String,
  opponent: json['opponent'] as String,
  matchType: json['matchType'] as String,
  status: json['status'] as String,
  round: json['round'] as String,
  score: json['score'] as String,
  notes: json['notes'] as String,
  date: const UtcDateTimeConverter().fromJson(json['date'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$MatchScheduleToJson(_MatchSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tournamentId': instance.tournamentId,
      'location': instance.location,
      'opponent': instance.opponent,
      'matchType': instance.matchType,
      'status': instance.status,
      'round': instance.round,
      'score': instance.score,
      'notes': instance.notes,
      'date': const UtcDateTimeConverter().toJson(instance.date),
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
