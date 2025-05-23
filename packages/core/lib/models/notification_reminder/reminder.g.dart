// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reminder _$ReminderFromJson(Map<String, dynamic> json) => _Reminder(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  scheduleId: json['scheduleId'] as String?,
  nutritionPlanId: json['nutritionPlanId'] as String?,
  reminderTime: const UtcDateTimeConverter().fromJson(
    json['reminderTime'] as String,
  ),
  reminderDate: const UtcDateTimeConverter().fromJson(
    json['reminderDate'] as String,
  ),
  content: json['content'] as String,
  status: json['status'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$ReminderToJson(_Reminder instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'scheduleId': instance.scheduleId,
  'nutritionPlanId': instance.nutritionPlanId,
  'reminderTime': const UtcDateTimeConverter().toJson(instance.reminderTime),
  'reminderDate': const UtcDateTimeConverter().toJson(instance.reminderDate),
  'content': instance.content,
  'status': instance.status,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
