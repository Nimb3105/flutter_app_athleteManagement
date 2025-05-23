// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Athlete _$AthleteFromJson(Map<String, dynamic> json) => _Athlete(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  athleteType: json['athleteType'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$AthleteToJson(_Athlete instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'athleteType': instance.athleteType,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
