// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderEvent()';
}


}

/// @nodoc
class $ReminderEventCopyWith<$Res>  {
$ReminderEventCopyWith(ReminderEvent _, $Res Function(ReminderEvent) __);
}


/// @nodoc


class CreateReminder implements ReminderEvent {
  const CreateReminder(this.reminder);
  

 final  Reminder reminder;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReminderCopyWith<CreateReminder> get copyWith => _$CreateReminderCopyWithImpl<CreateReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReminder&&(identical(other.reminder, reminder) || other.reminder == reminder));
}


@override
int get hashCode => Object.hash(runtimeType,reminder);

@override
String toString() {
  return 'ReminderEvent.createReminder(reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class $CreateReminderCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $CreateReminderCopyWith(CreateReminder value, $Res Function(CreateReminder) _then) = _$CreateReminderCopyWithImpl;
@useResult
$Res call({
 Reminder reminder
});


$ReminderCopyWith<$Res> get reminder;

}
/// @nodoc
class _$CreateReminderCopyWithImpl<$Res>
    implements $CreateReminderCopyWith<$Res> {
  _$CreateReminderCopyWithImpl(this._self, this._then);

  final CreateReminder _self;
  final $Res Function(CreateReminder) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminder = null,}) {
  return _then(CreateReminder(
null == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as Reminder,
  ));
}

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderCopyWith<$Res> get reminder {
  
  return $ReminderCopyWith<$Res>(_self.reminder, (value) {
    return _then(_self.copyWith(reminder: value));
  });
}
}

/// @nodoc


class GetReminderById implements ReminderEvent {
  const GetReminderById(this.id);
  

 final  String id;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReminderByIdCopyWith<GetReminderById> get copyWith => _$GetReminderByIdCopyWithImpl<GetReminderById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReminderById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ReminderEvent.getReminderById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetReminderByIdCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $GetReminderByIdCopyWith(GetReminderById value, $Res Function(GetReminderById) _then) = _$GetReminderByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetReminderByIdCopyWithImpl<$Res>
    implements $GetReminderByIdCopyWith<$Res> {
  _$GetReminderByIdCopyWithImpl(this._self, this._then);

  final GetReminderById _self;
  final $Res Function(GetReminderById) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetReminderById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetRemindersByUserId implements ReminderEvent {
  const GetRemindersByUserId(this.userId);
  

 final  String userId;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRemindersByUserIdCopyWith<GetRemindersByUserId> get copyWith => _$GetRemindersByUserIdCopyWithImpl<GetRemindersByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRemindersByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ReminderEvent.getRemindersByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetRemindersByUserIdCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $GetRemindersByUserIdCopyWith(GetRemindersByUserId value, $Res Function(GetRemindersByUserId) _then) = _$GetRemindersByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetRemindersByUserIdCopyWithImpl<$Res>
    implements $GetRemindersByUserIdCopyWith<$Res> {
  _$GetRemindersByUserIdCopyWithImpl(this._self, this._then);

  final GetRemindersByUserId _self;
  final $Res Function(GetRemindersByUserId) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetRemindersByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateReminder implements ReminderEvent {
  const UpdateReminder(this.id, this.reminder);
  

 final  String id;
 final  Reminder reminder;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateReminderCopyWith<UpdateReminder> get copyWith => _$UpdateReminderCopyWithImpl<UpdateReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReminder&&(identical(other.id, id) || other.id == id)&&(identical(other.reminder, reminder) || other.reminder == reminder));
}


@override
int get hashCode => Object.hash(runtimeType,id,reminder);

@override
String toString() {
  return 'ReminderEvent.updateReminder(id: $id, reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class $UpdateReminderCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $UpdateReminderCopyWith(UpdateReminder value, $Res Function(UpdateReminder) _then) = _$UpdateReminderCopyWithImpl;
@useResult
$Res call({
 String id, Reminder reminder
});


$ReminderCopyWith<$Res> get reminder;

}
/// @nodoc
class _$UpdateReminderCopyWithImpl<$Res>
    implements $UpdateReminderCopyWith<$Res> {
  _$UpdateReminderCopyWithImpl(this._self, this._then);

  final UpdateReminder _self;
  final $Res Function(UpdateReminder) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reminder = null,}) {
  return _then(UpdateReminder(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as Reminder,
  ));
}

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderCopyWith<$Res> get reminder {
  
  return $ReminderCopyWith<$Res>(_self.reminder, (value) {
    return _then(_self.copyWith(reminder: value));
  });
}
}

/// @nodoc


class DeleteReminder implements ReminderEvent {
  const DeleteReminder(this.id);
  

 final  String id;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteReminderCopyWith<DeleteReminder> get copyWith => _$DeleteReminderCopyWithImpl<DeleteReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteReminder&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ReminderEvent.deleteReminder(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteReminderCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $DeleteReminderCopyWith(DeleteReminder value, $Res Function(DeleteReminder) _then) = _$DeleteReminderCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteReminderCopyWithImpl<$Res>
    implements $DeleteReminderCopyWith<$Res> {
  _$DeleteReminderCopyWithImpl(this._self, this._then);

  final DeleteReminder _self;
  final $Res Function(DeleteReminder) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteReminder(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ReminderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState()';
}


}

/// @nodoc
class $ReminderStateCopyWith<$Res>  {
$ReminderStateCopyWith(ReminderState _, $Res Function(ReminderState) __);
}


/// @nodoc


class Reminder_Initial implements ReminderState {
  const Reminder_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reminder_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState.initial()';
}


}




/// @nodoc


class Reminder_Loading implements ReminderState {
  const Reminder_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reminder_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState.loading()';
}


}




/// @nodoc


class LoadedReminder implements ReminderState {
  const LoadedReminder(this.reminder);
  

 final  Reminder reminder;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedReminderCopyWith<LoadedReminder> get copyWith => _$LoadedReminderCopyWithImpl<LoadedReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedReminder&&(identical(other.reminder, reminder) || other.reminder == reminder));
}


@override
int get hashCode => Object.hash(runtimeType,reminder);

@override
String toString() {
  return 'ReminderState.loadedReminder(reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class $LoadedReminderCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $LoadedReminderCopyWith(LoadedReminder value, $Res Function(LoadedReminder) _then) = _$LoadedReminderCopyWithImpl;
@useResult
$Res call({
 Reminder reminder
});


$ReminderCopyWith<$Res> get reminder;

}
/// @nodoc
class _$LoadedReminderCopyWithImpl<$Res>
    implements $LoadedReminderCopyWith<$Res> {
  _$LoadedReminderCopyWithImpl(this._self, this._then);

  final LoadedReminder _self;
  final $Res Function(LoadedReminder) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminder = null,}) {
  return _then(LoadedReminder(
null == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as Reminder,
  ));
}

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderCopyWith<$Res> get reminder {
  
  return $ReminderCopyWith<$Res>(_self.reminder, (value) {
    return _then(_self.copyWith(reminder: value));
  });
}
}

/// @nodoc


class LoadedReminders implements ReminderState {
  const LoadedReminders(final  List<Reminder> reminders): _reminders = reminders;
  

 final  List<Reminder> _reminders;
 List<Reminder> get reminders {
  if (_reminders is EqualUnmodifiableListView) return _reminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminders);
}


/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedRemindersCopyWith<LoadedReminders> get copyWith => _$LoadedRemindersCopyWithImpl<LoadedReminders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedReminders&&const DeepCollectionEquality().equals(other._reminders, _reminders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reminders));

@override
String toString() {
  return 'ReminderState.loadedReminders(reminders: $reminders)';
}


}

/// @nodoc
abstract mixin class $LoadedRemindersCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $LoadedRemindersCopyWith(LoadedReminders value, $Res Function(LoadedReminders) _then) = _$LoadedRemindersCopyWithImpl;
@useResult
$Res call({
 List<Reminder> reminders
});




}
/// @nodoc
class _$LoadedRemindersCopyWithImpl<$Res>
    implements $LoadedRemindersCopyWith<$Res> {
  _$LoadedRemindersCopyWithImpl(this._self, this._then);

  final LoadedReminders _self;
  final $Res Function(LoadedReminders) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminders = null,}) {
  return _then(LoadedReminders(
null == reminders ? _self._reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<Reminder>,
  ));
}


}

/// @nodoc


class Reminder_Success implements ReminderState {
  const Reminder_Success(this.message);
  

 final  String message;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Reminder_SuccessCopyWith<Reminder_Success> get copyWith => _$Reminder_SuccessCopyWithImpl<Reminder_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reminder_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Reminder_SuccessCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $Reminder_SuccessCopyWith(Reminder_Success value, $Res Function(Reminder_Success) _then) = _$Reminder_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Reminder_SuccessCopyWithImpl<$Res>
    implements $Reminder_SuccessCopyWith<$Res> {
  _$Reminder_SuccessCopyWithImpl(this._self, this._then);

  final Reminder_Success _self;
  final $Res Function(Reminder_Success) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Reminder_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Reminder_Error implements ReminderState {
  const Reminder_Error(this.message);
  

 final  String message;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Reminder_ErrorCopyWith<Reminder_Error> get copyWith => _$Reminder_ErrorCopyWithImpl<Reminder_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reminder_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Reminder_ErrorCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $Reminder_ErrorCopyWith(Reminder_Error value, $Res Function(Reminder_Error) _then) = _$Reminder_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Reminder_ErrorCopyWithImpl<$Res>
    implements $Reminder_ErrorCopyWith<$Res> {
  _$Reminder_ErrorCopyWithImpl(this._self, this._then);

  final Reminder_Error _self;
  final $Res Function(Reminder_Error) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Reminder_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
