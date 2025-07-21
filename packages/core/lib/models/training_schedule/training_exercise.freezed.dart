// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String? get id; String? get scheduleId; String get exerciseId; int get order; int get reps; int get sets; double get weight; int get duration; double get distance; int get actualReps; int get actualSets; double get actualWeight; int get actualDuration; double get actualDistance; String get status; String get sportId;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of TrainingExercise
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingExerciseCopyWith<TrainingExercise> get copyWith => _$TrainingExerciseCopyWithImpl<TrainingExercise>(this as TrainingExercise, _$identity);

  /// Serializes this TrainingExercise to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.sets, sets) || other.sets == sets)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.actualReps, actualReps) || other.actualReps == actualReps)&&(identical(other.actualSets, actualSets) || other.actualSets == actualSets)&&(identical(other.actualWeight, actualWeight) || other.actualWeight == actualWeight)&&(identical(other.actualDuration, actualDuration) || other.actualDuration == actualDuration)&&(identical(other.actualDistance, actualDistance) || other.actualDistance == actualDistance)&&(identical(other.status, status) || other.status == status)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,exerciseId,order,reps,sets,weight,duration,distance,actualReps,actualSets,actualWeight,actualDuration,actualDistance,status,sportId,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingExercise(id: $id, scheduleId: $scheduleId, exerciseId: $exerciseId, order: $order, reps: $reps, sets: $sets, weight: $weight, duration: $duration, distance: $distance, actualReps: $actualReps, actualSets: $actualSets, actualWeight: $actualWeight, actualDuration: $actualDuration, actualDistance: $actualDistance, status: $status, sportId: $sportId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TrainingExerciseCopyWith<$Res>  {
  factory $TrainingExerciseCopyWith(TrainingExercise value, $Res Function(TrainingExercise) _then) = _$TrainingExerciseCopyWithImpl;
@useResult
$Res call({
 String? id, String? scheduleId, String exerciseId, int order, int reps, int sets, double weight, int duration, double distance, int actualReps, int actualSets, double actualWeight, int actualDuration, double actualDistance, String status, String sportId,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? scheduleId = freezed,Object? exerciseId = null,Object? order = null,Object? reps = null,Object? sets = null,Object? weight = null,Object? duration = null,Object? distance = null,Object? actualReps = null,Object? actualSets = null,Object? actualWeight = null,Object? actualDuration = null,Object? actualDistance = null,Object? status = null,Object? sportId = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,actualReps: null == actualReps ? _self.actualReps : actualReps // ignore: cast_nullable_to_non_nullable
as int,actualSets: null == actualSets ? _self.actualSets : actualSets // ignore: cast_nullable_to_non_nullable
as int,actualWeight: null == actualWeight ? _self.actualWeight : actualWeight // ignore: cast_nullable_to_non_nullable
as double,actualDuration: null == actualDuration ? _self.actualDuration : actualDuration // ignore: cast_nullable_to_non_nullable
as int,actualDistance: null == actualDistance ? _self.actualDistance : actualDistance // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainingExercise].
extension TrainingExercisePatterns on TrainingExercise {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainingExercise value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainingExercise() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainingExercise value)  $default,){
final _that = this;
switch (_that) {
case _TrainingExercise():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainingExercise value)?  $default,){
final _that = this;
switch (_that) {
case _TrainingExercise() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? scheduleId,  String exerciseId,  int order,  int reps,  int sets,  double weight,  int duration,  double distance,  int actualReps,  int actualSets,  double actualWeight,  int actualDuration,  double actualDistance,  String status,  String sportId, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainingExercise() when $default != null:
return $default(_that.id,_that.scheduleId,_that.exerciseId,_that.order,_that.reps,_that.sets,_that.weight,_that.duration,_that.distance,_that.actualReps,_that.actualSets,_that.actualWeight,_that.actualDuration,_that.actualDistance,_that.status,_that.sportId,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? scheduleId,  String exerciseId,  int order,  int reps,  int sets,  double weight,  int duration,  double distance,  int actualReps,  int actualSets,  double actualWeight,  int actualDuration,  double actualDistance,  String status,  String sportId, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TrainingExercise():
return $default(_that.id,_that.scheduleId,_that.exerciseId,_that.order,_that.reps,_that.sets,_that.weight,_that.duration,_that.distance,_that.actualReps,_that.actualSets,_that.actualWeight,_that.actualDuration,_that.actualDistance,_that.status,_that.sportId,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? scheduleId,  String exerciseId,  int order,  int reps,  int sets,  double weight,  int duration,  double distance,  int actualReps,  int actualSets,  double actualWeight,  int actualDuration,  double actualDistance,  String status,  String sportId, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TrainingExercise() when $default != null:
return $default(_that.id,_that.scheduleId,_that.exerciseId,_that.order,_that.reps,_that.sets,_that.weight,_that.duration,_that.distance,_that.actualReps,_that.actualSets,_that.actualWeight,_that.actualDuration,_that.actualDistance,_that.status,_that.sportId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainingExercise implements TrainingExercise {
  const _TrainingExercise({required this.id, required this.scheduleId, required this.exerciseId, required this.order, required this.reps, required this.sets, required this.weight, required this.duration, required this.distance, required this.actualReps, required this.actualSets, required this.actualWeight, required this.actualDuration, required this.actualDistance, required this.status, required this.sportId, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _TrainingExercise.fromJson(Map<String, dynamic> json) => _$TrainingExerciseFromJson(json);

@override final  String? id;
@override final  String? scheduleId;
@override final  String exerciseId;
@override final  int order;
@override final  int reps;
@override final  int sets;
@override final  double weight;
@override final  int duration;
@override final  double distance;
@override final  int actualReps;
@override final  int actualSets;
@override final  double actualWeight;
@override final  int actualDuration;
@override final  double actualDistance;
@override final  String status;
@override final  String sportId;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingExercise&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.sets, sets) || other.sets == sets)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.actualReps, actualReps) || other.actualReps == actualReps)&&(identical(other.actualSets, actualSets) || other.actualSets == actualSets)&&(identical(other.actualWeight, actualWeight) || other.actualWeight == actualWeight)&&(identical(other.actualDuration, actualDuration) || other.actualDuration == actualDuration)&&(identical(other.actualDistance, actualDistance) || other.actualDistance == actualDistance)&&(identical(other.status, status) || other.status == status)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,exerciseId,order,reps,sets,weight,duration,distance,actualReps,actualSets,actualWeight,actualDuration,actualDistance,status,sportId,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingExercise(id: $id, scheduleId: $scheduleId, exerciseId: $exerciseId, order: $order, reps: $reps, sets: $sets, weight: $weight, duration: $duration, distance: $distance, actualReps: $actualReps, actualSets: $actualSets, actualWeight: $actualWeight, actualDuration: $actualDuration, actualDistance: $actualDistance, status: $status, sportId: $sportId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TrainingExerciseCopyWith<$Res> implements $TrainingExerciseCopyWith<$Res> {
  factory _$TrainingExerciseCopyWith(_TrainingExercise value, $Res Function(_TrainingExercise) _then) = __$TrainingExerciseCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? scheduleId, String exerciseId, int order, int reps, int sets, double weight, int duration, double distance, int actualReps, int actualSets, double actualWeight, int actualDuration, double actualDistance, String status, String sportId,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? scheduleId = freezed,Object? exerciseId = null,Object? order = null,Object? reps = null,Object? sets = null,Object? weight = null,Object? duration = null,Object? distance = null,Object? actualReps = null,Object? actualSets = null,Object? actualWeight = null,Object? actualDuration = null,Object? actualDistance = null,Object? status = null,Object? sportId = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_TrainingExercise(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,actualReps: null == actualReps ? _self.actualReps : actualReps // ignore: cast_nullable_to_non_nullable
as int,actualSets: null == actualSets ? _self.actualSets : actualSets // ignore: cast_nullable_to_non_nullable
as int,actualWeight: null == actualWeight ? _self.actualWeight : actualWeight // ignore: cast_nullable_to_non_nullable
as double,actualDuration: null == actualDuration ? _self.actualDuration : actualDuration // ignore: cast_nullable_to_non_nullable
as int,actualDistance: null == actualDistance ? _self.actualDistance : actualDistance // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
