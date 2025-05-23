// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coach _$CoachFromJson(Map<String, dynamic> json) => _Coach(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  experience: json['experience'] as String,
  specialization: json['specialization'] as String,
  level: json['level'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$CoachToJson(_Coach instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'experience': instance.experience,
  'specialization': instance.specialization,
  'level': instance.level,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
