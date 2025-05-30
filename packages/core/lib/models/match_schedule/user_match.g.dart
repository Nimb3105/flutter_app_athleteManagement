// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserMatch _$UserMatchFromJson(Map<String, dynamic> json) => _UserMatch(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  matchId: json['matchId'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserMatchToJson(_UserMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'matchId': instance.matchId,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
