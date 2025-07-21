// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [ReminderEvent].
extension ReminderEventPatterns on ReminderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateReminder value)?  createReminder,TResult Function( GetReminderById value)?  getReminderById,TResult Function( GetRemindersByUserId value)?  getRemindersByUserId,TResult Function( UpdateReminder value)?  updateReminder,TResult Function( DeleteReminder value)?  deleteReminder,TResult Function( GetAllReminders value)?  getAllReminders,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateReminder() when createReminder != null:
return createReminder(_that);case GetReminderById() when getReminderById != null:
return getReminderById(_that);case GetRemindersByUserId() when getRemindersByUserId != null:
return getRemindersByUserId(_that);case UpdateReminder() when updateReminder != null:
return updateReminder(_that);case DeleteReminder() when deleteReminder != null:
return deleteReminder(_that);case GetAllReminders() when getAllReminders != null:
return getAllReminders(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateReminder value)  createReminder,required TResult Function( GetReminderById value)  getReminderById,required TResult Function( GetRemindersByUserId value)  getRemindersByUserId,required TResult Function( UpdateReminder value)  updateReminder,required TResult Function( DeleteReminder value)  deleteReminder,required TResult Function( GetAllReminders value)  getAllReminders,}){
final _that = this;
switch (_that) {
case CreateReminder():
return createReminder(_that);case GetReminderById():
return getReminderById(_that);case GetRemindersByUserId():
return getRemindersByUserId(_that);case UpdateReminder():
return updateReminder(_that);case DeleteReminder():
return deleteReminder(_that);case GetAllReminders():
return getAllReminders(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateReminder value)?  createReminder,TResult? Function( GetReminderById value)?  getReminderById,TResult? Function( GetRemindersByUserId value)?  getRemindersByUserId,TResult? Function( UpdateReminder value)?  updateReminder,TResult? Function( DeleteReminder value)?  deleteReminder,TResult? Function( GetAllReminders value)?  getAllReminders,}){
final _that = this;
switch (_that) {
case CreateReminder() when createReminder != null:
return createReminder(_that);case GetReminderById() when getReminderById != null:
return getReminderById(_that);case GetRemindersByUserId() when getRemindersByUserId != null:
return getRemindersByUserId(_that);case UpdateReminder() when updateReminder != null:
return updateReminder(_that);case DeleteReminder() when deleteReminder != null:
return deleteReminder(_that);case GetAllReminders() when getAllReminders != null:
return getAllReminders(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Reminder reminder)?  createReminder,TResult Function( String id)?  getReminderById,TResult Function( String userId)?  getRemindersByUserId,TResult Function( String id,  Reminder reminder)?  updateReminder,TResult Function( String id)?  deleteReminder,TResult Function( int page,  int limit)?  getAllReminders,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateReminder() when createReminder != null:
return createReminder(_that.reminder);case GetReminderById() when getReminderById != null:
return getReminderById(_that.id);case GetRemindersByUserId() when getRemindersByUserId != null:
return getRemindersByUserId(_that.userId);case UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.reminder);case DeleteReminder() when deleteReminder != null:
return deleteReminder(_that.id);case GetAllReminders() when getAllReminders != null:
return getAllReminders(_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Reminder reminder)  createReminder,required TResult Function( String id)  getReminderById,required TResult Function( String userId)  getRemindersByUserId,required TResult Function( String id,  Reminder reminder)  updateReminder,required TResult Function( String id)  deleteReminder,required TResult Function( int page,  int limit)  getAllReminders,}) {final _that = this;
switch (_that) {
case CreateReminder():
return createReminder(_that.reminder);case GetReminderById():
return getReminderById(_that.id);case GetRemindersByUserId():
return getRemindersByUserId(_that.userId);case UpdateReminder():
return updateReminder(_that.id,_that.reminder);case DeleteReminder():
return deleteReminder(_that.id);case GetAllReminders():
return getAllReminders(_that.page,_that.limit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Reminder reminder)?  createReminder,TResult? Function( String id)?  getReminderById,TResult? Function( String userId)?  getRemindersByUserId,TResult? Function( String id,  Reminder reminder)?  updateReminder,TResult? Function( String id)?  deleteReminder,TResult? Function( int page,  int limit)?  getAllReminders,}) {final _that = this;
switch (_that) {
case CreateReminder() when createReminder != null:
return createReminder(_that.reminder);case GetReminderById() when getReminderById != null:
return getReminderById(_that.id);case GetRemindersByUserId() when getRemindersByUserId != null:
return getRemindersByUserId(_that.userId);case UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.reminder);case DeleteReminder() when deleteReminder != null:
return deleteReminder(_that.id);case GetAllReminders() when getAllReminders != null:
return getAllReminders(_that.page,_that.limit);case _:
  return null;

}
}

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


class GetAllReminders implements ReminderEvent {
  const GetAllReminders({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllRemindersCopyWith<GetAllReminders> get copyWith => _$GetAllRemindersCopyWithImpl<GetAllReminders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllReminders&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'ReminderEvent.getAllReminders(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllRemindersCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory $GetAllRemindersCopyWith(GetAllReminders value, $Res Function(GetAllReminders) _then) = _$GetAllRemindersCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllRemindersCopyWithImpl<$Res>
    implements $GetAllRemindersCopyWith<$Res> {
  _$GetAllRemindersCopyWithImpl(this._self, this._then);

  final GetAllReminders _self;
  final $Res Function(GetAllReminders) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllReminders(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
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


/// Adds pattern-matching-related methods to [ReminderState].
extension ReminderStatePatterns on ReminderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Reminder_Initial value)?  initial,TResult Function( Reminder_Loading value)?  loading,TResult Function( LoadedReminder value)?  loadedReminder,TResult Function( LoadedReminders value)?  loadedReminders,TResult Function( Reminder_Success value)?  success,TResult Function( Reminder_Error value)?  error,TResult Function( LoadedAllReminders value)?  loadedAllReminders,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Reminder_Initial() when initial != null:
return initial(_that);case Reminder_Loading() when loading != null:
return loading(_that);case LoadedReminder() when loadedReminder != null:
return loadedReminder(_that);case LoadedReminders() when loadedReminders != null:
return loadedReminders(_that);case Reminder_Success() when success != null:
return success(_that);case Reminder_Error() when error != null:
return error(_that);case LoadedAllReminders() when loadedAllReminders != null:
return loadedAllReminders(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Reminder_Initial value)  initial,required TResult Function( Reminder_Loading value)  loading,required TResult Function( LoadedReminder value)  loadedReminder,required TResult Function( LoadedReminders value)  loadedReminders,required TResult Function( Reminder_Success value)  success,required TResult Function( Reminder_Error value)  error,required TResult Function( LoadedAllReminders value)  loadedAllReminders,}){
final _that = this;
switch (_that) {
case Reminder_Initial():
return initial(_that);case Reminder_Loading():
return loading(_that);case LoadedReminder():
return loadedReminder(_that);case LoadedReminders():
return loadedReminders(_that);case Reminder_Success():
return success(_that);case Reminder_Error():
return error(_that);case LoadedAllReminders():
return loadedAllReminders(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Reminder_Initial value)?  initial,TResult? Function( Reminder_Loading value)?  loading,TResult? Function( LoadedReminder value)?  loadedReminder,TResult? Function( LoadedReminders value)?  loadedReminders,TResult? Function( Reminder_Success value)?  success,TResult? Function( Reminder_Error value)?  error,TResult? Function( LoadedAllReminders value)?  loadedAllReminders,}){
final _that = this;
switch (_that) {
case Reminder_Initial() when initial != null:
return initial(_that);case Reminder_Loading() when loading != null:
return loading(_that);case LoadedReminder() when loadedReminder != null:
return loadedReminder(_that);case LoadedReminders() when loadedReminders != null:
return loadedReminders(_that);case Reminder_Success() when success != null:
return success(_that);case Reminder_Error() when error != null:
return error(_that);case LoadedAllReminders() when loadedAllReminders != null:
return loadedAllReminders(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Reminder reminder)?  loadedReminder,TResult Function( List<Reminder> reminders)?  loadedReminders,TResult Function( String message)?  success,TResult Function( String message)?  error,TResult Function( List<Reminder> reminders,  int currentPage,  int limit,  bool hasMore)?  loadedAllReminders,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Reminder_Initial() when initial != null:
return initial();case Reminder_Loading() when loading != null:
return loading();case LoadedReminder() when loadedReminder != null:
return loadedReminder(_that.reminder);case LoadedReminders() when loadedReminders != null:
return loadedReminders(_that.reminders);case Reminder_Success() when success != null:
return success(_that.message);case Reminder_Error() when error != null:
return error(_that.message);case LoadedAllReminders() when loadedAllReminders != null:
return loadedAllReminders(_that.reminders,_that.currentPage,_that.limit,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Reminder reminder)  loadedReminder,required TResult Function( List<Reminder> reminders)  loadedReminders,required TResult Function( String message)  success,required TResult Function( String message)  error,required TResult Function( List<Reminder> reminders,  int currentPage,  int limit,  bool hasMore)  loadedAllReminders,}) {final _that = this;
switch (_that) {
case Reminder_Initial():
return initial();case Reminder_Loading():
return loading();case LoadedReminder():
return loadedReminder(_that.reminder);case LoadedReminders():
return loadedReminders(_that.reminders);case Reminder_Success():
return success(_that.message);case Reminder_Error():
return error(_that.message);case LoadedAllReminders():
return loadedAllReminders(_that.reminders,_that.currentPage,_that.limit,_that.hasMore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Reminder reminder)?  loadedReminder,TResult? Function( List<Reminder> reminders)?  loadedReminders,TResult? Function( String message)?  success,TResult? Function( String message)?  error,TResult? Function( List<Reminder> reminders,  int currentPage,  int limit,  bool hasMore)?  loadedAllReminders,}) {final _that = this;
switch (_that) {
case Reminder_Initial() when initial != null:
return initial();case Reminder_Loading() when loading != null:
return loading();case LoadedReminder() when loadedReminder != null:
return loadedReminder(_that.reminder);case LoadedReminders() when loadedReminders != null:
return loadedReminders(_that.reminders);case Reminder_Success() when success != null:
return success(_that.message);case Reminder_Error() when error != null:
return error(_that.message);case LoadedAllReminders() when loadedAllReminders != null:
return loadedAllReminders(_that.reminders,_that.currentPage,_that.limit,_that.hasMore);case _:
  return null;

}
}

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

/// @nodoc


class LoadedAllReminders implements ReminderState {
  const LoadedAllReminders(final  List<Reminder> reminders, this.currentPage, this.limit, this.hasMore): _reminders = reminders;
  

 final  List<Reminder> _reminders;
 List<Reminder> get reminders {
  if (_reminders is EqualUnmodifiableListView) return _reminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminders);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAllRemindersCopyWith<LoadedAllReminders> get copyWith => _$LoadedAllRemindersCopyWithImpl<LoadedAllReminders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAllReminders&&const DeepCollectionEquality().equals(other._reminders, _reminders)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reminders),currentPage,limit,hasMore);

@override
String toString() {
  return 'ReminderState.loadedAllReminders(reminders: $reminders, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedAllRemindersCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $LoadedAllRemindersCopyWith(LoadedAllReminders value, $Res Function(LoadedAllReminders) _then) = _$LoadedAllRemindersCopyWithImpl;
@useResult
$Res call({
 List<Reminder> reminders, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedAllRemindersCopyWithImpl<$Res>
    implements $LoadedAllRemindersCopyWith<$Res> {
  _$LoadedAllRemindersCopyWithImpl(this._self, this._then);

  final LoadedAllReminders _self;
  final $Res Function(LoadedAllReminders) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminders = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedAllReminders(
null == reminders ? _self._reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<Reminder>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
