// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainingExercise {

 String? get id; String get scheduleId; String get exerciseId; int get order;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of TrainingExercise
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingExerciseCopyWith<TrainingExercise> get copyWith => _$TrainingExerciseCopyWithImpl<TrainingExercise>(this as TrainingExercise, _$identity);

  /// Serializes this TrainingExercise to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,exerciseId,order,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingExercise(id: $id, scheduleId: $scheduleId, exerciseId: $exerciseId, order: $order, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TrainingExerciseCopyWith<$Res>  {
  factory $TrainingExerciseCopyWith(TrainingExercise value, $Res Function(TrainingExercise) _then) = _$TrainingExerciseCopyWithImpl;
@useResult
$Res call({
 String? id, String scheduleId, String exerciseId, int order,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$TrainingExerciseCopyWithImpl<$Res>
    implements $TrainingExerciseCopyWith<$Res> {
  _$TrainingExerciseCopyWithImpl(this._self, this._then);

  final TrainingExercise _self;
  final $Res Function(TrainingExercise) _then;

/// Create a copy of TrainingExercise
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? scheduleId = null,Object? exerciseId = null,Object? order = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TrainingExercise implements TrainingExercise {
  const _TrainingExercise({required this.id, required this.scheduleId, required this.exerciseId, required this.order, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _TrainingExercise.fromJson(Map<String, dynamic> json) => _$TrainingExerciseFromJson(json);

@override final  String? id;
@override final  String scheduleId;
@override final  String exerciseId;
@override final  int order;
@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of TrainingExercise
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingExerciseCopyWith<_TrainingExercise> get copyWith => __$TrainingExerciseCopyWithImpl<_TrainingExercise>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainingExerciseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingExercise&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,exerciseId,order,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingExercise(id: $id, scheduleId: $scheduleId, exerciseId: $exerciseId, order: $order, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TrainingExerciseCopyWith<$Res> implements $TrainingExerciseCopyWith<$Res> {
  factory _$TrainingExerciseCopyWith(_TrainingExercise value, $Res Function(_TrainingExercise) _then) = __$TrainingExerciseCopyWithImpl;
@override @useResult
$Res call({
 String? id, String scheduleId, String exerciseId, int order,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$TrainingExerciseCopyWithImpl<$Res>
    implements _$TrainingExerciseCopyWith<$Res> {
  __$TrainingExerciseCopyWithImpl(this._self, this._then);

  final _TrainingExercise _self;
  final $Res Function(_TrainingExercise) _then;

/// Create a copy of TrainingExercise
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? scheduleId = null,Object? exerciseId = null,Object? order = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_TrainingExercise(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
