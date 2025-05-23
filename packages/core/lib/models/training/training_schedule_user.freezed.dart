// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_schedule_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainingScheduleUser {

 String? get id; String get scheduleId; String get userId;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of TrainingScheduleUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingScheduleUserCopyWith<TrainingScheduleUser> get copyWith => _$TrainingScheduleUserCopyWithImpl<TrainingScheduleUser>(this as TrainingScheduleUser, _$identity);

  /// Serializes this TrainingScheduleUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUser&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,userId,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingScheduleUser(id: $id, scheduleId: $scheduleId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TrainingScheduleUserCopyWith<$Res>  {
  factory $TrainingScheduleUserCopyWith(TrainingScheduleUser value, $Res Function(TrainingScheduleUser) _then) = _$TrainingScheduleUserCopyWithImpl;
@useResult
$Res call({
 String? id, String scheduleId, String userId,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$TrainingScheduleUserCopyWithImpl<$Res>
    implements $TrainingScheduleUserCopyWith<$Res> {
  _$TrainingScheduleUserCopyWithImpl(this._self, this._then);

  final TrainingScheduleUser _self;
  final $Res Function(TrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? scheduleId = null,Object? userId = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TrainingScheduleUser implements TrainingScheduleUser {
  const _TrainingScheduleUser({required this.id, required this.scheduleId, required this.userId, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _TrainingScheduleUser.fromJson(Map<String, dynamic> json) => _$TrainingScheduleUserFromJson(json);

@override final  String? id;
@override final  String scheduleId;
@override final  String userId;
@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of TrainingScheduleUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingScheduleUserCopyWith<_TrainingScheduleUser> get copyWith => __$TrainingScheduleUserCopyWithImpl<_TrainingScheduleUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainingScheduleUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingScheduleUser&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,userId,createdAt,updatedAt);

@override
String toString() {
  return 'TrainingScheduleUser(id: $id, scheduleId: $scheduleId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TrainingScheduleUserCopyWith<$Res> implements $TrainingScheduleUserCopyWith<$Res> {
  factory _$TrainingScheduleUserCopyWith(_TrainingScheduleUser value, $Res Function(_TrainingScheduleUser) _then) = __$TrainingScheduleUserCopyWithImpl;
@override @useResult
$Res call({
 String? id, String scheduleId, String userId,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$TrainingScheduleUserCopyWithImpl<$Res>
    implements _$TrainingScheduleUserCopyWith<$Res> {
  __$TrainingScheduleUserCopyWithImpl(this._self, this._then);

  final _TrainingScheduleUser _self;
  final $Res Function(_TrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? scheduleId = null,Object? userId = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_TrainingScheduleUser(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
