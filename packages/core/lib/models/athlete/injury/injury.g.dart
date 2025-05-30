// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injury.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Injury _$InjuryFromJson(Map<String, dynamic> json) => _Injury(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  type: json['type'] as String,
  severity: json['severity'] as String,
  locationOnBody: json['locationOnBody'] as String,
  causeOfInjury: json['causeOfInjury'] as String,
  status: json['status'] as String,
  date: const UtcDateTimeConverter().fromJson(json['date'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$InjuryToJson(_Injury instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'type': instance.type,
  'severity': instance.severity,
  'locationOnBody': instance.locationOnBody,
  'causeOfInjury': instance.causeOfInjury,
  'status': instance.status,
  'date': const UtcDateTimeConverter().toJson(instance.date),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
