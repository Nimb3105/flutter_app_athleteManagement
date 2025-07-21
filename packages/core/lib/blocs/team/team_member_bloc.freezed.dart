// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TeamMemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamMemberEvent()';
}


}

/// @nodoc
class $TeamMemberEventCopyWith<$Res>  {
$TeamMemberEventCopyWith(TeamMemberEvent _, $Res Function(TeamMemberEvent) __);
}


/// Adds pattern-matching-related methods to [TeamMemberEvent].
extension TeamMemberEventPatterns on TeamMemberEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateTeamMember value)?  createTeamMember,TResult Function( _GetTeamMemberById value)?  getTeamMemberById,TResult Function( _GetTeamMembersByTeamId value)?  getTeamMembersByTeamId,TResult Function( _GetTeamMembersByUserId value)?  getTeamMembersByUserId,TResult Function( _GetAllTeamMembers value)?  getAllTeamMembers,TResult Function( _UpdateTeamMember value)?  updateTeamMember,TResult Function( _DeleteTeamMember value)?  deleteTeamMember,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTeamMember() when createTeamMember != null:
return createTeamMember(_that);case _GetTeamMemberById() when getTeamMemberById != null:
return getTeamMemberById(_that);case _GetTeamMembersByTeamId() when getTeamMembersByTeamId != null:
return getTeamMembersByTeamId(_that);case _GetTeamMembersByUserId() when getTeamMembersByUserId != null:
return getTeamMembersByUserId(_that);case _GetAllTeamMembers() when getAllTeamMembers != null:
return getAllTeamMembers(_that);case _UpdateTeamMember() when updateTeamMember != null:
return updateTeamMember(_that);case _DeleteTeamMember() when deleteTeamMember != null:
return deleteTeamMember(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateTeamMember value)  createTeamMember,required TResult Function( _GetTeamMemberById value)  getTeamMemberById,required TResult Function( _GetTeamMembersByTeamId value)  getTeamMembersByTeamId,required TResult Function( _GetTeamMembersByUserId value)  getTeamMembersByUserId,required TResult Function( _GetAllTeamMembers value)  getAllTeamMembers,required TResult Function( _UpdateTeamMember value)  updateTeamMember,required TResult Function( _DeleteTeamMember value)  deleteTeamMember,}){
final _that = this;
switch (_that) {
case _CreateTeamMember():
return createTeamMember(_that);case _GetTeamMemberById():
return getTeamMemberById(_that);case _GetTeamMembersByTeamId():
return getTeamMembersByTeamId(_that);case _GetTeamMembersByUserId():
return getTeamMembersByUserId(_that);case _GetAllTeamMembers():
return getAllTeamMembers(_that);case _UpdateTeamMember():
return updateTeamMember(_that);case _DeleteTeamMember():
return deleteTeamMember(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateTeamMember value)?  createTeamMember,TResult? Function( _GetTeamMemberById value)?  getTeamMemberById,TResult? Function( _GetTeamMembersByTeamId value)?  getTeamMembersByTeamId,TResult? Function( _GetTeamMembersByUserId value)?  getTeamMembersByUserId,TResult? Function( _GetAllTeamMembers value)?  getAllTeamMembers,TResult? Function( _UpdateTeamMember value)?  updateTeamMember,TResult? Function( _DeleteTeamMember value)?  deleteTeamMember,}){
final _that = this;
switch (_that) {
case _CreateTeamMember() when createTeamMember != null:
return createTeamMember(_that);case _GetTeamMemberById() when getTeamMemberById != null:
return getTeamMemberById(_that);case _GetTeamMembersByTeamId() when getTeamMembersByTeamId != null:
return getTeamMembersByTeamId(_that);case _GetTeamMembersByUserId() when getTeamMembersByUserId != null:
return getTeamMembersByUserId(_that);case _GetAllTeamMembers() when getAllTeamMembers != null:
return getAllTeamMembers(_that);case _UpdateTeamMember() when updateTeamMember != null:
return updateTeamMember(_that);case _DeleteTeamMember() when deleteTeamMember != null:
return deleteTeamMember(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TeamMember teamMember)?  createTeamMember,TResult Function( String id)?  getTeamMemberById,TResult Function( String teamId)?  getTeamMembersByTeamId,TResult Function( String userId)?  getTeamMembersByUserId,TResult Function( int page,  int limit)?  getAllTeamMembers,TResult Function( String id,  TeamMember teamMember)?  updateTeamMember,TResult Function( String id)?  deleteTeamMember,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeamMember() when createTeamMember != null:
return createTeamMember(_that.teamMember);case _GetTeamMemberById() when getTeamMemberById != null:
return getTeamMemberById(_that.id);case _GetTeamMembersByTeamId() when getTeamMembersByTeamId != null:
return getTeamMembersByTeamId(_that.teamId);case _GetTeamMembersByUserId() when getTeamMembersByUserId != null:
return getTeamMembersByUserId(_that.userId);case _GetAllTeamMembers() when getAllTeamMembers != null:
return getAllTeamMembers(_that.page,_that.limit);case _UpdateTeamMember() when updateTeamMember != null:
return updateTeamMember(_that.id,_that.teamMember);case _DeleteTeamMember() when deleteTeamMember != null:
return deleteTeamMember(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TeamMember teamMember)  createTeamMember,required TResult Function( String id)  getTeamMemberById,required TResult Function( String teamId)  getTeamMembersByTeamId,required TResult Function( String userId)  getTeamMembersByUserId,required TResult Function( int page,  int limit)  getAllTeamMembers,required TResult Function( String id,  TeamMember teamMember)  updateTeamMember,required TResult Function( String id)  deleteTeamMember,}) {final _that = this;
switch (_that) {
case _CreateTeamMember():
return createTeamMember(_that.teamMember);case _GetTeamMemberById():
return getTeamMemberById(_that.id);case _GetTeamMembersByTeamId():
return getTeamMembersByTeamId(_that.teamId);case _GetTeamMembersByUserId():
return getTeamMembersByUserId(_that.userId);case _GetAllTeamMembers():
return getAllTeamMembers(_that.page,_that.limit);case _UpdateTeamMember():
return updateTeamMember(_that.id,_that.teamMember);case _DeleteTeamMember():
return deleteTeamMember(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TeamMember teamMember)?  createTeamMember,TResult? Function( String id)?  getTeamMemberById,TResult? Function( String teamId)?  getTeamMembersByTeamId,TResult? Function( String userId)?  getTeamMembersByUserId,TResult? Function( int page,  int limit)?  getAllTeamMembers,TResult? Function( String id,  TeamMember teamMember)?  updateTeamMember,TResult? Function( String id)?  deleteTeamMember,}) {final _that = this;
switch (_that) {
case _CreateTeamMember() when createTeamMember != null:
return createTeamMember(_that.teamMember);case _GetTeamMemberById() when getTeamMemberById != null:
return getTeamMemberById(_that.id);case _GetTeamMembersByTeamId() when getTeamMembersByTeamId != null:
return getTeamMembersByTeamId(_that.teamId);case _GetTeamMembersByUserId() when getTeamMembersByUserId != null:
return getTeamMembersByUserId(_that.userId);case _GetAllTeamMembers() when getAllTeamMembers != null:
return getAllTeamMembers(_that.page,_that.limit);case _UpdateTeamMember() when updateTeamMember != null:
return updateTeamMember(_that.id,_that.teamMember);case _DeleteTeamMember() when deleteTeamMember != null:
return deleteTeamMember(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeamMember implements TeamMemberEvent {
  const _CreateTeamMember(this.teamMember);
  

 final  TeamMember teamMember;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeamMemberCopyWith<_CreateTeamMember> get copyWith => __$CreateTeamMemberCopyWithImpl<_CreateTeamMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeamMember&&(identical(other.teamMember, teamMember) || other.teamMember == teamMember));
}


@override
int get hashCode => Object.hash(runtimeType,teamMember);

@override
String toString() {
  return 'TeamMemberEvent.createTeamMember(teamMember: $teamMember)';
}


}

/// @nodoc
abstract mixin class _$CreateTeamMemberCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$CreateTeamMemberCopyWith(_CreateTeamMember value, $Res Function(_CreateTeamMember) _then) = __$CreateTeamMemberCopyWithImpl;
@useResult
$Res call({
 TeamMember teamMember
});


$TeamMemberCopyWith<$Res> get teamMember;

}
/// @nodoc
class __$CreateTeamMemberCopyWithImpl<$Res>
    implements _$CreateTeamMemberCopyWith<$Res> {
  __$CreateTeamMemberCopyWithImpl(this._self, this._then);

  final _CreateTeamMember _self;
  final $Res Function(_CreateTeamMember) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? teamMember = null,}) {
  return _then(_CreateTeamMember(
null == teamMember ? _self.teamMember : teamMember // ignore: cast_nullable_to_non_nullable
as TeamMember,
  ));
}

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<$Res> get teamMember {
  
  return $TeamMemberCopyWith<$Res>(_self.teamMember, (value) {
    return _then(_self.copyWith(teamMember: value));
  });
}
}

/// @nodoc


class _GetTeamMemberById implements TeamMemberEvent {
  const _GetTeamMemberById(this.id);
  

 final  String id;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTeamMemberByIdCopyWith<_GetTeamMemberById> get copyWith => __$GetTeamMemberByIdCopyWithImpl<_GetTeamMemberById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTeamMemberById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TeamMemberEvent.getTeamMemberById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTeamMemberByIdCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$GetTeamMemberByIdCopyWith(_GetTeamMemberById value, $Res Function(_GetTeamMemberById) _then) = __$GetTeamMemberByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetTeamMemberByIdCopyWithImpl<$Res>
    implements _$GetTeamMemberByIdCopyWith<$Res> {
  __$GetTeamMemberByIdCopyWithImpl(this._self, this._then);

  final _GetTeamMemberById _self;
  final $Res Function(_GetTeamMemberById) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTeamMemberById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetTeamMembersByTeamId implements TeamMemberEvent {
  const _GetTeamMembersByTeamId(this.teamId);
  

 final  String teamId;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTeamMembersByTeamIdCopyWith<_GetTeamMembersByTeamId> get copyWith => __$GetTeamMembersByTeamIdCopyWithImpl<_GetTeamMembersByTeamId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTeamMembersByTeamId&&(identical(other.teamId, teamId) || other.teamId == teamId));
}


@override
int get hashCode => Object.hash(runtimeType,teamId);

@override
String toString() {
  return 'TeamMemberEvent.getTeamMembersByTeamId(teamId: $teamId)';
}


}

/// @nodoc
abstract mixin class _$GetTeamMembersByTeamIdCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$GetTeamMembersByTeamIdCopyWith(_GetTeamMembersByTeamId value, $Res Function(_GetTeamMembersByTeamId) _then) = __$GetTeamMembersByTeamIdCopyWithImpl;
@useResult
$Res call({
 String teamId
});




}
/// @nodoc
class __$GetTeamMembersByTeamIdCopyWithImpl<$Res>
    implements _$GetTeamMembersByTeamIdCopyWith<$Res> {
  __$GetTeamMembersByTeamIdCopyWithImpl(this._self, this._then);

  final _GetTeamMembersByTeamId _self;
  final $Res Function(_GetTeamMembersByTeamId) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? teamId = null,}) {
  return _then(_GetTeamMembersByTeamId(
null == teamId ? _self.teamId : teamId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetTeamMembersByUserId implements TeamMemberEvent {
  const _GetTeamMembersByUserId(this.userId);
  

 final  String userId;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTeamMembersByUserIdCopyWith<_GetTeamMembersByUserId> get copyWith => __$GetTeamMembersByUserIdCopyWithImpl<_GetTeamMembersByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTeamMembersByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'TeamMemberEvent.getTeamMembersByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetTeamMembersByUserIdCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$GetTeamMembersByUserIdCopyWith(_GetTeamMembersByUserId value, $Res Function(_GetTeamMembersByUserId) _then) = __$GetTeamMembersByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetTeamMembersByUserIdCopyWithImpl<$Res>
    implements _$GetTeamMembersByUserIdCopyWith<$Res> {
  __$GetTeamMembersByUserIdCopyWithImpl(this._self, this._then);

  final _GetTeamMembersByUserId _self;
  final $Res Function(_GetTeamMembersByUserId) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetTeamMembersByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllTeamMembers implements TeamMemberEvent {
  const _GetAllTeamMembers({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllTeamMembersCopyWith<_GetAllTeamMembers> get copyWith => __$GetAllTeamMembersCopyWithImpl<_GetAllTeamMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllTeamMembers&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'TeamMemberEvent.getAllTeamMembers(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllTeamMembersCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$GetAllTeamMembersCopyWith(_GetAllTeamMembers value, $Res Function(_GetAllTeamMembers) _then) = __$GetAllTeamMembersCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllTeamMembersCopyWithImpl<$Res>
    implements _$GetAllTeamMembersCopyWith<$Res> {
  __$GetAllTeamMembersCopyWithImpl(this._self, this._then);

  final _GetAllTeamMembers _self;
  final $Res Function(_GetAllTeamMembers) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllTeamMembers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateTeamMember implements TeamMemberEvent {
  const _UpdateTeamMember(this.id, this.teamMember);
  

 final  String id;
 final  TeamMember teamMember;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTeamMemberCopyWith<_UpdateTeamMember> get copyWith => __$UpdateTeamMemberCopyWithImpl<_UpdateTeamMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.teamMember, teamMember) || other.teamMember == teamMember));
}


@override
int get hashCode => Object.hash(runtimeType,id,teamMember);

@override
String toString() {
  return 'TeamMemberEvent.updateTeamMember(id: $id, teamMember: $teamMember)';
}


}

/// @nodoc
abstract mixin class _$UpdateTeamMemberCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$UpdateTeamMemberCopyWith(_UpdateTeamMember value, $Res Function(_UpdateTeamMember) _then) = __$UpdateTeamMemberCopyWithImpl;
@useResult
$Res call({
 String id, TeamMember teamMember
});


$TeamMemberCopyWith<$Res> get teamMember;

}
/// @nodoc
class __$UpdateTeamMemberCopyWithImpl<$Res>
    implements _$UpdateTeamMemberCopyWith<$Res> {
  __$UpdateTeamMemberCopyWithImpl(this._self, this._then);

  final _UpdateTeamMember _self;
  final $Res Function(_UpdateTeamMember) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? teamMember = null,}) {
  return _then(_UpdateTeamMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == teamMember ? _self.teamMember : teamMember // ignore: cast_nullable_to_non_nullable
as TeamMember,
  ));
}

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<$Res> get teamMember {
  
  return $TeamMemberCopyWith<$Res>(_self.teamMember, (value) {
    return _then(_self.copyWith(teamMember: value));
  });
}
}

/// @nodoc


class _DeleteTeamMember implements TeamMemberEvent {
  const _DeleteTeamMember(this.id);
  

 final  String id;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTeamMemberCopyWith<_DeleteTeamMember> get copyWith => __$DeleteTeamMemberCopyWithImpl<_DeleteTeamMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTeamMember&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TeamMemberEvent.deleteTeamMember(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTeamMemberCopyWith<$Res> implements $TeamMemberEventCopyWith<$Res> {
  factory _$DeleteTeamMemberCopyWith(_DeleteTeamMember value, $Res Function(_DeleteTeamMember) _then) = __$DeleteTeamMemberCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteTeamMemberCopyWithImpl<$Res>
    implements _$DeleteTeamMemberCopyWith<$Res> {
  __$DeleteTeamMemberCopyWithImpl(this._self, this._then);

  final _DeleteTeamMember _self;
  final $Res Function(_DeleteTeamMember) _then;

/// Create a copy of TeamMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTeamMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TeamMemberState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamMemberState()';
}


}

/// @nodoc
class $TeamMemberStateCopyWith<$Res>  {
$TeamMemberStateCopyWith(TeamMemberState _, $Res Function(TeamMemberState) __);
}


/// Adds pattern-matching-related methods to [TeamMemberState].
extension TeamMemberStatePatterns on TeamMemberState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TeamMember_Initial value)?  initial,TResult Function( TeamMember_Loading value)?  loading,TResult Function( LoadedTeamMember value)?  loadedTeamMember,TResult Function( LoadedTeamMembers value)?  loadedTeamMembers,TResult Function( TeamMember_Error value)?  error,TResult Function( TeamMember_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TeamMember_Initial() when initial != null:
return initial(_that);case TeamMember_Loading() when loading != null:
return loading(_that);case LoadedTeamMember() when loadedTeamMember != null:
return loadedTeamMember(_that);case LoadedTeamMembers() when loadedTeamMembers != null:
return loadedTeamMembers(_that);case TeamMember_Error() when error != null:
return error(_that);case TeamMember_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TeamMember_Initial value)  initial,required TResult Function( TeamMember_Loading value)  loading,required TResult Function( LoadedTeamMember value)  loadedTeamMember,required TResult Function( LoadedTeamMembers value)  loadedTeamMembers,required TResult Function( TeamMember_Error value)  error,required TResult Function( TeamMember_Success value)  success,}){
final _that = this;
switch (_that) {
case TeamMember_Initial():
return initial(_that);case TeamMember_Loading():
return loading(_that);case LoadedTeamMember():
return loadedTeamMember(_that);case LoadedTeamMembers():
return loadedTeamMembers(_that);case TeamMember_Error():
return error(_that);case TeamMember_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TeamMember_Initial value)?  initial,TResult? Function( TeamMember_Loading value)?  loading,TResult? Function( LoadedTeamMember value)?  loadedTeamMember,TResult? Function( LoadedTeamMembers value)?  loadedTeamMembers,TResult? Function( TeamMember_Error value)?  error,TResult? Function( TeamMember_Success value)?  success,}){
final _that = this;
switch (_that) {
case TeamMember_Initial() when initial != null:
return initial(_that);case TeamMember_Loading() when loading != null:
return loading(_that);case LoadedTeamMember() when loadedTeamMember != null:
return loadedTeamMember(_that);case LoadedTeamMembers() when loadedTeamMembers != null:
return loadedTeamMembers(_that);case TeamMember_Error() when error != null:
return error(_that);case TeamMember_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TeamMember teamMember)?  loadedTeamMember,TResult Function( List<TeamMember> teamMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Team>? teams,  Map<String, Sport>? sports)?  loadedTeamMembers,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TeamMember_Initial() when initial != null:
return initial();case TeamMember_Loading() when loading != null:
return loading();case LoadedTeamMember() when loadedTeamMember != null:
return loadedTeamMember(_that.teamMember);case LoadedTeamMembers() when loadedTeamMembers != null:
return loadedTeamMembers(_that.teamMembers,_that.currentPage,_that.limit,_that.hasMore,_that.teams,_that.sports);case TeamMember_Error() when error != null:
return error(_that.message);case TeamMember_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TeamMember teamMember)  loadedTeamMember,required TResult Function( List<TeamMember> teamMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Team>? teams,  Map<String, Sport>? sports)  loadedTeamMembers,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case TeamMember_Initial():
return initial();case TeamMember_Loading():
return loading();case LoadedTeamMember():
return loadedTeamMember(_that.teamMember);case LoadedTeamMembers():
return loadedTeamMembers(_that.teamMembers,_that.currentPage,_that.limit,_that.hasMore,_that.teams,_that.sports);case TeamMember_Error():
return error(_that.message);case TeamMember_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TeamMember teamMember)?  loadedTeamMember,TResult? Function( List<TeamMember> teamMembers,  int currentPage,  int limit,  bool hasMore,  Map<String, Team>? teams,  Map<String, Sport>? sports)?  loadedTeamMembers,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case TeamMember_Initial() when initial != null:
return initial();case TeamMember_Loading() when loading != null:
return loading();case LoadedTeamMember() when loadedTeamMember != null:
return loadedTeamMember(_that.teamMember);case LoadedTeamMembers() when loadedTeamMembers != null:
return loadedTeamMembers(_that.teamMembers,_that.currentPage,_that.limit,_that.hasMore,_that.teams,_that.sports);case TeamMember_Error() when error != null:
return error(_that.message);case TeamMember_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TeamMember_Initial implements TeamMemberState {
  const TeamMember_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamMemberState.initial()';
}


}




/// @nodoc


class TeamMember_Loading implements TeamMemberState {
  const TeamMember_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamMemberState.loading()';
}


}




/// @nodoc


class LoadedTeamMember implements TeamMemberState {
  const LoadedTeamMember(this.teamMember);
  

 final  TeamMember teamMember;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTeamMemberCopyWith<LoadedTeamMember> get copyWith => _$LoadedTeamMemberCopyWithImpl<LoadedTeamMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTeamMember&&(identical(other.teamMember, teamMember) || other.teamMember == teamMember));
}


@override
int get hashCode => Object.hash(runtimeType,teamMember);

@override
String toString() {
  return 'TeamMemberState.loadedTeamMember(teamMember: $teamMember)';
}


}

/// @nodoc
abstract mixin class $LoadedTeamMemberCopyWith<$Res> implements $TeamMemberStateCopyWith<$Res> {
  factory $LoadedTeamMemberCopyWith(LoadedTeamMember value, $Res Function(LoadedTeamMember) _then) = _$LoadedTeamMemberCopyWithImpl;
@useResult
$Res call({
 TeamMember teamMember
});


$TeamMemberCopyWith<$Res> get teamMember;

}
/// @nodoc
class _$LoadedTeamMemberCopyWithImpl<$Res>
    implements $LoadedTeamMemberCopyWith<$Res> {
  _$LoadedTeamMemberCopyWithImpl(this._self, this._then);

  final LoadedTeamMember _self;
  final $Res Function(LoadedTeamMember) _then;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? teamMember = null,}) {
  return _then(LoadedTeamMember(
null == teamMember ? _self.teamMember : teamMember // ignore: cast_nullable_to_non_nullable
as TeamMember,
  ));
}

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<$Res> get teamMember {
  
  return $TeamMemberCopyWith<$Res>(_self.teamMember, (value) {
    return _then(_self.copyWith(teamMember: value));
  });
}
}

/// @nodoc


class LoadedTeamMembers implements TeamMemberState {
  const LoadedTeamMembers(final  List<TeamMember> teamMembers, this.currentPage, this.limit, this.hasMore, {final  Map<String, Team>? teams, final  Map<String, Sport>? sports}): _teamMembers = teamMembers,_teams = teams,_sports = sports;
  

 final  List<TeamMember> _teamMembers;
 List<TeamMember> get teamMembers {
  if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teamMembers);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;
 final  Map<String, Team>? _teams;
 Map<String, Team>? get teams {
  final value = _teams;
  if (value == null) return null;
  if (_teams is EqualUnmodifiableMapView) return _teams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Sport>? _sports;
 Map<String, Sport>? get sports {
  final value = _sports;
  if (value == null) return null;
  if (_sports is EqualUnmodifiableMapView) return _sports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTeamMembersCopyWith<LoadedTeamMembers> get copyWith => _$LoadedTeamMembersCopyWithImpl<LoadedTeamMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTeamMembers&&const DeepCollectionEquality().equals(other._teamMembers, _teamMembers)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._teams, _teams)&&const DeepCollectionEquality().equals(other._sports, _sports));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_teamMembers),currentPage,limit,hasMore,const DeepCollectionEquality().hash(_teams),const DeepCollectionEquality().hash(_sports));

@override
String toString() {
  return 'TeamMemberState.loadedTeamMembers(teamMembers: $teamMembers, currentPage: $currentPage, limit: $limit, hasMore: $hasMore, teams: $teams, sports: $sports)';
}


}

/// @nodoc
abstract mixin class $LoadedTeamMembersCopyWith<$Res> implements $TeamMemberStateCopyWith<$Res> {
  factory $LoadedTeamMembersCopyWith(LoadedTeamMembers value, $Res Function(LoadedTeamMembers) _then) = _$LoadedTeamMembersCopyWithImpl;
@useResult
$Res call({
 List<TeamMember> teamMembers, int currentPage, int limit, bool hasMore, Map<String, Team>? teams, Map<String, Sport>? sports
});




}
/// @nodoc
class _$LoadedTeamMembersCopyWithImpl<$Res>
    implements $LoadedTeamMembersCopyWith<$Res> {
  _$LoadedTeamMembersCopyWithImpl(this._self, this._then);

  final LoadedTeamMembers _self;
  final $Res Function(LoadedTeamMembers) _then;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? teamMembers = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,Object? teams = freezed,Object? sports = freezed,}) {
  return _then(LoadedTeamMembers(
null == teamMembers ? _self._teamMembers : teamMembers // ignore: cast_nullable_to_non_nullable
as List<TeamMember>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,teams: freezed == teams ? _self._teams : teams // ignore: cast_nullable_to_non_nullable
as Map<String, Team>?,sports: freezed == sports ? _self._sports : sports // ignore: cast_nullable_to_non_nullable
as Map<String, Sport>?,
  ));
}


}

/// @nodoc


class TeamMember_Error implements TeamMemberState {
  const TeamMember_Error(this.message);
  

 final  String message;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMember_ErrorCopyWith<TeamMember_Error> get copyWith => _$TeamMember_ErrorCopyWithImpl<TeamMember_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TeamMemberState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TeamMember_ErrorCopyWith<$Res> implements $TeamMemberStateCopyWith<$Res> {
  factory $TeamMember_ErrorCopyWith(TeamMember_Error value, $Res Function(TeamMember_Error) _then) = _$TeamMember_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TeamMember_ErrorCopyWithImpl<$Res>
    implements $TeamMember_ErrorCopyWith<$Res> {
  _$TeamMember_ErrorCopyWithImpl(this._self, this._then);

  final TeamMember_Error _self;
  final $Res Function(TeamMember_Error) _then;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TeamMember_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TeamMember_Success implements TeamMemberState {
  const TeamMember_Success(this.message);
  

 final  String message;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMember_SuccessCopyWith<TeamMember_Success> get copyWith => _$TeamMember_SuccessCopyWithImpl<TeamMember_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TeamMemberState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TeamMember_SuccessCopyWith<$Res> implements $TeamMemberStateCopyWith<$Res> {
  factory $TeamMember_SuccessCopyWith(TeamMember_Success value, $Res Function(TeamMember_Success) _then) = _$TeamMember_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TeamMember_SuccessCopyWithImpl<$Res>
    implements $TeamMember_SuccessCopyWith<$Res> {
  _$TeamMember_SuccessCopyWithImpl(this._self, this._then);

  final TeamMember_Success _self;
  final $Res Function(TeamMember_Success) _then;

/// Create a copy of TeamMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TeamMember_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
