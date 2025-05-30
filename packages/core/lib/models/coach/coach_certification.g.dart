// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_certification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoachCertification _$CoachCertificationFromJson(
  Map<String, dynamic> json,
) => _CoachCertification(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  name: json['name'] as String,
  dateIssued: const UtcDateTimeConverter().fromJson(
    json['dateIssued'] as String,
  ),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$CoachCertificationToJson(_CoachCertification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'dateIssued': const UtcDateTimeConverter().toJson(instance.dateIssued),
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
