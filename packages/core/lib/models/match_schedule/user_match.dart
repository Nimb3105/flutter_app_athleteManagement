import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_match.freezed.dart';
part 'user_match.g.dart';

@freezed
abstract class UserMatch with _$UserMatch {
  const factory UserMatch({
    required String? id,
    required String userId,
    required String matchId,
    //required String teamId,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _UserMatch;

  factory UserMatch.fromJson(Map<String, dynamic> json) =>
      _$UserMatchFromJson(json);
}
