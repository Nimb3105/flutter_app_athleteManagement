// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SportAthlete _$SportAthleteFromJson(
  Map<String, dynamic> json,
) => _SportAthlete(
  id: json['id'] as String?,
  sportId: json['sportId'] as String,
  userId: json['userId'] as String,
  position: json['position'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$SportAthleteToJson(_SportAthlete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sportId': instance.sportId,
      'userId': instance.userId,
      'position': instance.position,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
