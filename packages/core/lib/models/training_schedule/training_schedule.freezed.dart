// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainingSchedule {

 String? get id;@UtcDateTimeConverter() DateTime get date;@UtcDateTimeConverter() DateTime get startTime;@UtcDateTimeConverter() DateTime get endTime; String get status; String get location; String get type; String get notes; String get createdBy; double? get progress; String? get dailyScheduleId; String get sportId; List<TrainingExercise> get trainingExercises;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of TrainingSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingScheduleCopyWith<TrainingSchedule> get copyWith => _$TrainingScheduleCopyWithImpl<TrainingSchedule>(this as TrainingSchedule, _$identity);

  /// Serializes this TrainingSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.dailyScheduleId, dailyScheduleId) || other.dailyScheduleId == dailyScheduleId)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&const DeepCollectionEquality().equals(other.trainingExercises, trainingExercises)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,startTime,endTime,status,location,type,notes,createdBy,progress,dailyScheduleId,sportId,const DeepCollectionEquality().hash(trainingExercises),createdAt,updatedAt);

@override
String toString() {
  return 'TrainingSchedule(id: $id, date: $date, startTime: $startTime, endTime: $endTime, status: $status, location: $location, type: $type, notes: $notes, createdBy: $createdBy, progress: $progress, dailyScheduleId: $dailyScheduleId, sportId: $sportId, trainingExercises: $trainingExercises, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TrainingScheduleCopyWith<$Res>  {
  factory $TrainingScheduleCopyWith(TrainingSchedule value, $Res Function(TrainingSchedule) _then) = _$TrainingScheduleCopyWithImpl;
@useResult
$Res call({
 String? id,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime startTime,@UtcDateTimeConverter() DateTime endTime, String status, String location, String type, String notes, String createdBy, double? progress, String? dailyScheduleId, String sportId, List<TrainingExercise> trainingExercises,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$TrainingScheduleCopyWithImpl<$Res>
    implements $TrainingScheduleCopyWith<$Res> {
  _$TrainingScheduleCopyWithImpl(this._self, this._then);

  final TrainingSchedule _self;
  final $Res Function(TrainingSchedule) _then;

/// Create a copy of TrainingSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? date = null,Object? startTime = null,Object? endTime = null,Object? status = null,Object? location = null,Object? type = null,Object? notes = null,Object? createdBy = null,Object? progress = freezed,Object? dailyScheduleId = freezed,Object? sportId = null,Object? trainingExercises = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double?,dailyScheduleId: freezed == dailyScheduleId ? _self.dailyScheduleId : dailyScheduleId // ignore: cast_nullable_to_non_nullable
as String?,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,trainingExercises: null == trainingExercises ? _self.trainingExercises : trainingExercises // ignore: cast_nullable_to_non_nullable
as List<TrainingExercise>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainingSchedule].
extension TrainingSchedulePatterns on TrainingSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainingSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainingSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainingSchedule value)  $default,){
final _that = this;
switch (_that) {
case _TrainingSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainingSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _TrainingSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime startTime, @UtcDateTimeConverter()  DateTime endTime,  String status,  String location,  String type,  String notes,  String createdBy,  double? progress,  String? dailyScheduleId,  String sportId,  List<TrainingExercise> trainingExercises, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainingSchedule() when $default != null:
return $default(_that.id,_that.date,_that.startTime,_that.endTime,_that.status,_that.location,_that.type,_that.notes,_that.createdBy,_that.progress,_that.dailyScheduleId,_that.sportId,_that.trainingExercises,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime startTime, @UtcDateTimeConverter()  DateTime endTime,  String status,  String location,  String type,  String notes,  String createdBy,  double? progress,  String? dailyScheduleId,  String sportId,  List<TrainingExercise> trainingExercises, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TrainingSchedule():
return $default(_that.id,_that.date,_that.startTime,_that.endTime,_that.status,_that.location,_that.type,_that.notes,_that.createdBy,_that.progress,_that.dailyScheduleId,_that.sportId,_that.trainingExercises,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime startTime, @UtcDateTimeConverter()  DateTime endTime,  String status,  String location,  String type,  String notes,  String createdBy,  double? progress,  String? dailyScheduleId,  String sportId,  List<TrainingExercise> trainingExercises, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TrainingSchedule() when $default != null:
return $default(_that.id,_that.date,_that.startTime,_that.endTime,_that.status,_that.location,_that.type,_that.notes,_that.createdBy,_that.progress,_that.dailyScheduleId,_that.sportId,_that.trainingExercises,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainingSchedule implements TrainingSchedule {
  const _TrainingSchedule({required this.id, @UtcDateTimeConverter() required this.date, @UtcDateTimeConverter() required this.startTime, @UtcDateTimeConverter() required this.endTime, required this.status, required this.location, required this.type, required this.notes, required this.createdBy, required this.progress, required this.dailyScheduleId, required this.sportId, final  List<TrainingExercise> trainingExercises = const [], @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): _trainingExercises = trainingExercises;
  factory _TrainingSchedule.fromJson(Map<String, dynamic> json) => _$TrainingScheduleFromJson(json);

@override final  String? id;
@override@UtcDateTimeConverter() final  DateTime date;
@override@UtcDateTimeConverter() final  DateTime startTime;
@override@UtcDateTimeConverter() final  DateTime endTime;
@override final  String status;
@override final  String location;
@override final  String type;
@override final  String notes;
@override final  String createdBy;
@override final  double? progress;
@override final  String? dailyScheduleId;
@override final  String sportId;
 final  List<TrainingExercise> _trainingExercises;
@override@JsonKey() List<TrainingExercise> get trainingExercises {
  if (_trainingExercises is EqualUnmodifiableListView) return _trainingExercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingExercises);
}

@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of TrainingSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingScheduleCopyWith<_TrainingSchedule> get copyWith => __$TrainingScheduleCopyWithImpl<_TrainingSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainingScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.dailyScheduleId, dailyScheduleId) || other.dailyScheduleId == dailyScheduleId)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&const DeepCollectionEquality().equals(other._trainingExercises, _trainingExercises)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,startTime,endTime,status,location,type,notes,createdBy,progress,dailyScheduleId,sportId,const DeepCollectionEquality().hash(_trainingExercises),createdAt,updatedAt);

@override
String toString() {
  return 'TrainingSchedule(id: $id, date: $date, startTime: $startTime, endTime: $endTime, status: $status, location: $location, type: $type, notes: $notes, createdBy: $createdBy, progress: $progress, dailyScheduleId: $dailyScheduleId, sportId: $sportId, trainingExercises: $trainingExercises, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TrainingScheduleCopyWith<$Res> implements $TrainingScheduleCopyWith<$Res> {
  factory _$TrainingScheduleCopyWith(_TrainingSchedule value, $Res Function(_TrainingSchedule) _then) = __$TrainingScheduleCopyWithImpl;
@override @useResult
$Res call({
 String? id,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime startTime,@UtcDateTimeConverter() DateTime endTime, String status, String location, String type, String notes, String createdBy, double? progress, String? dailyScheduleId, String sportId, List<TrainingExercise> trainingExercises,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$TrainingScheduleCopyWithImpl<$Res>
    implements _$TrainingScheduleCopyWith<$Res> {
  __$TrainingScheduleCopyWithImpl(this._self, this._then);

  final _TrainingSchedule _self;
  final $Res Function(_TrainingSchedule) _then;

/// Create a copy of TrainingSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? date = null,Object? startTime = null,Object? endTime = null,Object? status = null,Object? location = null,Object? type = null,Object? notes = null,Object? createdBy = null,Object? progress = freezed,Object? dailyScheduleId = freezed,Object? sportId = null,Object? trainingExercises = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_TrainingSchedule(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double?,dailyScheduleId: freezed == dailyScheduleId ? _self.dailyScheduleId : dailyScheduleId // ignore: cast_nullable_to_non_nullable
as String?,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,trainingExercises: null == trainingExercises ? _self._trainingExercises : trainingExercises // ignore: cast_nullable_to_non_nullable
as List<TrainingExercise>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
