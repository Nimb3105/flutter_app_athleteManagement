import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_schedule_user.freezed.dart';
part 'training_schedule_user.g.dart';

@freezed
abstract class TrainingScheduleUser with _$TrainingScheduleUser {
  const factory TrainingScheduleUser({
    required String? id,
    required String scheduleId,
    required String userId,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _TrainingScheduleUser;

  factory TrainingScheduleUser.fromJson(Map<String, dynamic> json) =>
      _$TrainingScheduleUserFromJson(json);
}
