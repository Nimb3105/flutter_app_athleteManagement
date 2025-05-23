// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// @nodoc


class CreateNotification with DiagnosticableTreeMixin implements NotificationEvent {
  const CreateNotification(this.notification);
  

 final  Notification notification;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNotificationCopyWith<CreateNotification> get copyWith => _$CreateNotificationCopyWithImpl<CreateNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.createNotification'))
    ..add(DiagnosticsProperty('notification', notification));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNotification&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,notification);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.createNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $CreateNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $CreateNotificationCopyWith(CreateNotification value, $Res Function(CreateNotification) _then) = _$CreateNotificationCopyWithImpl;
@useResult
$Res call({
 Notification notification
});


$NotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$CreateNotificationCopyWithImpl<$Res>
    implements $CreateNotificationCopyWith<$Res> {
  _$CreateNotificationCopyWithImpl(this._self, this._then);

  final CreateNotification _self;
  final $Res Function(CreateNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(CreateNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification,
  ));
}

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res> get notification {
  
  return $NotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class GetNotificationById with DiagnosticableTreeMixin implements NotificationEvent {
  const GetNotificationById(this.id);
  

 final  String id;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationByIdCopyWith<GetNotificationById> get copyWith => _$GetNotificationByIdCopyWithImpl<GetNotificationById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.getNotificationById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotificationById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.getNotificationById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetNotificationByIdCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationByIdCopyWith(GetNotificationById value, $Res Function(GetNotificationById) _then) = _$GetNotificationByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetNotificationByIdCopyWithImpl<$Res>
    implements $GetNotificationByIdCopyWith<$Res> {
  _$GetNotificationByIdCopyWithImpl(this._self, this._then);

  final GetNotificationById _self;
  final $Res Function(GetNotificationById) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetNotificationById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetNotificationsByUserId with DiagnosticableTreeMixin implements NotificationEvent {
  const GetNotificationsByUserId(this.userId);
  

 final  String userId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationsByUserIdCopyWith<GetNotificationsByUserId> get copyWith => _$GetNotificationsByUserIdCopyWithImpl<GetNotificationsByUserId>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.getNotificationsByUserId'))
    ..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotificationsByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.getNotificationsByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetNotificationsByUserIdCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationsByUserIdCopyWith(GetNotificationsByUserId value, $Res Function(GetNotificationsByUserId) _then) = _$GetNotificationsByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetNotificationsByUserIdCopyWithImpl<$Res>
    implements $GetNotificationsByUserIdCopyWith<$Res> {
  _$GetNotificationsByUserIdCopyWithImpl(this._self, this._then);

  final GetNotificationsByUserId _self;
  final $Res Function(GetNotificationsByUserId) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetNotificationsByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateNotification with DiagnosticableTreeMixin implements NotificationEvent {
  const UpdateNotification(this.id, this.notification);
  

 final  String id;
 final  Notification notification;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNotificationCopyWith<UpdateNotification> get copyWith => _$UpdateNotificationCopyWithImpl<UpdateNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.updateNotification'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('notification', notification));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,id,notification);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.updateNotification(id: $id, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $UpdateNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $UpdateNotificationCopyWith(UpdateNotification value, $Res Function(UpdateNotification) _then) = _$UpdateNotificationCopyWithImpl;
@useResult
$Res call({
 String id, Notification notification
});


$NotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$UpdateNotificationCopyWithImpl<$Res>
    implements $UpdateNotificationCopyWith<$Res> {
  _$UpdateNotificationCopyWithImpl(this._self, this._then);

  final UpdateNotification _self;
  final $Res Function(UpdateNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notification = null,}) {
  return _then(UpdateNotification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification,
  ));
}

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res> get notification {
  
  return $NotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class DeleteNotification with DiagnosticableTreeMixin implements NotificationEvent {
  const DeleteNotification(this.id);
  

 final  String id;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNotificationCopyWith<DeleteNotification> get copyWith => _$DeleteNotificationCopyWithImpl<DeleteNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.deleteNotification'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNotification&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.deleteNotification(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $DeleteNotificationCopyWith(DeleteNotification value, $Res Function(DeleteNotification) _then) = _$DeleteNotificationCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteNotificationCopyWithImpl<$Res>
    implements $DeleteNotificationCopyWith<$Res> {
  _$DeleteNotificationCopyWithImpl(this._self, this._then);

  final DeleteNotification _self;
  final $Res Function(DeleteNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteNotification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkNotificationsAsRead with DiagnosticableTreeMixin implements NotificationEvent {
  const MarkNotificationsAsRead(this.userId);
  

 final  String userId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkNotificationsAsReadCopyWith<MarkNotificationsAsRead> get copyWith => _$MarkNotificationsAsReadCopyWithImpl<MarkNotificationsAsRead>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationEvent.markNotificationsAsRead'))
    ..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkNotificationsAsRead&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationEvent.markNotificationsAsRead(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $MarkNotificationsAsReadCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $MarkNotificationsAsReadCopyWith(MarkNotificationsAsRead value, $Res Function(MarkNotificationsAsRead) _then) = _$MarkNotificationsAsReadCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$MarkNotificationsAsReadCopyWithImpl<$Res>
    implements $MarkNotificationsAsReadCopyWith<$Res> {
  _$MarkNotificationsAsReadCopyWithImpl(this._self, this._then);

  final MarkNotificationsAsRead _self;
  final $Res Function(MarkNotificationsAsRead) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(MarkNotificationsAsRead(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NotificationState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState()';
}


}

/// @nodoc
class $NotificationStateCopyWith<$Res>  {
$NotificationStateCopyWith(NotificationState _, $Res Function(NotificationState) __);
}


/// @nodoc


class Notification_Initial with DiagnosticableTreeMixin implements NotificationState {
  const Notification_Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.initial()';
}


}




/// @nodoc


class Notification_Loading with DiagnosticableTreeMixin implements NotificationState {
  const Notification_Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.loading()';
}


}




/// @nodoc


class LoadedNotification with DiagnosticableTreeMixin implements NotificationState {
  const LoadedNotification(this.notification);
  

 final  Notification notification;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNotificationCopyWith<LoadedNotification> get copyWith => _$LoadedNotificationCopyWithImpl<LoadedNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.loadedNotification'))
    ..add(DiagnosticsProperty('notification', notification));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedNotification&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,notification);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.loadedNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $LoadedNotificationCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory $LoadedNotificationCopyWith(LoadedNotification value, $Res Function(LoadedNotification) _then) = _$LoadedNotificationCopyWithImpl;
@useResult
$Res call({
 Notification notification
});


$NotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$LoadedNotificationCopyWithImpl<$Res>
    implements $LoadedNotificationCopyWith<$Res> {
  _$LoadedNotificationCopyWithImpl(this._self, this._then);

  final LoadedNotification _self;
  final $Res Function(LoadedNotification) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(LoadedNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification,
  ));
}

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res> get notification {
  
  return $NotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class LoadedNotifications with DiagnosticableTreeMixin implements NotificationState {
  const LoadedNotifications(final  List<Notification> notifications): _notifications = notifications;
  

 final  List<Notification> _notifications;
 List<Notification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNotificationsCopyWith<LoadedNotifications> get copyWith => _$LoadedNotificationsCopyWithImpl<LoadedNotifications>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.loadedNotifications'))
    ..add(DiagnosticsProperty('notifications', notifications));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedNotifications&&const DeepCollectionEquality().equals(other._notifications, _notifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.loadedNotifications(notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class $LoadedNotificationsCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory $LoadedNotificationsCopyWith(LoadedNotifications value, $Res Function(LoadedNotifications) _then) = _$LoadedNotificationsCopyWithImpl;
@useResult
$Res call({
 List<Notification> notifications
});




}
/// @nodoc
class _$LoadedNotificationsCopyWithImpl<$Res>
    implements $LoadedNotificationsCopyWith<$Res> {
  _$LoadedNotificationsCopyWithImpl(this._self, this._then);

  final LoadedNotifications _self;
  final $Res Function(LoadedNotifications) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,}) {
  return _then(LoadedNotifications(
null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<Notification>,
  ));
}


}

/// @nodoc


class Notification_Success with DiagnosticableTreeMixin implements NotificationState {
  const Notification_Success(this.message);
  

 final  String message;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Notification_SuccessCopyWith<Notification_Success> get copyWith => _$Notification_SuccessCopyWithImpl<Notification_Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.success'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Notification_SuccessCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory $Notification_SuccessCopyWith(Notification_Success value, $Res Function(Notification_Success) _then) = _$Notification_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Notification_SuccessCopyWithImpl<$Res>
    implements $Notification_SuccessCopyWith<$Res> {
  _$Notification_SuccessCopyWithImpl(this._self, this._then);

  final Notification_Success _self;
  final $Res Function(Notification_Success) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Notification_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Notification_Error with DiagnosticableTreeMixin implements NotificationState {
  const Notification_Error(this.message);
  

 final  String message;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Notification_ErrorCopyWith<Notification_Error> get copyWith => _$Notification_ErrorCopyWithImpl<Notification_Error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Notification_ErrorCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory $Notification_ErrorCopyWith(Notification_Error value, $Res Function(Notification_Error) _then) = _$Notification_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Notification_ErrorCopyWithImpl<$Res>
    implements $Notification_ErrorCopyWith<$Res> {
  _$Notification_ErrorCopyWithImpl(this._self, this._then);

  final Notification_Error _self;
  final $Res Function(Notification_Error) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Notification_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
