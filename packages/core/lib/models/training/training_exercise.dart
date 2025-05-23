

import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_exercise.freezed.dart';
part 'training_exercise.g.dart';

@freezed
abstract class TrainingExercise with _$TrainingExercise {
  const factory TrainingExercise({
    required String? id,
    required String scheduleId,
    required String exerciseId,
    required int order,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _TrainingExercise;

  factory TrainingExercise.fromJson(Map<String, dynamic> json) =>
      _$TrainingExerciseFromJson(json);
}
