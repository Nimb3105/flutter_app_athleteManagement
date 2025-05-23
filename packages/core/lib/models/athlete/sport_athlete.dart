

import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_athlete.freezed.dart';
part 'sport_athlete.g.dart';

@freezed
abstract class SportAthlete with _$SportAthlete {
  const factory SportAthlete({
    required String? id,
    required String sportId,
    required String userId,
    required String position,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _SportAthlete;

  factory SportAthlete.fromJson(Map<String, dynamic> json) =>
      _$SportAthleteFromJson(json);
}
