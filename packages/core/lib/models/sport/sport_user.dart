import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_user.freezed.dart';
part 'sport_user.g.dart';

@freezed
abstract class SportUser with _$SportUser {
  const factory SportUser({
    required String? id,
    required String sportId,
    required String userId,
    required String position,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _SportUser;

  factory SportUser.fromJson(Map<String, dynamic> json) =>
      _$SportUserFromJson(json);
}
