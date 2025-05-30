// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Health _$HealthFromJson(Map<String, dynamic> json) => _Health(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  height: (json['height'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
  bmi: (json['bmi'] as num).toDouble(),
  bloodType: json['bloodType'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$HealthToJson(_Health instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'height': instance.height,
  'weight': instance.weight,
  'bmi': instance.bmi,
  'bloodType': instance.bloodType,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
