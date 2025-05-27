// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sport _$SportFromJson(Map<String, dynamic> json) => _Sport(
  id: json['id'] as String?,
  name: json['name'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$SportToJson(_Sport instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'createdAt': _$JsonConverterToJson<String, DateTime>(
    instance.createdAt,
    const UtcDateTimeConverter().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.updatedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
