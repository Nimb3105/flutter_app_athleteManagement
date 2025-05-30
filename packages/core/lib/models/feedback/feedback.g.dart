// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feedback _$FeedbackFromJson(Map<String, dynamic> json) => _Feedback(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  scheduleId: json['scheduleId'] as String,
  content: json['content'] as String,
  date: const UtcDateTimeConverter().fromJson(json['date'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$FeedbackToJson(_Feedback instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'scheduleId': instance.scheduleId,
  'content': instance.content,
  'date': const UtcDateTimeConverter().toJson(instance.date),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
