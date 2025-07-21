// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomNotificationEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomNotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomNotificationEvent()';
}


}

/// @nodoc
class $CustomNotificationEventCopyWith<$Res>  {
$CustomNotificationEventCopyWith(CustomNotificationEvent _, $Res Function(CustomNotificationEvent) __);
}


/// Adds pattern-matching-related methods to [CustomNotificationEvent].
extension CustomNotificationEventPatterns on CustomNotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateNotification value)?  createNotification,TResult Function( GetNotificationById value)?  getNotificationById,TResult Function( GetNotificationsByUserId value)?  getNotificationsByUserId,TResult Function( UpdateNotification value)?  updateNotification,TResult Function( DeleteNotification value)?  deleteNotification,TResult Function( MarkNotificationsAsRead value)?  markNotificationsAsRead,TResult Function( GetAllCustomNotifications value)?  getAllCustomNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateNotification() when createNotification != null:
return createNotification(_that);case GetNotificationById() when getNotificationById != null:
return getNotificationById(_that);case GetNotificationsByUserId() when getNotificationsByUserId != null:
return getNotificationsByUserId(_that);case UpdateNotification() when updateNotification != null:
return updateNotification(_that);case DeleteNotification() when deleteNotification != null:
return deleteNotification(_that);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that);case GetAllCustomNotifications() when getAllCustomNotifications != null:
return getAllCustomNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateNotification value)  createNotification,required TResult Function( GetNotificationById value)  getNotificationById,required TResult Function( GetNotificationsByUserId value)  getNotificationsByUserId,required TResult Function( UpdateNotification value)  updateNotification,required TResult Function( DeleteNotification value)  deleteNotification,required TResult Function( MarkNotificationsAsRead value)  markNotificationsAsRead,required TResult Function( GetAllCustomNotifications value)  getAllCustomNotifications,}){
final _that = this;
switch (_that) {
case CreateNotification():
return createNotification(_that);case GetNotificationById():
return getNotificationById(_that);case GetNotificationsByUserId():
return getNotificationsByUserId(_that);case UpdateNotification():
return updateNotification(_that);case DeleteNotification():
return deleteNotification(_that);case MarkNotificationsAsRead():
return markNotificationsAsRead(_that);case GetAllCustomNotifications():
return getAllCustomNotifications(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateNotification value)?  createNotification,TResult? Function( GetNotificationById value)?  getNotificationById,TResult? Function( GetNotificationsByUserId value)?  getNotificationsByUserId,TResult? Function( UpdateNotification value)?  updateNotification,TResult? Function( DeleteNotification value)?  deleteNotification,TResult? Function( MarkNotificationsAsRead value)?  markNotificationsAsRead,TResult? Function( GetAllCustomNotifications value)?  getAllCustomNotifications,}){
final _that = this;
switch (_that) {
case CreateNotification() when createNotification != null:
return createNotification(_that);case GetNotificationById() when getNotificationById != null:
return getNotificationById(_that);case GetNotificationsByUserId() when getNotificationsByUserId != null:
return getNotificationsByUserId(_that);case UpdateNotification() when updateNotification != null:
return updateNotification(_that);case DeleteNotification() when deleteNotification != null:
return deleteNotification(_that);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that);case GetAllCustomNotifications() when getAllCustomNotifications != null:
return getAllCustomNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CustomNotification notification)?  createNotification,TResult Function( String id)?  getNotificationById,TResult Function( String userId)?  getNotificationsByUserId,TResult Function( String id,  CustomNotification notification)?  updateNotification,TResult Function( String id)?  deleteNotification,TResult Function( String userId)?  markNotificationsAsRead,TResult Function( int page,  int limit)?  getAllCustomNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateNotification() when createNotification != null:
return createNotification(_that.notification);case GetNotificationById() when getNotificationById != null:
return getNotificationById(_that.id);case GetNotificationsByUserId() when getNotificationsByUserId != null:
return getNotificationsByUserId(_that.userId);case UpdateNotification() when updateNotification != null:
return updateNotification(_that.id,_that.notification);case DeleteNotification() when deleteNotification != null:
return deleteNotification(_that.id);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that.userId);case GetAllCustomNotifications() when getAllCustomNotifications != null:
return getAllCustomNotifications(_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CustomNotification notification)  createNotification,required TResult Function( String id)  getNotificationById,required TResult Function( String userId)  getNotificationsByUserId,required TResult Function( String id,  CustomNotification notification)  updateNotification,required TResult Function( String id)  deleteNotification,required TResult Function( String userId)  markNotificationsAsRead,required TResult Function( int page,  int limit)  getAllCustomNotifications,}) {final _that = this;
switch (_that) {
case CreateNotification():
return createNotification(_that.notification);case GetNotificationById():
return getNotificationById(_that.id);case GetNotificationsByUserId():
return getNotificationsByUserId(_that.userId);case UpdateNotification():
return updateNotification(_that.id,_that.notification);case DeleteNotification():
return deleteNotification(_that.id);case MarkNotificationsAsRead():
return markNotificationsAsRead(_that.userId);case GetAllCustomNotifications():
return getAllCustomNotifications(_that.page,_that.limit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CustomNotification notification)?  createNotification,TResult? Function( String id)?  getNotificationById,TResult? Function( String userId)?  getNotificationsByUserId,TResult? Function( String id,  CustomNotification notification)?  updateNotification,TResult? Function( String id)?  deleteNotification,TResult? Function( String userId)?  markNotificationsAsRead,TResult? Function( int page,  int limit)?  getAllCustomNotifications,}) {final _that = this;
switch (_that) {
case CreateNotification() when createNotification != null:
return createNotification(_that.notification);case GetNotificationById() when getNotificationById != null:
return getNotificationById(_that.id);case GetNotificationsByUserId() when getNotificationsByUserId != null:
return getNotificationsByUserId(_that.userId);case UpdateNotification() when updateNotification != null:
return updateNotification(_that.id,_that.notification);case DeleteNotification() when deleteNotification != null:
return deleteNotification(_that.id);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that.userId);case GetAllCustomNotifications() when getAllCustomNotifications != null:
return getAllCustomNotifications(_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class CreateNotification with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const CreateNotification(this.notification);
  

 final  CustomNotification notification;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNotificationCopyWith<CreateNotification> get copyWith => _$CreateNotificationCopyWithImpl<CreateNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.createNotification'))
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
  return 'CustomNotificationEvent.createNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $CreateNotificationCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
  factory $CreateNotificationCopyWith(CreateNotification value, $Res Function(CreateNotification) _then) = _$CreateNotificationCopyWithImpl;
@useResult
$Res call({
 CustomNotification notification
});


$CustomNotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$CreateNotificationCopyWithImpl<$Res>
    implements $CreateNotificationCopyWith<$Res> {
  _$CreateNotificationCopyWithImpl(this._self, this._then);

  final CreateNotification _self;
  final $Res Function(CreateNotification) _then;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(CreateNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as CustomNotification,
  ));
}

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomNotificationCopyWith<$Res> get notification {
  
  return $CustomNotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class GetNotificationById with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const GetNotificationById(this.id);
  

 final  String id;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationByIdCopyWith<GetNotificationById> get copyWith => _$GetNotificationByIdCopyWithImpl<GetNotificationById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.getNotificationById'))
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
  return 'CustomNotificationEvent.getNotificationById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetNotificationByIdCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
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

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetNotificationById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetNotificationsByUserId with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const GetNotificationsByUserId(this.userId);
  

 final  String userId;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationsByUserIdCopyWith<GetNotificationsByUserId> get copyWith => _$GetNotificationsByUserIdCopyWithImpl<GetNotificationsByUserId>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.getNotificationsByUserId'))
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
  return 'CustomNotificationEvent.getNotificationsByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetNotificationsByUserIdCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
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

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetNotificationsByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateNotification with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const UpdateNotification(this.id, this.notification);
  

 final  String id;
 final  CustomNotification notification;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNotificationCopyWith<UpdateNotification> get copyWith => _$UpdateNotificationCopyWithImpl<UpdateNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.updateNotification'))
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
  return 'CustomNotificationEvent.updateNotification(id: $id, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $UpdateNotificationCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
  factory $UpdateNotificationCopyWith(UpdateNotification value, $Res Function(UpdateNotification) _then) = _$UpdateNotificationCopyWithImpl;
@useResult
$Res call({
 String id, CustomNotification notification
});


$CustomNotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$UpdateNotificationCopyWithImpl<$Res>
    implements $UpdateNotificationCopyWith<$Res> {
  _$UpdateNotificationCopyWithImpl(this._self, this._then);

  final UpdateNotification _self;
  final $Res Function(UpdateNotification) _then;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notification = null,}) {
  return _then(UpdateNotification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as CustomNotification,
  ));
}

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomNotificationCopyWith<$Res> get notification {
  
  return $CustomNotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class DeleteNotification with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const DeleteNotification(this.id);
  

 final  String id;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNotificationCopyWith<DeleteNotification> get copyWith => _$DeleteNotificationCopyWithImpl<DeleteNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.deleteNotification'))
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
  return 'CustomNotificationEvent.deleteNotification(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteNotificationCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
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

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteNotification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkNotificationsAsRead with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const MarkNotificationsAsRead(this.userId);
  

 final  String userId;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkNotificationsAsReadCopyWith<MarkNotificationsAsRead> get copyWith => _$MarkNotificationsAsReadCopyWithImpl<MarkNotificationsAsRead>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.markNotificationsAsRead'))
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
  return 'CustomNotificationEvent.markNotificationsAsRead(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $MarkNotificationsAsReadCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
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

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(MarkNotificationsAsRead(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllCustomNotifications with DiagnosticableTreeMixin implements CustomNotificationEvent {
  const GetAllCustomNotifications({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCustomNotificationsCopyWith<GetAllCustomNotifications> get copyWith => _$GetAllCustomNotificationsCopyWithImpl<GetAllCustomNotifications>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationEvent.getAllCustomNotifications'))
    ..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('limit', limit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCustomNotifications&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomNotificationEvent.getAllCustomNotifications(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllCustomNotificationsCopyWith<$Res> implements $CustomNotificationEventCopyWith<$Res> {
  factory $GetAllCustomNotificationsCopyWith(GetAllCustomNotifications value, $Res Function(GetAllCustomNotifications) _then) = _$GetAllCustomNotificationsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllCustomNotificationsCopyWithImpl<$Res>
    implements $GetAllCustomNotificationsCopyWith<$Res> {
  _$GetAllCustomNotificationsCopyWithImpl(this._self, this._then);

  final GetAllCustomNotifications _self;
  final $Res Function(GetAllCustomNotifications) _then;

/// Create a copy of CustomNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllCustomNotifications(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CustomNotificationState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomNotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomNotificationState()';
}


}

/// @nodoc
class $CustomNotificationStateCopyWith<$Res>  {
$CustomNotificationStateCopyWith(CustomNotificationState _, $Res Function(CustomNotificationState) __);
}


/// Adds pattern-matching-related methods to [CustomNotificationState].
extension CustomNotificationStatePatterns on CustomNotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Notification_Initial value)?  initial,TResult Function( Notification_Loading value)?  loading,TResult Function( LoadedNotification value)?  loadedNotification,TResult Function( LoadedNotifications value)?  loadedNotifications,TResult Function( Notification_Success value)?  success,TResult Function( Notification_Error value)?  error,TResult Function( LoadedCustomNotification value)?  loadedCustomNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Notification_Initial() when initial != null:
return initial(_that);case Notification_Loading() when loading != null:
return loading(_that);case LoadedNotification() when loadedNotification != null:
return loadedNotification(_that);case LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that);case Notification_Success() when success != null:
return success(_that);case Notification_Error() when error != null:
return error(_that);case LoadedCustomNotification() when loadedCustomNotifications != null:
return loadedCustomNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Notification_Initial value)  initial,required TResult Function( Notification_Loading value)  loading,required TResult Function( LoadedNotification value)  loadedNotification,required TResult Function( LoadedNotifications value)  loadedNotifications,required TResult Function( Notification_Success value)  success,required TResult Function( Notification_Error value)  error,required TResult Function( LoadedCustomNotification value)  loadedCustomNotifications,}){
final _that = this;
switch (_that) {
case Notification_Initial():
return initial(_that);case Notification_Loading():
return loading(_that);case LoadedNotification():
return loadedNotification(_that);case LoadedNotifications():
return loadedNotifications(_that);case Notification_Success():
return success(_that);case Notification_Error():
return error(_that);case LoadedCustomNotification():
return loadedCustomNotifications(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Notification_Initial value)?  initial,TResult? Function( Notification_Loading value)?  loading,TResult? Function( LoadedNotification value)?  loadedNotification,TResult? Function( LoadedNotifications value)?  loadedNotifications,TResult? Function( Notification_Success value)?  success,TResult? Function( Notification_Error value)?  error,TResult? Function( LoadedCustomNotification value)?  loadedCustomNotifications,}){
final _that = this;
switch (_that) {
case Notification_Initial() when initial != null:
return initial(_that);case Notification_Loading() when loading != null:
return loading(_that);case LoadedNotification() when loadedNotification != null:
return loadedNotification(_that);case LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that);case Notification_Success() when success != null:
return success(_that);case Notification_Error() when error != null:
return error(_that);case LoadedCustomNotification() when loadedCustomNotifications != null:
return loadedCustomNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CustomNotification notification)?  loadedNotification,TResult Function( List<CustomNotification> notifications)?  loadedNotifications,TResult Function( String message)?  success,TResult Function( String message)?  error,TResult Function( List<CustomNotification> customNotifications,  int curentPage,  int limit,  bool hasMore)?  loadedCustomNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Notification_Initial() when initial != null:
return initial();case Notification_Loading() when loading != null:
return loading();case LoadedNotification() when loadedNotification != null:
return loadedNotification(_that.notification);case LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that.notifications);case Notification_Success() when success != null:
return success(_that.message);case Notification_Error() when error != null:
return error(_that.message);case LoadedCustomNotification() when loadedCustomNotifications != null:
return loadedCustomNotifications(_that.customNotifications,_that.curentPage,_that.limit,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CustomNotification notification)  loadedNotification,required TResult Function( List<CustomNotification> notifications)  loadedNotifications,required TResult Function( String message)  success,required TResult Function( String message)  error,required TResult Function( List<CustomNotification> customNotifications,  int curentPage,  int limit,  bool hasMore)  loadedCustomNotifications,}) {final _that = this;
switch (_that) {
case Notification_Initial():
return initial();case Notification_Loading():
return loading();case LoadedNotification():
return loadedNotification(_that.notification);case LoadedNotifications():
return loadedNotifications(_that.notifications);case Notification_Success():
return success(_that.message);case Notification_Error():
return error(_that.message);case LoadedCustomNotification():
return loadedCustomNotifications(_that.customNotifications,_that.curentPage,_that.limit,_that.hasMore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CustomNotification notification)?  loadedNotification,TResult? Function( List<CustomNotification> notifications)?  loadedNotifications,TResult? Function( String message)?  success,TResult? Function( String message)?  error,TResult? Function( List<CustomNotification> customNotifications,  int curentPage,  int limit,  bool hasMore)?  loadedCustomNotifications,}) {final _that = this;
switch (_that) {
case Notification_Initial() when initial != null:
return initial();case Notification_Loading() when loading != null:
return loading();case LoadedNotification() when loadedNotification != null:
return loadedNotification(_that.notification);case LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that.notifications);case Notification_Success() when success != null:
return success(_that.message);case Notification_Error() when error != null:
return error(_that.message);case LoadedCustomNotification() when loadedCustomNotifications != null:
return loadedCustomNotifications(_that.customNotifications,_that.curentPage,_that.limit,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class Notification_Initial with DiagnosticableTreeMixin implements CustomNotificationState {
  const Notification_Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.initial'))
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
  return 'CustomNotificationState.initial()';
}


}




/// @nodoc


class Notification_Loading with DiagnosticableTreeMixin implements CustomNotificationState {
  const Notification_Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.loading'))
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
  return 'CustomNotificationState.loading()';
}


}




/// @nodoc


class LoadedNotification with DiagnosticableTreeMixin implements CustomNotificationState {
  const LoadedNotification(this.notification);
  

 final  CustomNotification notification;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNotificationCopyWith<LoadedNotification> get copyWith => _$LoadedNotificationCopyWithImpl<LoadedNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.loadedNotification'))
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
  return 'CustomNotificationState.loadedNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $LoadedNotificationCopyWith<$Res> implements $CustomNotificationStateCopyWith<$Res> {
  factory $LoadedNotificationCopyWith(LoadedNotification value, $Res Function(LoadedNotification) _then) = _$LoadedNotificationCopyWithImpl;
@useResult
$Res call({
 CustomNotification notification
});


$CustomNotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$LoadedNotificationCopyWithImpl<$Res>
    implements $LoadedNotificationCopyWith<$Res> {
  _$LoadedNotificationCopyWithImpl(this._self, this._then);

  final LoadedNotification _self;
  final $Res Function(LoadedNotification) _then;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(LoadedNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as CustomNotification,
  ));
}

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomNotificationCopyWith<$Res> get notification {
  
  return $CustomNotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class LoadedNotifications with DiagnosticableTreeMixin implements CustomNotificationState {
  const LoadedNotifications(final  List<CustomNotification> notifications): _notifications = notifications;
  

 final  List<CustomNotification> _notifications;
 List<CustomNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNotificationsCopyWith<LoadedNotifications> get copyWith => _$LoadedNotificationsCopyWithImpl<LoadedNotifications>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.loadedNotifications'))
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
  return 'CustomNotificationState.loadedNotifications(notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class $LoadedNotificationsCopyWith<$Res> implements $CustomNotificationStateCopyWith<$Res> {
  factory $LoadedNotificationsCopyWith(LoadedNotifications value, $Res Function(LoadedNotifications) _then) = _$LoadedNotificationsCopyWithImpl;
@useResult
$Res call({
 List<CustomNotification> notifications
});




}
/// @nodoc
class _$LoadedNotificationsCopyWithImpl<$Res>
    implements $LoadedNotificationsCopyWith<$Res> {
  _$LoadedNotificationsCopyWithImpl(this._self, this._then);

  final LoadedNotifications _self;
  final $Res Function(LoadedNotifications) _then;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,}) {
  return _then(LoadedNotifications(
null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CustomNotification>,
  ));
}


}

/// @nodoc


class Notification_Success with DiagnosticableTreeMixin implements CustomNotificationState {
  const Notification_Success(this.message);
  

 final  String message;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Notification_SuccessCopyWith<Notification_Success> get copyWith => _$Notification_SuccessCopyWithImpl<Notification_Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.success'))
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
  return 'CustomNotificationState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Notification_SuccessCopyWith<$Res> implements $CustomNotificationStateCopyWith<$Res> {
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

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Notification_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Notification_Error with DiagnosticableTreeMixin implements CustomNotificationState {
  const Notification_Error(this.message);
  

 final  String message;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Notification_ErrorCopyWith<Notification_Error> get copyWith => _$Notification_ErrorCopyWithImpl<Notification_Error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.error'))
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
  return 'CustomNotificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Notification_ErrorCopyWith<$Res> implements $CustomNotificationStateCopyWith<$Res> {
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

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Notification_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedCustomNotification with DiagnosticableTreeMixin implements CustomNotificationState {
  const LoadedCustomNotification(final  List<CustomNotification> customNotifications, this.curentPage, this.limit, this.hasMore): _customNotifications = customNotifications;
  

 final  List<CustomNotification> _customNotifications;
 List<CustomNotification> get customNotifications {
  if (_customNotifications is EqualUnmodifiableListView) return _customNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customNotifications);
}

 final  int curentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCustomNotificationCopyWith<LoadedCustomNotification> get copyWith => _$LoadedCustomNotificationCopyWithImpl<LoadedCustomNotification>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomNotificationState.loadedCustomNotifications'))
    ..add(DiagnosticsProperty('customNotifications', customNotifications))..add(DiagnosticsProperty('curentPage', curentPage))..add(DiagnosticsProperty('limit', limit))..add(DiagnosticsProperty('hasMore', hasMore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCustomNotification&&const DeepCollectionEquality().equals(other._customNotifications, _customNotifications)&&(identical(other.curentPage, curentPage) || other.curentPage == curentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_customNotifications),curentPage,limit,hasMore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomNotificationState.loadedCustomNotifications(customNotifications: $customNotifications, curentPage: $curentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedCustomNotificationCopyWith<$Res> implements $CustomNotificationStateCopyWith<$Res> {
  factory $LoadedCustomNotificationCopyWith(LoadedCustomNotification value, $Res Function(LoadedCustomNotification) _then) = _$LoadedCustomNotificationCopyWithImpl;
@useResult
$Res call({
 List<CustomNotification> customNotifications, int curentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedCustomNotificationCopyWithImpl<$Res>
    implements $LoadedCustomNotificationCopyWith<$Res> {
  _$LoadedCustomNotificationCopyWithImpl(this._self, this._then);

  final LoadedCustomNotification _self;
  final $Res Function(LoadedCustomNotification) _then;

/// Create a copy of CustomNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customNotifications = null,Object? curentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedCustomNotification(
null == customNotifications ? _self._customNotifications : customNotifications // ignore: cast_nullable_to_non_nullable
as List<CustomNotification>,null == curentPage ? _self.curentPage : curentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
