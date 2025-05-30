// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_athlete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoachAthlete {

 String? get id; String get coachId; String get athleteId;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of CoachAthlete
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachAthleteCopyWith<CoachAthlete> get copyWith => _$CoachAthleteCopyWithImpl<CoachAthlete>(this as CoachAthlete, _$identity);

  /// Serializes this CoachAthlete to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.coachId, coachId) || other.coachId == coachId)&&(identical(other.athleteId, athleteId) || other.athleteId == athleteId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,coachId,athleteId,createdAt,updatedAt);

@override
String toString() {
  return 'CoachAthlete(id: $id, coachId: $coachId, athleteId: $athleteId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CoachAthleteCopyWith<$Res>  {
  factory $CoachAthleteCopyWith(CoachAthlete value, $Res Function(CoachAthlete) _then) = _$CoachAthleteCopyWithImpl;
@useResult
$Res call({
 String? id, String coachId, String athleteId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$CoachAthleteCopyWithImpl<$Res>
    implements $CoachAthleteCopyWith<$Res> {
  _$CoachAthleteCopyWithImpl(this._self, this._then);

  final CoachAthlete _self;
  final $Res Function(CoachAthlete) _then;

/// Create a copy of CoachAthlete
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? coachId = null,Object? athleteId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,coachId: null == coachId ? _self.coachId : coachId // ignore: cast_nullable_to_non_nullable
as String,athleteId: null == athleteId ? _self.athleteId : athleteId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CoachAthlete implements CoachAthlete {
  const _CoachAthlete({required this.id, required this.coachId, required this.athleteId, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _CoachAthlete.fromJson(Map<String, dynamic> json) => _$CoachAthleteFromJson(json);

@override final  String? id;
@override final  String coachId;
@override final  String athleteId;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of CoachAthlete
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachAthleteCopyWith<_CoachAthlete> get copyWith => __$CoachAthleteCopyWithImpl<_CoachAthlete>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachAthleteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.coachId, coachId) || other.coachId == coachId)&&(identical(other.athleteId, athleteId) || other.athleteId == athleteId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,coachId,athleteId,createdAt,updatedAt);

@override
String toString() {
  return 'CoachAthlete(id: $id, coachId: $coachId, athleteId: $athleteId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CoachAthleteCopyWith<$Res> implements $CoachAthleteCopyWith<$Res> {
  factory _$CoachAthleteCopyWith(_CoachAthlete value, $Res Function(_CoachAthlete) _then) = __$CoachAthleteCopyWithImpl;
@override @useResult
$Res call({
 String? id, String coachId, String athleteId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$CoachAthleteCopyWithImpl<$Res>
    implements _$CoachAthleteCopyWith<$Res> {
  __$CoachAthleteCopyWithImpl(this._self, this._then);

  final _CoachAthlete _self;
  final $Res Function(_CoachAthlete) _then;

/// Create a copy of CoachAthlete
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? coachId = null,Object? athleteId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CoachAthlete(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,coachId: null == coachId ? _self.coachId : coachId // ignore: cast_nullable_to_non_nullable
as String,athleteId: null == athleteId ? _self.athleteId : athleteId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
