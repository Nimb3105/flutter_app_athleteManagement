import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_notification.freezed.dart';
part 'custom_notification.g.dart';

@freezed
abstract class CustomNotification with _$CustomNotification {
  const factory CustomNotification({
    required String? id,
    required String? userId,
    required String? scheduleId,
    required String? nutritionPlanId,
    @UtcDateTimeConverter() required DateTime sentDate,
    required String status,
    required String type,
    required String content,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _CustomNotification;

  factory CustomNotification.fromJson(Map<String, dynamic> json) =>
      _$CustomNotificationFromJson(json);
}
