// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
  id: json['id'] as String?,
  sportId: json['sportId'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  createdBy: json['createdBy'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
  'id': instance.id,
  'sportId': instance.sportId,
  'name': instance.name,
  'description': instance.description,
  'createdBy': instance.createdBy,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
