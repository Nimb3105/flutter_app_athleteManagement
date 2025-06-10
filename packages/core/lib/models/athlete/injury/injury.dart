import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'injury.freezed.dart';
part 'injury.g.dart';

@freezed
abstract class Injury with _$Injury {
  const factory Injury({
    required String? id,
    required String userId,
    required String type,
    required String severity,
    required String locationOnBody,
    required String causeOfInjury,
    required String status,
    @UtcDateTimeConverter() required DateTime date,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Injury;

  factory Injury.fromJson(Map<String, dynamic> json) => _$InjuryFromJson(json);
}
