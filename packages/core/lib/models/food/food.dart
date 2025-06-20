import 'package:core/models/converters/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
abstract class Food with _$Food {
  const factory Food({
    required String? id,
    required String name,
    required String foodType,
    required String foodImage,
    required String description,
    required int calories,
    required int protein,
    required int carbs,
    required int fat,
    @UtcDateTimeConverter() required DateTime? createdAt,
    @UtcDateTimeConverter() required DateTime? updatedAt,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
