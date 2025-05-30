// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Performance {

 String? get id; String get userId; String get scheduleId; double get value; String get metricType; String get notes;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceCopyWith<Performance> get copyWith => _$PerformanceCopyWithImpl<Performance>(this as Performance, _$identity);

  /// Serializes this Performance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.value, value) || other.value == value)&&(identical(other.metricType, metricType) || other.metricType == metricType)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,value,metricType,notes,createdAt,updatedAt);

@override
String toString() {
  return 'Performance(id: $id, userId: $userId, scheduleId: $scheduleId, value: $value, metricType: $metricType, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PerformanceCopyWith<$Res>  {
  factory $PerformanceCopyWith(Performance value, $Res Function(Performance) _then) = _$PerformanceCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String scheduleId, double value, String metricType, String notes,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$PerformanceCopyWithImpl<$Res>
    implements $PerformanceCopyWith<$Res> {
  _$PerformanceCopyWithImpl(this._self, this._then);

  final Performance _self;
  final $Res Function(Performance) _then;

/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? scheduleId = null,Object? value = null,Object? metricType = null,Object? notes = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,metricType: null == metricType ? _self.metricType : metricType // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Performance implements Performance {
  const _Performance({required this.id, required this.userId, required this.scheduleId, required this.value, required this.metricType, required this.notes, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _Performance.fromJson(Map<String, dynamic> json) => _$PerformanceFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String scheduleId;
@override final  double value;
@override final  String metricType;
@override final  String notes;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceCopyWith<_Performance> get copyWith => __$PerformanceCopyWithImpl<_Performance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerformanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Performance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.value, value) || other.value == value)&&(identical(other.metricType, metricType) || other.metricType == metricType)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,value,metricType,notes,createdAt,updatedAt);

@override
String toString() {
  return 'Performance(id: $id, userId: $userId, scheduleId: $scheduleId, value: $value, metricType: $metricType, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PerformanceCopyWith<$Res> implements $PerformanceCopyWith<$Res> {
  factory _$PerformanceCopyWith(_Performance value, $Res Function(_Performance) _then) = __$PerformanceCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String scheduleId, double value, String metricType, String notes,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$PerformanceCopyWithImpl<$Res>
    implements _$PerformanceCopyWith<$Res> {
  __$PerformanceCopyWithImpl(this._self, this._then);

  final _Performance _self;
  final $Res Function(_Performance) _then;

/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? scheduleId = null,Object? value = null,Object? metricType = null,Object? notes = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Performance(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,metricType: null == metricType ? _self.metricType : metricType // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
