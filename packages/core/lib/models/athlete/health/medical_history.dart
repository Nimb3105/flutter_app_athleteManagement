import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_history.freezed.dart';
part 'medical_history.g.dart';

@freezed
abstract class MedicalHistory with _$MedicalHistory {
  const factory MedicalHistory({
    required String? id,
    required String healthId,
    // required String condition,
    // required String treatment,
    required String description,
    @UtcDateTimeConverter() required DateTime date,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _MedicalHistory;

  factory MedicalHistory.fromJson(Map<String, dynamic> json) =>
      _$MedicalHistoryFromJson(json);
}