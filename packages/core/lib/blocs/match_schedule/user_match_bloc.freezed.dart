// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_match_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserMatchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserMatchEvent()';
}


}

/// @nodoc
class $UserMatchEventCopyWith<$Res>  {
$UserMatchEventCopyWith(UserMatchEvent _, $Res Function(UserMatchEvent) __);
}


/// Adds pattern-matching-related methods to [UserMatchEvent].
extension UserMatchEventPatterns on UserMatchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateUserMatch value)?  createUserMatch,TResult Function( _GetUserMatchById value)?  getUserMatchById,TResult Function( _GetUserMatchByUserId value)?  getUserMatchByUserId,TResult Function( _GetAllUserMatches value)?  getAllUserMatches,TResult Function( _UpdateUserMatch value)?  updateUserMatch,TResult Function( _DeleteUserMatch value)?  deleteUserMatch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserMatch() when createUserMatch != null:
return createUserMatch(_that);case _GetUserMatchById() when getUserMatchById != null:
return getUserMatchById(_that);case _GetUserMatchByUserId() when getUserMatchByUserId != null:
return getUserMatchByUserId(_that);case _GetAllUserMatches() when getAllUserMatches != null:
return getAllUserMatches(_that);case _UpdateUserMatch() when updateUserMatch != null:
return updateUserMatch(_that);case _DeleteUserMatch() when deleteUserMatch != null:
return deleteUserMatch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateUserMatch value)  createUserMatch,required TResult Function( _GetUserMatchById value)  getUserMatchById,required TResult Function( _GetUserMatchByUserId value)  getUserMatchByUserId,required TResult Function( _GetAllUserMatches value)  getAllUserMatches,required TResult Function( _UpdateUserMatch value)  updateUserMatch,required TResult Function( _DeleteUserMatch value)  deleteUserMatch,}){
final _that = this;
switch (_that) {
case _CreateUserMatch():
return createUserMatch(_that);case _GetUserMatchById():
return getUserMatchById(_that);case _GetUserMatchByUserId():
return getUserMatchByUserId(_that);case _GetAllUserMatches():
return getAllUserMatches(_that);case _UpdateUserMatch():
return updateUserMatch(_that);case _DeleteUserMatch():
return deleteUserMatch(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateUserMatch value)?  createUserMatch,TResult? Function( _GetUserMatchById value)?  getUserMatchById,TResult? Function( _GetUserMatchByUserId value)?  getUserMatchByUserId,TResult? Function( _GetAllUserMatches value)?  getAllUserMatches,TResult? Function( _UpdateUserMatch value)?  updateUserMatch,TResult? Function( _DeleteUserMatch value)?  deleteUserMatch,}){
final _that = this;
switch (_that) {
case _CreateUserMatch() when createUserMatch != null:
return createUserMatch(_that);case _GetUserMatchById() when getUserMatchById != null:
return getUserMatchById(_that);case _GetUserMatchByUserId() when getUserMatchByUserId != null:
return getUserMatchByUserId(_that);case _GetAllUserMatches() when getAllUserMatches != null:
return getAllUserMatches(_that);case _UpdateUserMatch() when updateUserMatch != null:
return updateUserMatch(_that);case _DeleteUserMatch() when deleteUserMatch != null:
return deleteUserMatch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserMatch userMatch)?  createUserMatch,TResult Function( String id)?  getUserMatchById,TResult Function( String userId)?  getUserMatchByUserId,TResult Function( int page,  int limit)?  getAllUserMatches,TResult Function( String id,  UserMatch userMatch)?  updateUserMatch,TResult Function( String id)?  deleteUserMatch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserMatch() when createUserMatch != null:
return createUserMatch(_that.userMatch);case _GetUserMatchById() when getUserMatchById != null:
return getUserMatchById(_that.id);case _GetUserMatchByUserId() when getUserMatchByUserId != null:
return getUserMatchByUserId(_that.userId);case _GetAllUserMatches() when getAllUserMatches != null:
return getAllUserMatches(_that.page,_that.limit);case _UpdateUserMatch() when updateUserMatch != null:
return updateUserMatch(_that.id,_that.userMatch);case _DeleteUserMatch() when deleteUserMatch != null:
return deleteUserMatch(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserMatch userMatch)  createUserMatch,required TResult Function( String id)  getUserMatchById,required TResult Function( String userId)  getUserMatchByUserId,required TResult Function( int page,  int limit)  getAllUserMatches,required TResult Function( String id,  UserMatch userMatch)  updateUserMatch,required TResult Function( String id)  deleteUserMatch,}) {final _that = this;
switch (_that) {
case _CreateUserMatch():
return createUserMatch(_that.userMatch);case _GetUserMatchById():
return getUserMatchById(_that.id);case _GetUserMatchByUserId():
return getUserMatchByUserId(_that.userId);case _GetAllUserMatches():
return getAllUserMatches(_that.page,_that.limit);case _UpdateUserMatch():
return updateUserMatch(_that.id,_that.userMatch);case _DeleteUserMatch():
return deleteUserMatch(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserMatch userMatch)?  createUserMatch,TResult? Function( String id)?  getUserMatchById,TResult? Function( String userId)?  getUserMatchByUserId,TResult? Function( int page,  int limit)?  getAllUserMatches,TResult? Function( String id,  UserMatch userMatch)?  updateUserMatch,TResult? Function( String id)?  deleteUserMatch,}) {final _that = this;
switch (_that) {
case _CreateUserMatch() when createUserMatch != null:
return createUserMatch(_that.userMatch);case _GetUserMatchById() when getUserMatchById != null:
return getUserMatchById(_that.id);case _GetUserMatchByUserId() when getUserMatchByUserId != null:
return getUserMatchByUserId(_that.userId);case _GetAllUserMatches() when getAllUserMatches != null:
return getAllUserMatches(_that.page,_that.limit);case _UpdateUserMatch() when updateUserMatch != null:
return updateUserMatch(_that.id,_that.userMatch);case _DeleteUserMatch() when deleteUserMatch != null:
return deleteUserMatch(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateUserMatch implements UserMatchEvent {
  const _CreateUserMatch(this.userMatch);
  

 final  UserMatch userMatch;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserMatchCopyWith<_CreateUserMatch> get copyWith => __$CreateUserMatchCopyWithImpl<_CreateUserMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserMatch&&(identical(other.userMatch, userMatch) || other.userMatch == userMatch));
}


@override
int get hashCode => Object.hash(runtimeType,userMatch);

@override
String toString() {
  return 'UserMatchEvent.createUserMatch(userMatch: $userMatch)';
}


}

/// @nodoc
abstract mixin class _$CreateUserMatchCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$CreateUserMatchCopyWith(_CreateUserMatch value, $Res Function(_CreateUserMatch) _then) = __$CreateUserMatchCopyWithImpl;
@useResult
$Res call({
 UserMatch userMatch
});


$UserMatchCopyWith<$Res> get userMatch;

}
/// @nodoc
class __$CreateUserMatchCopyWithImpl<$Res>
    implements _$CreateUserMatchCopyWith<$Res> {
  __$CreateUserMatchCopyWithImpl(this._self, this._then);

  final _CreateUserMatch _self;
  final $Res Function(_CreateUserMatch) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userMatch = null,}) {
  return _then(_CreateUserMatch(
null == userMatch ? _self.userMatch : userMatch // ignore: cast_nullable_to_non_nullable
as UserMatch,
  ));
}

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMatchCopyWith<$Res> get userMatch {
  
  return $UserMatchCopyWith<$Res>(_self.userMatch, (value) {
    return _then(_self.copyWith(userMatch: value));
  });
}
}

/// @nodoc


class _GetUserMatchById implements UserMatchEvent {
  const _GetUserMatchById(this.id);
  

 final  String id;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserMatchByIdCopyWith<_GetUserMatchById> get copyWith => __$GetUserMatchByIdCopyWithImpl<_GetUserMatchById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserMatchById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserMatchEvent.getUserMatchById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetUserMatchByIdCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$GetUserMatchByIdCopyWith(_GetUserMatchById value, $Res Function(_GetUserMatchById) _then) = __$GetUserMatchByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetUserMatchByIdCopyWithImpl<$Res>
    implements _$GetUserMatchByIdCopyWith<$Res> {
  __$GetUserMatchByIdCopyWithImpl(this._self, this._then);

  final _GetUserMatchById _self;
  final $Res Function(_GetUserMatchById) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetUserMatchById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetUserMatchByUserId implements UserMatchEvent {
  const _GetUserMatchByUserId(this.userId);
  

 final  String userId;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserMatchByUserIdCopyWith<_GetUserMatchByUserId> get copyWith => __$GetUserMatchByUserIdCopyWithImpl<_GetUserMatchByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserMatchByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UserMatchEvent.getUserMatchByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetUserMatchByUserIdCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$GetUserMatchByUserIdCopyWith(_GetUserMatchByUserId value, $Res Function(_GetUserMatchByUserId) _then) = __$GetUserMatchByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetUserMatchByUserIdCopyWithImpl<$Res>
    implements _$GetUserMatchByUserIdCopyWith<$Res> {
  __$GetUserMatchByUserIdCopyWithImpl(this._self, this._then);

  final _GetUserMatchByUserId _self;
  final $Res Function(_GetUserMatchByUserId) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetUserMatchByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllUserMatches implements UserMatchEvent {
  const _GetAllUserMatches({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllUserMatchesCopyWith<_GetAllUserMatches> get copyWith => __$GetAllUserMatchesCopyWithImpl<_GetAllUserMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllUserMatches&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'UserMatchEvent.getAllUserMatches(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllUserMatchesCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$GetAllUserMatchesCopyWith(_GetAllUserMatches value, $Res Function(_GetAllUserMatches) _then) = __$GetAllUserMatchesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllUserMatchesCopyWithImpl<$Res>
    implements _$GetAllUserMatchesCopyWith<$Res> {
  __$GetAllUserMatchesCopyWithImpl(this._self, this._then);

  final _GetAllUserMatches _self;
  final $Res Function(_GetAllUserMatches) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllUserMatches(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateUserMatch implements UserMatchEvent {
  const _UpdateUserMatch(this.id, this.userMatch);
  

 final  String id;
 final  UserMatch userMatch;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserMatchCopyWith<_UpdateUserMatch> get copyWith => __$UpdateUserMatchCopyWithImpl<_UpdateUserMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserMatch&&(identical(other.id, id) || other.id == id)&&(identical(other.userMatch, userMatch) || other.userMatch == userMatch));
}


@override
int get hashCode => Object.hash(runtimeType,id,userMatch);

@override
String toString() {
  return 'UserMatchEvent.updateUserMatch(id: $id, userMatch: $userMatch)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserMatchCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$UpdateUserMatchCopyWith(_UpdateUserMatch value, $Res Function(_UpdateUserMatch) _then) = __$UpdateUserMatchCopyWithImpl;
@useResult
$Res call({
 String id, UserMatch userMatch
});


$UserMatchCopyWith<$Res> get userMatch;

}
/// @nodoc
class __$UpdateUserMatchCopyWithImpl<$Res>
    implements _$UpdateUserMatchCopyWith<$Res> {
  __$UpdateUserMatchCopyWithImpl(this._self, this._then);

  final _UpdateUserMatch _self;
  final $Res Function(_UpdateUserMatch) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userMatch = null,}) {
  return _then(_UpdateUserMatch(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == userMatch ? _self.userMatch : userMatch // ignore: cast_nullable_to_non_nullable
as UserMatch,
  ));
}

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMatchCopyWith<$Res> get userMatch {
  
  return $UserMatchCopyWith<$Res>(_self.userMatch, (value) {
    return _then(_self.copyWith(userMatch: value));
  });
}
}

/// @nodoc


class _DeleteUserMatch implements UserMatchEvent {
  const _DeleteUserMatch(this.id);
  

 final  String id;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserMatchCopyWith<_DeleteUserMatch> get copyWith => __$DeleteUserMatchCopyWithImpl<_DeleteUserMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserMatch&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserMatchEvent.deleteUserMatch(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserMatchCopyWith<$Res> implements $UserMatchEventCopyWith<$Res> {
  factory _$DeleteUserMatchCopyWith(_DeleteUserMatch value, $Res Function(_DeleteUserMatch) _then) = __$DeleteUserMatchCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteUserMatchCopyWithImpl<$Res>
    implements _$DeleteUserMatchCopyWith<$Res> {
  __$DeleteUserMatchCopyWithImpl(this._self, this._then);

  final _DeleteUserMatch _self;
  final $Res Function(_DeleteUserMatch) _then;

/// Create a copy of UserMatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteUserMatch(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserMatchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserMatchState()';
}


}

/// @nodoc
class $UserMatchStateCopyWith<$Res>  {
$UserMatchStateCopyWith(UserMatchState _, $Res Function(UserMatchState) __);
}


/// Adds pattern-matching-related methods to [UserMatchState].
extension UserMatchStatePatterns on UserMatchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserMatch_Initial value)?  initial,TResult Function( UserMatch_Loading value)?  loading,TResult Function( LoadedUserMatch value)?  loadedUserMatch,TResult Function( LoadedUserMatches value)?  loadedUserMatches,TResult Function( UserMatch_Error value)?  error,TResult Function( UserMatch_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserMatch_Initial() when initial != null:
return initial(_that);case UserMatch_Loading() when loading != null:
return loading(_that);case LoadedUserMatch() when loadedUserMatch != null:
return loadedUserMatch(_that);case LoadedUserMatches() when loadedUserMatches != null:
return loadedUserMatches(_that);case UserMatch_Error() when error != null:
return error(_that);case UserMatch_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserMatch_Initial value)  initial,required TResult Function( UserMatch_Loading value)  loading,required TResult Function( LoadedUserMatch value)  loadedUserMatch,required TResult Function( LoadedUserMatches value)  loadedUserMatches,required TResult Function( UserMatch_Error value)  error,required TResult Function( UserMatch_Success value)  success,}){
final _that = this;
switch (_that) {
case UserMatch_Initial():
return initial(_that);case UserMatch_Loading():
return loading(_that);case LoadedUserMatch():
return loadedUserMatch(_that);case LoadedUserMatches():
return loadedUserMatches(_that);case UserMatch_Error():
return error(_that);case UserMatch_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserMatch_Initial value)?  initial,TResult? Function( UserMatch_Loading value)?  loading,TResult? Function( LoadedUserMatch value)?  loadedUserMatch,TResult? Function( LoadedUserMatches value)?  loadedUserMatches,TResult? Function( UserMatch_Error value)?  error,TResult? Function( UserMatch_Success value)?  success,}){
final _that = this;
switch (_that) {
case UserMatch_Initial() when initial != null:
return initial(_that);case UserMatch_Loading() when loading != null:
return loading(_that);case LoadedUserMatch() when loadedUserMatch != null:
return loadedUserMatch(_that);case LoadedUserMatches() when loadedUserMatches != null:
return loadedUserMatches(_that);case UserMatch_Error() when error != null:
return error(_that);case UserMatch_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserMatch userMatch)?  loadedUserMatch,TResult Function( List<UserMatch> userMatches,  int currentPage,  int limit,  bool hasMore,  Map<String, MatchSchedule>? matchSchedules,  Map<String, Tournament>? tournaments)?  loadedUserMatches,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserMatch_Initial() when initial != null:
return initial();case UserMatch_Loading() when loading != null:
return loading();case LoadedUserMatch() when loadedUserMatch != null:
return loadedUserMatch(_that.userMatch);case LoadedUserMatches() when loadedUserMatches != null:
return loadedUserMatches(_that.userMatches,_that.currentPage,_that.limit,_that.hasMore,_that.matchSchedules,_that.tournaments);case UserMatch_Error() when error != null:
return error(_that.message);case UserMatch_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserMatch userMatch)  loadedUserMatch,required TResult Function( List<UserMatch> userMatches,  int currentPage,  int limit,  bool hasMore,  Map<String, MatchSchedule>? matchSchedules,  Map<String, Tournament>? tournaments)  loadedUserMatches,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case UserMatch_Initial():
return initial();case UserMatch_Loading():
return loading();case LoadedUserMatch():
return loadedUserMatch(_that.userMatch);case LoadedUserMatches():
return loadedUserMatches(_that.userMatches,_that.currentPage,_that.limit,_that.hasMore,_that.matchSchedules,_that.tournaments);case UserMatch_Error():
return error(_that.message);case UserMatch_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserMatch userMatch)?  loadedUserMatch,TResult? Function( List<UserMatch> userMatches,  int currentPage,  int limit,  bool hasMore,  Map<String, MatchSchedule>? matchSchedules,  Map<String, Tournament>? tournaments)?  loadedUserMatches,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case UserMatch_Initial() when initial != null:
return initial();case UserMatch_Loading() when loading != null:
return loading();case LoadedUserMatch() when loadedUserMatch != null:
return loadedUserMatch(_that.userMatch);case LoadedUserMatches() when loadedUserMatches != null:
return loadedUserMatches(_that.userMatches,_that.currentPage,_that.limit,_that.hasMore,_that.matchSchedules,_that.tournaments);case UserMatch_Error() when error != null:
return error(_that.message);case UserMatch_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UserMatch_Initial implements UserMatchState {
  const UserMatch_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatch_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserMatchState.initial()';
}


}




/// @nodoc


class UserMatch_Loading implements UserMatchState {
  const UserMatch_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatch_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserMatchState.loading()';
}


}




/// @nodoc


class LoadedUserMatch implements UserMatchState {
  const LoadedUserMatch(this.userMatch);
  

 final  UserMatch userMatch;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUserMatchCopyWith<LoadedUserMatch> get copyWith => _$LoadedUserMatchCopyWithImpl<LoadedUserMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUserMatch&&(identical(other.userMatch, userMatch) || other.userMatch == userMatch));
}


@override
int get hashCode => Object.hash(runtimeType,userMatch);

@override
String toString() {
  return 'UserMatchState.loadedUserMatch(userMatch: $userMatch)';
}


}

/// @nodoc
abstract mixin class $LoadedUserMatchCopyWith<$Res> implements $UserMatchStateCopyWith<$Res> {
  factory $LoadedUserMatchCopyWith(LoadedUserMatch value, $Res Function(LoadedUserMatch) _then) = _$LoadedUserMatchCopyWithImpl;
@useResult
$Res call({
 UserMatch userMatch
});


$UserMatchCopyWith<$Res> get userMatch;

}
/// @nodoc
class _$LoadedUserMatchCopyWithImpl<$Res>
    implements $LoadedUserMatchCopyWith<$Res> {
  _$LoadedUserMatchCopyWithImpl(this._self, this._then);

  final LoadedUserMatch _self;
  final $Res Function(LoadedUserMatch) _then;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userMatch = null,}) {
  return _then(LoadedUserMatch(
null == userMatch ? _self.userMatch : userMatch // ignore: cast_nullable_to_non_nullable
as UserMatch,
  ));
}

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMatchCopyWith<$Res> get userMatch {
  
  return $UserMatchCopyWith<$Res>(_self.userMatch, (value) {
    return _then(_self.copyWith(userMatch: value));
  });
}
}

/// @nodoc


class LoadedUserMatches implements UserMatchState {
  const LoadedUserMatches(final  List<UserMatch> userMatches, this.currentPage, this.limit, this.hasMore, {final  Map<String, MatchSchedule>? matchSchedules, final  Map<String, Tournament>? tournaments}): _userMatches = userMatches,_matchSchedules = matchSchedules,_tournaments = tournaments;
  

 final  List<UserMatch> _userMatches;
 List<UserMatch> get userMatches {
  if (_userMatches is EqualUnmodifiableListView) return _userMatches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userMatches);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;
 final  Map<String, MatchSchedule>? _matchSchedules;
 Map<String, MatchSchedule>? get matchSchedules {
  final value = _matchSchedules;
  if (value == null) return null;
  if (_matchSchedules is EqualUnmodifiableMapView) return _matchSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Tournament>? _tournaments;
 Map<String, Tournament>? get tournaments {
  final value = _tournaments;
  if (value == null) return null;
  if (_tournaments is EqualUnmodifiableMapView) return _tournaments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUserMatchesCopyWith<LoadedUserMatches> get copyWith => _$LoadedUserMatchesCopyWithImpl<LoadedUserMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUserMatches&&const DeepCollectionEquality().equals(other._userMatches, _userMatches)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._matchSchedules, _matchSchedules)&&const DeepCollectionEquality().equals(other._tournaments, _tournaments));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userMatches),currentPage,limit,hasMore,const DeepCollectionEquality().hash(_matchSchedules),const DeepCollectionEquality().hash(_tournaments));

@override
String toString() {
  return 'UserMatchState.loadedUserMatches(userMatches: $userMatches, currentPage: $currentPage, limit: $limit, hasMore: $hasMore, matchSchedules: $matchSchedules, tournaments: $tournaments)';
}


}

/// @nodoc
abstract mixin class $LoadedUserMatchesCopyWith<$Res> implements $UserMatchStateCopyWith<$Res> {
  factory $LoadedUserMatchesCopyWith(LoadedUserMatches value, $Res Function(LoadedUserMatches) _then) = _$LoadedUserMatchesCopyWithImpl;
@useResult
$Res call({
 List<UserMatch> userMatches, int currentPage, int limit, bool hasMore, Map<String, MatchSchedule>? matchSchedules, Map<String, Tournament>? tournaments
});




}
/// @nodoc
class _$LoadedUserMatchesCopyWithImpl<$Res>
    implements $LoadedUserMatchesCopyWith<$Res> {
  _$LoadedUserMatchesCopyWithImpl(this._self, this._then);

  final LoadedUserMatches _self;
  final $Res Function(LoadedUserMatches) _then;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userMatches = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,Object? matchSchedules = freezed,Object? tournaments = freezed,}) {
  return _then(LoadedUserMatches(
null == userMatches ? _self._userMatches : userMatches // ignore: cast_nullable_to_non_nullable
as List<UserMatch>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,matchSchedules: freezed == matchSchedules ? _self._matchSchedules : matchSchedules // ignore: cast_nullable_to_non_nullable
as Map<String, MatchSchedule>?,tournaments: freezed == tournaments ? _self._tournaments : tournaments // ignore: cast_nullable_to_non_nullable
as Map<String, Tournament>?,
  ));
}


}

/// @nodoc


class UserMatch_Error implements UserMatchState {
  const UserMatch_Error(this.message);
  

 final  String message;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMatch_ErrorCopyWith<UserMatch_Error> get copyWith => _$UserMatch_ErrorCopyWithImpl<UserMatch_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatch_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserMatchState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserMatch_ErrorCopyWith<$Res> implements $UserMatchStateCopyWith<$Res> {
  factory $UserMatch_ErrorCopyWith(UserMatch_Error value, $Res Function(UserMatch_Error) _then) = _$UserMatch_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserMatch_ErrorCopyWithImpl<$Res>
    implements $UserMatch_ErrorCopyWith<$Res> {
  _$UserMatch_ErrorCopyWithImpl(this._self, this._then);

  final UserMatch_Error _self;
  final $Res Function(UserMatch_Error) _then;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserMatch_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserMatch_Success implements UserMatchState {
  const UserMatch_Success(this.message);
  

 final  String message;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMatch_SuccessCopyWith<UserMatch_Success> get copyWith => _$UserMatch_SuccessCopyWithImpl<UserMatch_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMatch_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserMatchState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserMatch_SuccessCopyWith<$Res> implements $UserMatchStateCopyWith<$Res> {
  factory $UserMatch_SuccessCopyWith(UserMatch_Success value, $Res Function(UserMatch_Success) _then) = _$UserMatch_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserMatch_SuccessCopyWithImpl<$Res>
    implements $UserMatch_SuccessCopyWith<$Res> {
  _$UserMatch_SuccessCopyWithImpl(this._self, this._then);

  final UserMatch_Success _self;
  final $Res Function(UserMatch_Success) _then;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserMatch_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
