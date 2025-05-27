import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
abstract class Reminder with _$Reminder {
  const factory Reminder({
    required String? id,
    required String? userId,
    required String? scheduleId,
    required String? nutritionPlanId,
    @UtcDateTimeConverter() required DateTime reminderTime,
    @UtcDateTimeConverter() required DateTime reminderDate,
    required String content,
    required String status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}
