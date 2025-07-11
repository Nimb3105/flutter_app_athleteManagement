// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String?,
  sportId: json['sportId'] as String,
  gender: json['gender'] as String,
  fullName: json['fullName'] as String,
  imageUrl: json['imageUrl'] as String,
  password: json['password'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  dateOfBirth: const UtcDateTimeConverter().fromJson(
    json['dateOfBirth'] as String,
  ),
  role: json['role'] as String,
  status: json['status'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'sportId': instance.sportId,
  'gender': instance.gender,
  'fullName': instance.fullName,
  'imageUrl': instance.imageUrl,
  'password': instance.password,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'dateOfBirth': const UtcDateTimeConverter().toJson(instance.dateOfBirth),
  'role': instance.role,
  'status': instance.status,
  'createdAt': _$JsonConverterToJson<String, DateTime>(
    instance.createdAt,
    const UtcDateTimeConverter().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.updatedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
