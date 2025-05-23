

import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String? id,
    required String gender,
    required String fullName,
    required String hashPass,
    required String email,
    required String phoneNumber,
    @UtcDateTimeConverter() required DateTime dateOfBirth,
    required String role,
    required String status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt, 
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
