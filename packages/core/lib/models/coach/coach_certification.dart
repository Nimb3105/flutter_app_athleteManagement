import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_certification.freezed.dart';
part 'coach_certification.g.dart';

@freezed
abstract class CoachCertification with _$CoachCertification {
  const factory CoachCertification({
    required String? id,
    required String userId,
    required String name,
    @UtcDateTimeConverter() required DateTime dateIssued,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _CoachCertification;

  factory CoachCertification.fromJson(Map<String, dynamic> json) =>
      _$CoachCertificationFromJson(json);
}