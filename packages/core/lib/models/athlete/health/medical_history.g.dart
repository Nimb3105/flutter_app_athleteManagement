// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalHistory _$MedicalHistoryFromJson(
  Map<String, dynamic> json,
) => _MedicalHistory(
  id: json['id'] as String?,
  healthId: json['healthId'] as String,
  description: json['description'] as String,
  date: const UtcDateTimeConverter().fromJson(json['date'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$MedicalHistoryToJson(_MedicalHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'healthId': instance.healthId,
      'description': instance.description,
      'date': const UtcDateTimeConverter().toJson(instance.date),
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
