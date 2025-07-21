// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailySchedule {

 String? get id; String get userId; String get name; String get sportId; String get createdBy; List<TrainingSchedule> get trainingSchedules;@UtcDateTimeConverter() DateTime? get startDate;@UtcDateTimeConverter() DateTime? get endDate;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of DailySchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyScheduleCopyWith<DailySchedule> get copyWith => _$DailyScheduleCopyWithImpl<DailySchedule>(this as DailySchedule, _$identity);

  /// Serializes this DailySchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other.trainingSchedules, trainingSchedules)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,sportId,createdBy,const DeepCollectionEquality().hash(trainingSchedules),startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'DailySchedule(id: $id, userId: $userId, name: $name, sportId: $sportId, createdBy: $createdBy, trainingSchedules: $trainingSchedules, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DailyScheduleCopyWith<$Res>  {
  factory $DailyScheduleCopyWith(DailySchedule value, $Res Function(DailySchedule) _then) = _$DailyScheduleCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String name, String sportId, String createdBy, List<TrainingSchedule> trainingSchedules,@UtcDateTimeConverter() DateTime? startDate,@UtcDateTimeConverter() DateTime? endDate,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$DailyScheduleCopyWithImpl<$Res>
    implements $DailyScheduleCopyWith<$Res> {
  _$DailyScheduleCopyWithImpl(this._self, this._then);

  final DailySchedule _self;
  final $Res Function(DailySchedule) _then;

/// Create a copy of DailySchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? name = null,Object? sportId = null,Object? createdBy = null,Object? trainingSchedules = null,Object? startDate = freezed,Object? endDate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,trainingSchedules: null == trainingSchedules ? _self.trainingSchedules : trainingSchedules // ignore: cast_nullable_to_non_nullable
as List<TrainingSchedule>,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailySchedule].
extension DailySchedulePatterns on DailySchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailySchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailySchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailySchedule value)  $default,){
final _that = this;
switch (_that) {
case _DailySchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailySchedule value)?  $default,){
final _that = this;
switch (_that) {
case _DailySchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String userId,  String name,  String sportId,  String createdBy,  List<TrainingSchedule> trainingSchedules, @UtcDateTimeConverter()  DateTime? startDate, @UtcDateTimeConverter()  DateTime? endDate, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailySchedule() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.sportId,_that.createdBy,_that.trainingSchedules,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String userId,  String name,  String sportId,  String createdBy,  List<TrainingSchedule> trainingSchedules, @UtcDateTimeConverter()  DateTime? startDate, @UtcDateTimeConverter()  DateTime? endDate, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DailySchedule():
return $default(_that.id,_that.userId,_that.name,_that.sportId,_that.createdBy,_that.trainingSchedules,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String userId,  String name,  String sportId,  String createdBy,  List<TrainingSchedule> trainingSchedules, @UtcDateTimeConverter()  DateTime? startDate, @UtcDateTimeConverter()  DateTime? endDate, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DailySchedule() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.sportId,_that.createdBy,_that.trainingSchedules,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailySchedule implements DailySchedule {
  const _DailySchedule({required this.id, required this.userId, required this.name, required this.sportId, required this.createdBy, final  List<TrainingSchedule> trainingSchedules = const [], @UtcDateTimeConverter() required this.startDate, @UtcDateTimeConverter() required this.endDate, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): _trainingSchedules = trainingSchedules;
  factory _DailySchedule.fromJson(Map<String, dynamic> json) => _$DailyScheduleFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String name;
@override final  String sportId;
@override final  String createdBy;
 final  List<TrainingSchedule> _trainingSchedules;
@override@JsonKey() List<TrainingSchedule> get trainingSchedules {
  if (_trainingSchedules is EqualUnmodifiableListView) return _trainingSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingSchedules);
}

@override@UtcDateTimeConverter() final  DateTime? startDate;
@override@UtcDateTimeConverter() final  DateTime? endDate;
@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of DailySchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyScheduleCopyWith<_DailySchedule> get copyWith => __$DailyScheduleCopyWithImpl<_DailySchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailySchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other._trainingSchedules, _trainingSchedules)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,sportId,createdBy,const DeepCollectionEquality().hash(_trainingSchedules),startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'DailySchedule(id: $id, userId: $userId, name: $name, sportId: $sportId, createdBy: $createdBy, trainingSchedules: $trainingSchedules, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyScheduleCopyWith<$Res> implements $DailyScheduleCopyWith<$Res> {
  factory _$DailyScheduleCopyWith(_DailySchedule value, $Res Function(_DailySchedule) _then) = __$DailyScheduleCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String name, String sportId, String createdBy, List<TrainingSchedule> trainingSchedules,@UtcDateTimeConverter() DateTime? startDate,@UtcDateTimeConverter() DateTime? endDate,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$DailyScheduleCopyWithImpl<$Res>
    implements _$DailyScheduleCopyWith<$Res> {
  __$DailyScheduleCopyWithImpl(this._self, this._then);

  final _DailySchedule _self;
  final $Res Function(_DailySchedule) _then;

/// Create a copy of DailySchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? name = null,Object? sportId = null,Object? createdBy = null,Object? trainingSchedules = null,Object? startDate = freezed,Object? endDate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DailySchedule(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,trainingSchedules: null == trainingSchedules ? _self._trainingSchedules : trainingSchedules // ignore: cast_nullable_to_non_nullable
as List<TrainingSchedule>,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
