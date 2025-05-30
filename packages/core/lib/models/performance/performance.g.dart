// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Performance _$PerformanceFromJson(Map<String, dynamic> json) => _Performance(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  scheduleId: json['scheduleId'] as String,
  value: (json['value'] as num).toDouble(),
  metricType: json['metricType'] as String,
  notes: json['notes'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$PerformanceToJson(_Performance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'scheduleId': instance.scheduleId,
      'value': instance.value,
      'metricType': instance.metricType,
      'notes': instance.notes,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
