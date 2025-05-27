// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SportUser {

 String? get id; String get sportId; String get userId; String get position;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of SportUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SportUserCopyWith<SportUser> get copyWith => _$SportUserCopyWithImpl<SportUser>(this as SportUser, _$identity);

  /// Serializes this SportUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportUser&&(identical(other.id, id) || other.id == id)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sportId,userId,position,createdAt,updatedAt);

@override
String toString() {
  return 'SportUser(id: $id, sportId: $sportId, userId: $userId, position: $position, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SportUserCopyWith<$Res>  {
  factory $SportUserCopyWith(SportUser value, $Res Function(SportUser) _then) = _$SportUserCopyWithImpl;
@useResult
$Res call({
 String? id, String sportId, String userId, String position,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$SportUserCopyWithImpl<$Res>
    implements $SportUserCopyWith<$Res> {
  _$SportUserCopyWithImpl(this._self, this._then);

  final SportUser _self;
  final $Res Function(SportUser) _then;

/// Create a copy of SportUser
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

class _SportUser implements SportUser {
  const _SportUser({required this.id, required this.sportId, required this.userId, required this.position, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _SportUser.fromJson(Map<String, dynamic> json) => _$SportUserFromJson(json);

@override final  String? id;
@override final  String sportId;
@override final  String userId;
@override final  String position;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of SportUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SportUserCopyWith<_SportUser> get copyWith => __$SportUserCopyWithImpl<_SportUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SportUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SportUser&&(identical(other.id, id) || other.id == id)&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sportId,userId,position,createdAt,updatedAt);

@override
String toString() {
  return 'SportUser(id: $id, sportId: $sportId, userId: $userId, position: $position, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SportUserCopyWith<$Res> implements $SportUserCopyWith<$Res> {
  factory _$SportUserCopyWith(_SportUser value, $Res Function(_SportUser) _then) = __$SportUserCopyWithImpl;
@override @useResult
$Res call({
 String? id, String sportId, String userId, String position,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$SportUserCopyWithImpl<$Res>
    implements _$SportUserCopyWith<$Res> {
  __$SportUserCopyWithImpl(this._self, this._then);

  final _SportUser _self;
  final $Res Function(_SportUser) _then;

/// Create a copy of SportUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sportId = null,Object? userId = null,Object? position = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SportUser(
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
