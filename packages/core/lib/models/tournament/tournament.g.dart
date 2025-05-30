// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tournament _$TournamentFromJson(Map<String, dynamic> json) => _Tournament(
  id: json['id'] as String?,
  location: json['location'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  organizer: json['organizer'] as String,
  level: json['level'] as String,
  startDate: const UtcDateTimeConverter().fromJson(json['startDate'] as String),
  endDate: const UtcDateTimeConverter().fromJson(json['endDate'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$TournamentToJson(_Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'name': instance.name,
      'description': instance.description,
      'organizer': instance.organizer,
      'level': instance.level,
      'startDate': const UtcDateTimeConverter().toJson(instance.startDate),
      'endDate': const UtcDateTimeConverter().toJson(instance.endDate),
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
