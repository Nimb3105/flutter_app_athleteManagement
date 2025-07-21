// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchSchedule {

 String? get id; String get tournamentId; String get location; String get opponent; String get matchType; String get status; String get round; String get score; String get notes;@UtcDateTimeConverter() DateTime get date;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of MatchSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchScheduleCopyWith<MatchSchedule> get copyWith => _$MatchScheduleCopyWithImpl<MatchSchedule>(this as MatchSchedule, _$identity);

  /// Serializes this MatchSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.tournamentId, tournamentId) || other.tournamentId == tournamentId)&&(identical(other.location, location) || other.location == location)&&(identical(other.opponent, opponent) || other.opponent == opponent)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.status, status) || other.status == status)&&(identical(other.round, round) || other.round == round)&&(identical(other.score, score) || other.score == score)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tournamentId,location,opponent,matchType,status,round,score,notes,date,createdAt,updatedAt);

@override
String toString() {
  return 'MatchSchedule(id: $id, tournamentId: $tournamentId, location: $location, opponent: $opponent, matchType: $matchType, status: $status, round: $round, score: $score, notes: $notes, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MatchScheduleCopyWith<$Res>  {
  factory $MatchScheduleCopyWith(MatchSchedule value, $Res Function(MatchSchedule) _then) = _$MatchScheduleCopyWithImpl;
@useResult
$Res call({
 String? id, String tournamentId, String location, String opponent, String matchType, String status, String round, String score, String notes,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$MatchScheduleCopyWithImpl<$Res>
    implements $MatchScheduleCopyWith<$Res> {
  _$MatchScheduleCopyWithImpl(this._self, this._then);

  final MatchSchedule _self;
  final $Res Function(MatchSchedule) _then;

/// Create a copy of MatchSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tournamentId = null,Object? location = null,Object? opponent = null,Object? matchType = null,Object? status = null,Object? round = null,Object? score = null,Object? notes = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,tournamentId: null == tournamentId ? _self.tournamentId : tournamentId // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,opponent: null == opponent ? _self.opponent : opponent // ignore: cast_nullable_to_non_nullable
as String,matchType: null == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchSchedule].
extension MatchSchedulePatterns on MatchSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchSchedule value)  $default,){
final _that = this;
switch (_that) {
case _MatchSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _MatchSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String tournamentId,  String location,  String opponent,  String matchType,  String status,  String round,  String score,  String notes, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchSchedule() when $default != null:
return $default(_that.id,_that.tournamentId,_that.location,_that.opponent,_that.matchType,_that.status,_that.round,_that.score,_that.notes,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String tournamentId,  String location,  String opponent,  String matchType,  String status,  String round,  String score,  String notes, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MatchSchedule():
return $default(_that.id,_that.tournamentId,_that.location,_that.opponent,_that.matchType,_that.status,_that.round,_that.score,_that.notes,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String tournamentId,  String location,  String opponent,  String matchType,  String status,  String round,  String score,  String notes, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchSchedule() when $default != null:
return $default(_that.id,_that.tournamentId,_that.location,_that.opponent,_that.matchType,_that.status,_that.round,_that.score,_that.notes,_that.date,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchSchedule implements MatchSchedule {
  const _MatchSchedule({required this.id, required this.tournamentId, required this.location, required this.opponent, required this.matchType, required this.status, required this.round, required this.score, required this.notes, @UtcDateTimeConverter() required this.date, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _MatchSchedule.fromJson(Map<String, dynamic> json) => _$MatchScheduleFromJson(json);

@override final  String? id;
@override final  String tournamentId;
@override final  String location;
@override final  String opponent;
@override final  String matchType;
@override final  String status;
@override final  String round;
@override final  String score;
@override final  String notes;
@override@UtcDateTimeConverter() final  DateTime date;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of MatchSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchScheduleCopyWith<_MatchSchedule> get copyWith => __$MatchScheduleCopyWithImpl<_MatchSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.tournamentId, tournamentId) || other.tournamentId == tournamentId)&&(identical(other.location, location) || other.location == location)&&(identical(other.opponent, opponent) || other.opponent == opponent)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.status, status) || other.status == status)&&(identical(other.round, round) || other.round == round)&&(identical(other.score, score) || other.score == score)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tournamentId,location,opponent,matchType,status,round,score,notes,date,createdAt,updatedAt);

@override
String toString() {
  return 'MatchSchedule(id: $id, tournamentId: $tournamentId, location: $location, opponent: $opponent, matchType: $matchType, status: $status, round: $round, score: $score, notes: $notes, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MatchScheduleCopyWith<$Res> implements $MatchScheduleCopyWith<$Res> {
  factory _$MatchScheduleCopyWith(_MatchSchedule value, $Res Function(_MatchSchedule) _then) = __$MatchScheduleCopyWithImpl;
@override @useResult
$Res call({
 String? id, String tournamentId, String location, String opponent, String matchType, String status, String round, String score, String notes,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$MatchScheduleCopyWithImpl<$Res>
    implements _$MatchScheduleCopyWith<$Res> {
  __$MatchScheduleCopyWithImpl(this._self, this._then);

  final _MatchSchedule _self;
  final $Res Function(_MatchSchedule) _then;

/// Create a copy of MatchSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tournamentId = null,Object? location = null,Object? opponent = null,Object? matchType = null,Object? status = null,Object? round = null,Object? score = null,Object? notes = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MatchSchedule(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,tournamentId: null == tournamentId ? _self.tournamentId : tournamentId // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,opponent: null == opponent ? _self.opponent : opponent // ignore: cast_nullable_to_non_nullable
as String,matchType: null == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
