// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String?,
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
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'gender': instance.gender,
  'fullName': instance.fullName,
  'imageUrl': instance.imageUrl,
  'password': instance.password,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'dateOfBirth': const UtcDateTimeConverter().toJson(instance.dateOfBirth),
  'role': instance.role,
  'status': instance.status,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
