import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    required String? id,
    required String name,
    required String bodyPart,
    required String target,
    required List<String> secondaryMuscles,
    required List<String> instructions,
    required String equipment,
    required String gifUrl,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
