  // Trong file chung, ví dụ: converters.dart
  import 'package:freezed_annotation/freezed_annotation.dart';

  class UtcDateTimeConverter implements JsonConverter<DateTime, String> {
    const UtcDateTimeConverter();

    @override
    DateTime fromJson(String json) => DateTime.parse(json).toLocal();

    @override
    String toJson(DateTime object) => object.toUtc().toIso8601String();
  }
