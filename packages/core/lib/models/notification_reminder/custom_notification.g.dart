// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomNotification _$CustomNotificationFromJson(
  Map<String, dynamic> json,
) => _CustomNotification(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  scheduleId: json['scheduleId'] as String?,
  nutritionPlanId: json['nutritionPlanId'] as String?,
  sentDate: const UtcDateTimeConverter().fromJson(json['sentDate'] as String),
  status: json['status'] as String,
  type: json['type'] as String,
  content: json['content'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$CustomNotificationToJson(_CustomNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'scheduleId': instance.scheduleId,
      'nutritionPlanId': instance.nutritionPlanId,
      'sentDate': const UtcDateTimeConverter().toJson(instance.sentDate),
      'status': instance.status,
      'type': instance.type,
      'content': instance.content,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
