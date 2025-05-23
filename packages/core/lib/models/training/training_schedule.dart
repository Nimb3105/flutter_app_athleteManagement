

import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_schedule.freezed.dart';
part 'training_schedule.g.dart';

@freezed
abstract class TrainingSchedule with _$TrainingSchedule {
  const factory TrainingSchedule({
    required String? id,
    @UtcDateTimeConverter() required DateTime date,
    @UtcDateTimeConverter() required DateTime startTime,
    @UtcDateTimeConverter() required DateTime endTime,
    required String status,
    required String location,
    required String type,
    required String notes,
    required String createdBy,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _TrainingSchedule;

  factory TrainingSchedule.fromJson(Map<String, dynamic> json) =>
      _$TrainingScheduleFromJson(json);
}
