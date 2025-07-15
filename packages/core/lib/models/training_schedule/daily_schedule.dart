import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_schedule.freezed.dart';
part 'daily_schedule.g.dart';

@freezed
abstract class DailySchedule with _$DailySchedule {
  const factory DailySchedule({
    required String? id,
    required String userId,
    required String name,
    required String sportId,
    required String createdBy,
    @Default([]) List<TrainingSchedule> trainingSchedules,
    @UtcDateTimeConverter() required DateTime? startDate,
    @UtcDateTimeConverter() required DateTime? endDate,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _DailySchedule;

    factory DailySchedule.empty() => DailySchedule(
        id: null,
        userId: '',
        name: '',
        sportId: '',
        trainingSchedules: const [],
        startDate: null,
        endDate: null,
        createdAt: null,
        updatedAt: null,
        createdBy: '', // Thêm trường createdBy
      );


  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleFromJson(json);
}
