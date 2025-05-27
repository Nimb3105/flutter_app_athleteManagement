import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';

@freezed
abstract class Coach with _$Coach {
  const factory Coach({
    required String? id,
    required String userId,
    required String experience,
    required String specialization,
    required String level,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}
