import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health.freezed.dart';
part 'health.g.dart';

@freezed
abstract class Health with _$Health {
  const factory Health({
    required String? id,
    required String userId,
    required double height,
    required double weight,
    required double bmi,
    required String bloodType,
    @UtcDateTimeConverter() required DateTime date,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Health;

  factory Health.fromJson(Map<String, dynamic> json) => _$HealthFromJson(json);
}
