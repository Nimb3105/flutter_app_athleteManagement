import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/models/converters/converters.dart';

part 'coach_athlete.freezed.dart';
part 'coach_athlete.g.dart';

@freezed
abstract class CoachAthlete with _$CoachAthlete {
  const factory CoachAthlete({
    required String? id,
    required String coachId,
    required String athleteId,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _CoachAthlete;

  factory CoachAthlete.fromJson(Map<String, dynamic> json) =>
      _$CoachAthleteFromJson(json);
}