// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Progress _$ProgressFromJson(Map<String, dynamic> json) => _Progress(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  metricType: json['metricType'] as String,
  value: (json['value'] as num).toDouble(),
  date: const UtcDateTimeConverter().fromJson(json['date'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProgressToJson(_Progress instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'metricType': instance.metricType,
  'value': instance.value,
  'date': const UtcDateTimeConverter().toJson(instance.date),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
