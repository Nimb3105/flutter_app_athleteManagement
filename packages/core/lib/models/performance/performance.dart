import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance.freezed.dart';
part 'performance.g.dart';

@freezed
abstract class Performance with _$Performance {
  const factory Performance({
    required String? id,
    required String userId,
    required String scheduleId,
    required double value,
    required String metricType,
    required String notes,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Performance;

  factory Performance.fromJson(Map<String, dynamic> json) =>
      _$PerformanceFromJson(json);
}