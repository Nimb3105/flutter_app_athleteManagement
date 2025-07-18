// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomNotification {

 String? get id; String? get userId; String? get scheduleId; String? get nutritionPlanId;@UtcDateTimeConverter() DateTime get sentDate; String get status; String get type; String get content;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of CustomNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomNotificationCopyWith<CustomNotification> get copyWith => _$CustomNotificationCopyWithImpl<CustomNotification>(this as CustomNotification, _$identity);

  /// Serializes this CustomNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.nutritionPlanId, nutritionPlanId) || other.nutritionPlanId == nutritionPlanId)&&(identical(other.sentDate, sentDate) || other.sentDate == sentDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,nutritionPlanId,sentDate,status,type,content,createdAt,updatedAt);

@override
String toString() {
  return 'CustomNotification(id: $id, userId: $userId, scheduleId: $scheduleId, nutritionPlanId: $nutritionPlanId, sentDate: $sentDate, status: $status, type: $type, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomNotificationCopyWith<$Res>  {
  factory $CustomNotificationCopyWith(CustomNotification value, $Res Function(CustomNotification) _then) = _$CustomNotificationCopyWithImpl;
@useResult
$Res call({
 String? id, String? userId, String? scheduleId, String? nutritionPlanId,@UtcDateTimeConverter() DateTime sentDate, String status, String type, String content,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$CustomNotificationCopyWithImpl<$Res>
    implements $CustomNotificationCopyWith<$Res> {
  _$CustomNotificationCopyWithImpl(this._self, this._then);

  final CustomNotification _self;
  final $Res Function(CustomNotification) _then;

/// Create a copy of CustomNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? scheduleId = freezed,Object? nutritionPlanId = freezed,Object? sentDate = null,Object? status = null,Object? type = null,Object? content = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,nutritionPlanId: freezed == nutritionPlanId ? _self.nutritionPlanId : nutritionPlanId // ignore: cast_nullable_to_non_nullable
as String?,sentDate: null == sentDate ? _self.sentDate : sentDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CustomNotification implements CustomNotification {
  const _CustomNotification({required this.id, required this.userId, required this.scheduleId, required this.nutritionPlanId, @UtcDateTimeConverter() required this.sentDate, required this.status, required this.type, required this.content, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _CustomNotification.fromJson(Map<String, dynamic> json) => _$CustomNotificationFromJson(json);

@override final  String? id;
@override final  String? userId;
@override final  String? scheduleId;
@override final  String? nutritionPlanId;
@override@UtcDateTimeConverter() final  DateTime sentDate;
@override final  String status;
@override final  String type;
@override final  String content;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of CustomNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomNotificationCopyWith<_CustomNotification> get copyWith => __$CustomNotificationCopyWithImpl<_CustomNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.nutritionPlanId, nutritionPlanId) || other.nutritionPlanId == nutritionPlanId)&&(identical(other.sentDate, sentDate) || other.sentDate == sentDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,nutritionPlanId,sentDate,status,type,content,createdAt,updatedAt);

@override
String toString() {
  return 'CustomNotification(id: $id, userId: $userId, scheduleId: $scheduleId, nutritionPlanId: $nutritionPlanId, sentDate: $sentDate, status: $status, type: $type, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomNotificationCopyWith<$Res> implements $CustomNotificationCopyWith<$Res> {
  factory _$CustomNotificationCopyWith(_CustomNotification value, $Res Function(_CustomNotification) _then) = __$CustomNotificationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? userId, String? scheduleId, String? nutritionPlanId,@UtcDateTimeConverter() DateTime sentDate, String status, String type, String content,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$CustomNotificationCopyWithImpl<$Res>
    implements _$CustomNotificationCopyWith<$Res> {
  __$CustomNotificationCopyWithImpl(this._self, this._then);

  final _CustomNotification _self;
  final $Res Function(_CustomNotification) _then;

/// Create a copy of CustomNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? scheduleId = freezed,Object? nutritionPlanId = freezed,Object? sentDate = null,Object? status = null,Object? type = null,Object? content = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CustomNotification(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,nutritionPlanId: freezed == nutritionPlanId ? _self.nutritionPlanId : nutritionPlanId // ignore: cast_nullable_to_non_nullable
as String?,sentDate: null == sentDate ? _self.sentDate : sentDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
