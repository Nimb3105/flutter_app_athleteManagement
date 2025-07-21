// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupMemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberEvent()';
}


}

/// @nodoc
class $GroupMemberEventCopyWith<$Res>  {
$GroupMemberEventCopyWith(GroupMemberEvent _, $Res Function(GroupMemberEvent) __);
}


/// Adds pattern-matching-related methods to [GroupMemberEvent].
extension GroupMemberEventPatterns on GroupMemberEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateGroupMember value)?  createGroupMember,TResult Function( _GetGroupMemberById value)?  getGroupMemberById,TResult Function( _GetGroupMembersByUserId value)?  getGroupMembersByUserId,TResult Function( _GetAllGroupMembers value)?  getAllGroupMembers,TResult Function( _UpdateGroupMember value)?  updateGroupMember,TResult Function( _DeleteGroupMember value)?  deleteGroupMember,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupMember() when createGroupMember != null:
return createGroupMember(_that);case _GetGroupMemberById() when getGroupMemberById != null:
return getGroupMemberById(_that);case _GetGroupMembersByUserId() when getGroupMembersByUserId != null:
return getGroupMembersByUserId(_that);case _GetAllGroupMembers() when getAllGroupMembers != null:
return getAllGroupMembers(_that);case _UpdateGroupMember() when updateGroupMember != null:
return updateGroupMember(_that);case _DeleteGroupMember() when deleteGroupMember != null:
return deleteGroupMember(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateGroupMember value)  createGroupMember,required TResult Function( _GetGroupMemberById value)  getGroupMemberById,required TResult Function( _GetGroupMembersByUserId value)  getGroupMembersByUserId,required TResult Function( _GetAllGroupMembers value)  getAllGroupMembers,required TResult Function( _UpdateGroupMember value)  updateGroupMember,required TResult Function( _DeleteGroupMember value)  deleteGroupMember,}){
final _that = this;
switch (_that) {
case _CreateGroupMember():
return createGroupMember(_that);case _GetGroupMemberById():
return getGroupMemberById(_that);case _GetGroupMembersByUserId():
return getGroupMembersByUserId(_that);case _GetAllGroupMembers():
return getAllGroupMembers(_that);case _UpdateGroupMember():
return updateGroupMember(_that);case _DeleteGroupMember():
return deleteGroupMember(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateGroupMember value)?  createGroupMember,TResult? Function( _GetGroupMemberById value)?  getGroupMemberById,TResult? Function( _GetGroupMembersByUserId value)?  getGroupMembersByUserId,TResult? Function( _GetAllGroupMembers value)?  getAllGroupMembers,TResult? Function( _UpdateGroupMember value)?  updateGroupMember,TResult? Function( _DeleteGroupMember value)?  deleteGroupMember,}){
final _that = this;
switch (_that) {
case _CreateGroupMember() when createGroupMember != null:
return createGroupMember(_that);case _GetGroupMemberById() when getGroupMemberById != null:
return getGroupMemberById(_that);case _GetGroupMembersByUserId() when getGroupMembersByUserId != null:
return getGroupMembersByUserId(_that);case _GetAllGroupMembers() when getAllGroupMembers != null:
return getAllGroupMembers(_that);case _UpdateGroupMember() when updateGroupMember != null:
return updateGroupMember(_that);case _DeleteGroupMember() when deleteGroupMember != null:
return deleteGroupMember(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GroupMember groupMember)?  createGroupMember,TResult Function( String id)?  getGroupMemberById,TResult Function( String userId)?  getGroupMembersByUserId,TResult Function( int page,  int limit)?  getAllGroupMembers,TResult Function( String id,  GroupMember groupMember)?  updateGroupMember,TResult Function( String id)?  deleteGroupMember,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupMember() when createGroupMember != null:
return createGroupMember(_that.groupMember);case _GetGroupMemberById() when getGroupMemberById != null:
return getGroupMemberById(_that.id);case _GetGroupMembersByUserId() when getGroupMembersByUserId != null:
return getGroupMembersByUserId(_that.userId);case _GetAllGroupMembers() when getAllGroupMembers != null:
return getAllGroupMembers(_that.page,_that.limit);case _UpdateGroupMember() when updateGroupMember != null:
return updateGroupMember(_that.id,_that.groupMember);case _DeleteGroupMember() when deleteGroupMember != null:
return deleteGroupMember(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GroupMember groupMember)  createGroupMember,required TResult Function( String id)  getGroupMemberById,required TResult Function( String userId)  getGroupMembersByUserId,required TResult Function( int page,  int limit)  getAllGroupMembers,required TResult Function( String id,  GroupMember groupMember)  updateGroupMember,required TResult Function( String id)  deleteGroupMember,}) {final _that = this;
switch (_that) {
case _CreateGroupMember():
return createGroupMember(_that.groupMember);case _GetGroupMemberById():
return getGroupMemberById(_that.id);case _GetGroupMembersByUserId():
return getGroupMembersByUserId(_that.userId);case _GetAllGroupMembers():
return getAllGroupMembers(_that.page,_that.limit);case _UpdateGroupMember():
return updateGroupMember(_that.id,_that.groupMember);case _DeleteGroupMember():
return deleteGroupMember(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GroupMember groupMember)?  createGroupMember,TResult? Function( String id)?  getGroupMemberById,TResult? Function( String userId)?  getGroupMembersByUserId,TResult? Function( int page,  int limit)?  getAllGroupMembers,TResult? Function( String id,  GroupMember groupMember)?  updateGroupMember,TResult? Function( String id)?  deleteGroupMember,}) {final _that = this;
switch (_that) {
case _CreateGroupMember() when createGroupMember != null:
return createGroupMember(_that.groupMember);case _GetGroupMemberById() when getGroupMemberById != null:
return getGroupMemberById(_that.id);case _GetGroupMembersByUserId() when getGroupMembersByUserId != null:
return getGroupMembersByUserId(_that.userId);case _GetAllGroupMembers() when getAllGroupMembers != null:
return getAllGroupMembers(_that.page,_that.limit);case _UpdateGroupMember() when updateGroupMember != null:
return updateGroupMember(_that.id,_that.groupMember);case _DeleteGroupMember() when deleteGroupMember != null:
return deleteGroupMember(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateGroupMember implements GroupMemberEvent {
  const _CreateGroupMember(this.groupMember);
  

 final  GroupMember groupMember;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupMemberCopyWith<_CreateGroupMember> get copyWith => __$CreateGroupMemberCopyWithImpl<_CreateGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupMember&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,groupMember);

@override
String toString() {
  return 'GroupMemberEvent.createGroupMember(groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$CreateGroupMemberCopyWith(_CreateGroupMember value, $Res Function(_CreateGroupMember) _then) = __$CreateGroupMemberCopyWithImpl;
@useResult
$Res call({
 GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class __$CreateGroupMemberCopyWithImpl<$Res>
    implements _$CreateGroupMemberCopyWith<$Res> {
  __$CreateGroupMemberCopyWithImpl(this._self, this._then);

  final _CreateGroupMember _self;
  final $Res Function(_CreateGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMember = null,}) {
  return _then(_CreateGroupMember(
null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class _GetGroupMemberById implements GroupMemberEvent {
  const _GetGroupMemberById(this.id);
  

 final  String id;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupMemberByIdCopyWith<_GetGroupMemberById> get copyWith => __$GetGroupMemberByIdCopyWithImpl<_GetGroupMemberById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupMemberById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupMemberEvent.getGroupMemberById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetGroupMemberByIdCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetGroupMemberByIdCopyWith(_GetGroupMemberById value, $Res Function(_GetGroupMemberById) _then) = __$GetGroupMemberByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetGroupMemberByIdCopyWithImpl<$Res>
    implements _$GetGroupMemberByIdCopyWith<$Res> {
  __$GetGroupMemberByIdCopyWithImpl(this._self, this._then);

  final _GetGroupMemberById _self;
  final $Res Function(_GetGroupMemberById) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetGroupMemberById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGroupMembersByUserId implements GroupMemberEvent {
  const _GetGroupMembersByUserId(this.userId);
  

 final  String userId;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupMembersByUserIdCopyWith<_GetGroupMembersByUserId> get copyWith => __$GetGroupMembersByUserIdCopyWithImpl<_GetGroupMembersByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupMembersByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GroupMemberEvent.getGroupMembersByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetGroupMembersByUserIdCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetGroupMembersByUserIdCopyWith(_GetGroupMembersByUserId value, $Res Function(_GetGroupMembersByUserId) _then) = __$GetGroupMembersByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetGroupMembersByUserIdCopyWithImpl<$Res>
    implements _$GetGroupMembersByUserIdCopyWith<$Res> {
  __$GetGroupMembersByUserIdCopyWithImpl(this._self, this._then);

  final _GetGroupMembersByUserId _self;
  final $Res Function(_GetGroupMembersByUserId) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetGroupMembersByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllGroupMembers implements GroupMemberEvent {
  const _GetAllGroupMembers({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllGroupMembersCopyWith<_GetAllGroupMembers> get copyWith => __$GetAllGroupMembersCopyWithImpl<_GetAllGroupMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllGroupMembers&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'GroupMemberEvent.getAllGroupMembers(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllGroupMembersCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetAllGroupMembersCopyWith(_GetAllGroupMembers value, $Res Function(_GetAllGroupMembers) _then) = __$GetAllGroupMembersCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllGroupMembersCopyWithImpl<$Res>
    implements _$GetAllGroupMembersCopyWith<$Res> {
  __$GetAllGroupMembersCopyWithImpl(this._self, this._then);

  final _GetAllGroupMembers _self;
  final $Res Function(_GetAllGroupMembers) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllGroupMembers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateGroupMember implements GroupMemberEvent {
  const _UpdateGroupMember(this.id, this.groupMember);
  

 final  String id;
 final  GroupMember groupMember;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGroupMemberCopyWith<_UpdateGroupMember> get copyWith => __$UpdateGroupMemberCopyWithImpl<_UpdateGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGroupMember&&(identical(other.id, id) || other.id == id)&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupMember);

@override
String toString() {
  return 'GroupMemberEvent.updateGroupMember(id: $id, groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class _$UpdateGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$UpdateGroupMemberCopyWith(_UpdateGroupMember value, $Res Function(_UpdateGroupMember) _then) = __$UpdateGroupMemberCopyWithImpl;
@useResult
$Res call({
 String id, GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class __$UpdateGroupMemberCopyWithImpl<$Res>
    implements _$UpdateGroupMemberCopyWith<$Res> {
  __$UpdateGroupMemberCopyWithImpl(this._self, this._then);

  final _UpdateGroupMember _self;
  final $Res Function(_UpdateGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupMember = null,}) {
  return _then(_UpdateGroupMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class _DeleteGroupMember implements GroupMemberEvent {
  const _DeleteGroupMember(this.id);
  

 final  String id;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGroupMemberCopyWith<_DeleteGroupMember> get copyWith => __$DeleteGroupMemberCopyWithImpl<_DeleteGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGroupMember&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupMemberEvent.deleteGroupMember(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$DeleteGroupMemberCopyWith(_DeleteGroupMember value, $Res Function(_DeleteGroupMember) _then) = __$DeleteGroupMemberCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteGroupMemberCopyWithImpl<$Res>
    implements _$DeleteGroupMemberCopyWith<$Res> {
  __$DeleteGroupMemberCopyWithImpl(this._self, this._then);

  final _DeleteGroupMember _self;
  final $Res Function(_DeleteGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteGroupMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GroupMemberState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMemberState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState()';
}


}

/// @nodoc
class $GroupMemberStateCopyWith<$Res>  {
$GroupMemberStateCopyWith(GroupMemberState _, $Res Function(GroupMemberState) __);
}


/// Adds pattern-matching-related methods to [GroupMemberState].
extension GroupMemberStatePatterns on GroupMemberState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GroupMember_Initial value)?  initial,TResult Function( GroupMember_Loading value)?  loading,TResult Function( LoadedGroupMember value)?  loadedGroupMember,TResult Function( LoadedGroupMembers value)?  loadedGroupMembers,TResult Function( GroupMember_Error value)?  error,TResult Function( GroupMember_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GroupMember_Initial() when initial != null:
return initial(_that);case GroupMember_Loading() when loading != null:
return loading(_that);case LoadedGroupMember() when loadedGroupMember != null:
return loadedGroupMember(_that);case LoadedGroupMembers() when loadedGroupMembers != null:
return loadedGroupMembers(_that);case GroupMember_Error() when error != null:
return error(_that);case GroupMember_Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GroupMember_Initial value)  initial,required TResult Function( GroupMember_Loading value)  loading,required TResult Function( LoadedGroupMember value)  loadedGroupMember,required TResult Function( LoadedGroupMembers value)  loadedGroupMembers,required TResult Function( GroupMember_Error value)  error,required TResult Function( GroupMember_Success value)  success,}){
final _that = this;
switch (_that) {
case GroupMember_Initial():
return initial(_that);case GroupMember_Loading():
return loading(_that);case LoadedGroupMember():
return loadedGroupMember(_that);case LoadedGroupMembers():
return loadedGroupMembers(_that);case GroupMember_Error():
return error(_that);case GroupMember_Success():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GroupMember_Initial value)?  initial,TResult? Function( GroupMember_Loading value)?  loading,TResult? Function( LoadedGroupMember value)?  loadedGroupMember,TResult? Function( LoadedGroupMembers value)?  loadedGroupMembers,TResult? Function( GroupMember_Error value)?  error,TResult? Function( GroupMember_Success value)?  success,}){
final _that = this;
switch (_that) {
case GroupMember_Initial() when initial != null:
return initial(_that);case GroupMember_Loading() when loading != null:
return loading(_that);case LoadedGroupMember() when loadedGroupMember != null:
return loadedGroupMember(_that);case LoadedGroupMembers() when loadedGroupMembers != null:
return loadedGroupMembers(_that);case GroupMember_Error() when error != null:
return error(_that);case GroupMember_Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( GroupMember groupMember)?  loadedGroupMember,TResult Function( List<GroupMember> groupMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Group>? groups)?  loadedGroupMembers,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GroupMember_Initial() when initial != null:
return initial();case GroupMember_Loading() when loading != null:
return loading();case LoadedGroupMember() when loadedGroupMember != null:
return loadedGroupMember(_that.groupMember);case LoadedGroupMembers() when loadedGroupMembers != null:
return loadedGroupMembers(_that.groupMembers,_that.currentPage,_that.limit,_that.hasMore,_that.groups);case GroupMember_Error() when error != null:
return error(_that.message);case GroupMember_Success() when success != null:
return success(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( GroupMember groupMember)  loadedGroupMember,required TResult Function( List<GroupMember> groupMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Group>? groups)  loadedGroupMembers,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case GroupMember_Initial():
return initial();case GroupMember_Loading():
return loading();case LoadedGroupMember():
return loadedGroupMember(_that.groupMember);case LoadedGroupMembers():
return loadedGroupMembers(_that.groupMembers,_that.currentPage,_that.limit,_that.hasMore,_that.groups);case GroupMember_Error():
return error(_that.message);case GroupMember_Success():
return success(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( GroupMember groupMember)?  loadedGroupMember,TResult? Function( List<GroupMember> groupMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Group>? groups)?  loadedGroupMembers,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case GroupMember_Initial() when initial != null:
return initial();case GroupMember_Loading() when loading != null:
return loading();case LoadedGroupMember() when loadedGroupMember != null:
return loadedGroupMember(_that.groupMember);case LoadedGroupMembers() when loadedGroupMembers != null:
return loadedGroupMembers(_that.groupMembers,_that.currentPage,_that.limit,_that.hasMore,_that.groups);case GroupMember_Error() when error != null:
return error(_that.message);case GroupMember_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class GroupMember_Initial implements GroupMemberState {
  const GroupMember_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState.initial()';
}


}




/// @nodoc


class GroupMember_Loading implements GroupMemberState {
  const GroupMember_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState.loading()';
}


}




/// @nodoc


class LoadedGroupMember implements GroupMemberState {
  const LoadedGroupMember(this.groupMember);
  

 final  GroupMember groupMember;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupMemberCopyWith<LoadedGroupMember> get copyWith => _$LoadedGroupMemberCopyWithImpl<LoadedGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroupMember&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,groupMember);

@override
String toString() {
  return 'GroupMemberState.loadedGroupMember(groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupMemberCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $LoadedGroupMemberCopyWith(LoadedGroupMember value, $Res Function(LoadedGroupMember) _then) = _$LoadedGroupMemberCopyWithImpl;
@useResult
$Res call({
 GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class _$LoadedGroupMemberCopyWithImpl<$Res>
    implements $LoadedGroupMemberCopyWith<$Res> {
  _$LoadedGroupMemberCopyWithImpl(this._self, this._then);

  final LoadedGroupMember _self;
  final $Res Function(LoadedGroupMember) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMember = null,}) {
  return _then(LoadedGroupMember(
null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class LoadedGroupMembers implements GroupMemberState {
  const LoadedGroupMembers(final  List<GroupMember> groupMembers, this.currentPage, this.limit, this.hasMore, {final  Map<String, Group>? groups}): _groupMembers = groupMembers,_groups = groups;
  

 final  List<GroupMember> _groupMembers;
 List<GroupMember> get groupMembers {
  if (_groupMembers is EqualUnmodifiableListView) return _groupMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groupMembers);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;
 final  Map<String, Group>? _groups;
 Map<String, Group>? get groups {
  final value = _groups;
  if (value == null) return null;
  if (_groups is EqualUnmodifiableMapView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupMembersCopyWith<LoadedGroupMembers> get copyWith => _$LoadedGroupMembersCopyWithImpl<LoadedGroupMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroupMembers&&const DeepCollectionEquality().equals(other._groupMembers, _groupMembers)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._groups, _groups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groupMembers),currentPage,limit,hasMore,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'GroupMemberState.loadedGroupMembers(groupMembers: $groupMembers, currentPage: $currentPage, limit: $limit, hasMore: $hasMore, groups: $groups)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupMembersCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $LoadedGroupMembersCopyWith(LoadedGroupMembers value, $Res Function(LoadedGroupMembers) _then) = _$LoadedGroupMembersCopyWithImpl;
@useResult
$Res call({
 List<GroupMember> groupMembers, int currentPage, int limit, bool hasMore, Map<String, Group>? groups
});




}
/// @nodoc
class _$LoadedGroupMembersCopyWithImpl<$Res>
    implements $LoadedGroupMembersCopyWith<$Res> {
  _$LoadedGroupMembersCopyWithImpl(this._self, this._then);

  final LoadedGroupMembers _self;
  final $Res Function(LoadedGroupMembers) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMembers = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,Object? groups = freezed,}) {
  return _then(LoadedGroupMembers(
null == groupMembers ? _self._groupMembers : groupMembers // ignore: cast_nullable_to_non_nullable
as List<GroupMember>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,groups: freezed == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as Map<String, Group>?,
  ));
}


}

/// @nodoc


class GroupMember_Error implements GroupMemberState {
  const GroupMember_Error(this.message);
  

 final  String message;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMember_ErrorCopyWith<GroupMember_Error> get copyWith => _$GroupMember_ErrorCopyWithImpl<GroupMember_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupMemberState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GroupMember_ErrorCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $GroupMember_ErrorCopyWith(GroupMember_Error value, $Res Function(GroupMember_Error) _then) = _$GroupMember_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GroupMember_ErrorCopyWithImpl<$Res>
    implements $GroupMember_ErrorCopyWith<$Res> {
  _$GroupMember_ErrorCopyWithImpl(this._self, this._then);

  final GroupMember_Error _self;
  final $Res Function(GroupMember_Error) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GroupMember_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GroupMember_Success implements GroupMemberState {
  const GroupMember_Success(this.message);
  

 final  String message;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMember_SuccessCopyWith<GroupMember_Success> get copyWith => _$GroupMember_SuccessCopyWithImpl<GroupMember_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupMemberState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $GroupMember_SuccessCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $GroupMember_SuccessCopyWith(GroupMember_Success value, $Res Function(GroupMember_Success) _then) = _$GroupMember_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GroupMember_SuccessCopyWithImpl<$Res>
    implements $GroupMember_SuccessCopyWith<$Res> {
  _$GroupMember_SuccessCopyWithImpl(this._self, this._then);

  final GroupMember_Success _self;
  final $Res Function(GroupMember_Success) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GroupMember_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
