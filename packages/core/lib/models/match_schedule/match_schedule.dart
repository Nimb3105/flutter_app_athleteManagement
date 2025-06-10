import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_schedule.freezed.dart';
part 'match_schedule.g.dart';

@freezed
abstract class MatchSchedule with _$MatchSchedule {
  const factory MatchSchedule({
    required String? id,
    required String tournamentId,
    required String location,
    required String opponent,
    required String matchType,
    required String status,
    required String round,
    required String score,
    required String notes,
    @UtcDateTimeConverter() required DateTime date,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _MatchSchedule;

  factory MatchSchedule.fromJson(Map<String, dynamic> json) =>
      _$MatchScheduleFromJson(json);
}
