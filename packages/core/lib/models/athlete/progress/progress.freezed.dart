// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Progress {

 String? get id; String get userId; String get metricType; double get value;@UtcDateTimeConverter() DateTime get date;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgressCopyWith<Progress> get copyWith => _$ProgressCopyWithImpl<Progress>(this as Progress, _$identity);

  /// Serializes this Progress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metricType, metricType) || other.metricType == metricType)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,metricType,value,date,createdAt,updatedAt);

@override
String toString() {
  return 'Progress(id: $id, userId: $userId, metricType: $metricType, value: $value, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProgressCopyWith<$Res>  {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) _then) = _$ProgressCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String metricType, double value,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$ProgressCopyWithImpl<$Res>
    implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._self, this._then);

  final Progress _self;
  final $Res Function(Progress) _then;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? metricType = null,Object? value = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,metricType: null == metricType ? _self.metricType : metricType // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Progress implements Progress {
  const _Progress({required this.id, required this.userId, required this.metricType, required this.value, @UtcDateTimeConverter() required this.date, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _Progress.fromJson(Map<String, dynamic> json) => _$ProgressFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String metricType;
@override final  double value;
@override@UtcDateTimeConverter() final  DateTime date;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressCopyWith<_Progress> get copyWith => __$ProgressCopyWithImpl<_Progress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Progress&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metricType, metricType) || other.metricType == metricType)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,metricType,value,date,createdAt,updatedAt);

@override
String toString() {
  return 'Progress(id: $id, userId: $userId, metricType: $metricType, value: $value, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProgressCopyWith<$Res> implements $ProgressCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) _then) = __$ProgressCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String metricType, double value,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$ProgressCopyWithImpl<$Res>
    implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(this._self, this._then);

  final _Progress _self;
  final $Res Function(_Progress) _then;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? metricType = null,Object? value = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Progress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,metricType: null == metricType ? _self.metricType : metricType // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
