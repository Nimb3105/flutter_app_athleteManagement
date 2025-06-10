import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament.freezed.dart';
part 'tournament.g.dart';

@freezed
abstract class Tournament with _$Tournament {
  const factory Tournament({
    required String? id,
    required String location,
    required String name,
    required String description,
    required String organizer,
    required String level,
    @UtcDateTimeConverter() required DateTime startDate,
    @UtcDateTimeConverter() required DateTime endDate,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}
