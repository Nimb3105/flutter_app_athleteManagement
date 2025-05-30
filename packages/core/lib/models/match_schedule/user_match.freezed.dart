// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserMatch {

 String? get id; String get userId; String get matchId;//required String teamId,
@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of UserMatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMatchCopyWith<UserMatch> get copyWith => _$UserMatchCopyWithImpl<UserMatch>(this as UserMatch, _$identity);

  /// Serializes this UserMatch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatch&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,matchId,createdAt,updatedAt);

@override
String toString() {
  return 'UserMatch(id: $id, userId: $userId, matchId: $matchId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserMatchCopyWith<$Res>  {
  factory $UserMatchCopyWith(UserMatch value, $Res Function(UserMatch) _then) = _$UserMatchCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String matchId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$UserMatchCopyWithImpl<$Res>
    implements $UserMatchCopyWith<$Res> {
  _$UserMatchCopyWithImpl(this._self, this._then);

  final UserMatch _self;
  final $Res Function(UserMatch) _then;

/// Create a copy of UserMatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? matchId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserMatch implements UserMatch {
  const _UserMatch({required this.id, required this.userId, required this.matchId, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _UserMatch.fromJson(Map<String, dynamic> json) => _$UserMatchFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String matchId;
//required String teamId,
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of UserMatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMatchCopyWith<_UserMatch> get copyWith => __$UserMatchCopyWithImpl<_UserMatch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMatchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMatch&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,matchId,createdAt,updatedAt);

@override
String toString() {
  return 'UserMatch(id: $id, userId: $userId, matchId: $matchId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserMatchCopyWith<$Res> implements $UserMatchCopyWith<$Res> {
  factory _$UserMatchCopyWith(_UserMatch value, $Res Function(_UserMatch) _then) = __$UserMatchCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String matchId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$UserMatchCopyWithImpl<$Res>
    implements _$UserMatchCopyWith<$Res> {
  __$UserMatchCopyWithImpl(this._self, this._then);

  final _UserMatch _self;
  final $Res Function(_UserMatch) _then;

/// Create a copy of UserMatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? matchId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserMatch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
