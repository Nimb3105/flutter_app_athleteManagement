// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_athlete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SportAthlete {

 String? get id; String get sportId; String get userId; String get position;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of SportAthlete
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SportAthleteCopyWith<SportAthlete> get copyWith => _$SportAthleteCopyWithImpl<SportAthlete>(this as SportAthlete, _$identity);

  /// Serializes this SportAthlete to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sportId,userId,position,createdAt,updatedAt);

@override
String toString() {
  return 'SportAthlete(id: $id, sportId: $sportId, userId: $userId, position: $position, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SportAthleteCopyWith<$Res>  {
  factory $SportAthleteCopyWith(SportAthlete value, $Res Function(SportAthlete) _then) = _$SportAthleteCopyWithImpl;
@useResult
$Res call({
 String? id, String sportId, String userId, String position,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$SportAthleteCopyWithImpl<$Res>
    implements $SportAthleteCopyWith<$Res> {
  _$SportAthleteCopyWithImpl(this._self, this._then);

  final SportAthlete _self;
  final $Res Function(SportAthlete) _then;

/// Create a copy of SportAthlete
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sportId = null,Object? userId = null,Object? position = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SportAthlete implements SportAthlete {
  const _SportAthlete({required this.id, required this.sportId, required this.userId, required this.position, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _SportAthlete.fromJson(Map<String, dynamic> json) => _$SportAthleteFromJson(json);

@override final  String? id;
@override final  String sportId;
@override final  String userId;
@override final  String position;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of SportAthlete
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SportAthleteCopyWith<_SportAthlete> get copyWith => __$SportAthleteCopyWithImpl<_SportAthlete>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SportAthleteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SportAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sportId,userId,position,createdAt,updatedAt);

@override
String toString() {
  return 'SportAthlete(id: $id, sportId: $sportId, userId: $userId, position: $position, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SportAthleteCopyWith<$Res> implements $SportAthleteCopyWith<$Res> {
  factory _$SportAthleteCopyWith(_SportAthlete value, $Res Function(_SportAthlete) _then) = __$SportAthleteCopyWithImpl;
@override @useResult
$Res call({
 String? id, String sportId, String userId, String position,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$SportAthleteCopyWithImpl<$Res>
    implements _$SportAthleteCopyWith<$Res> {
  __$SportAthleteCopyWithImpl(this._self, this._then);

  final _SportAthlete _self;
  final $Res Function(_SportAthlete) _then;

/// Create a copy of SportAthlete
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sportId = null,Object? userId = null,Object? position = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SportAthlete(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,sportId: null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
