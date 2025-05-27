import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete.freezed.dart';
part 'athlete.g.dart';

@freezed
abstract class Athlete with _$Athlete {
  const factory Athlete({
    required String? id,
    required String userId,
    required String athleteType,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Athlete;

  factory Athlete.fromJson(Map<String, dynamic> json) =>
      _$AthleteFromJson(json);
}
