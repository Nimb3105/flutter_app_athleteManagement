// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const LoadedUserMatches(final  List<UserMatch> userMatches, this.currentPage, this.limit, this.hasMore): _userMatches = userMatches;
  

 final  List<UserMatch> _userMatches;
 List<UserMatch> get userMatches {
  if (_userMatches is EqualUnmodifiableListView) return _userMatches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userMatches);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of UserMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUserMatchesCopyWith<LoadedUserMatches> get copyWith => _$LoadedUserMatchesCopyWithImpl<LoadedUserMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUserMatches&&const DeepCollectionEquality().equals(other._userMatches, _userMatches)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userMatches),currentPage,limit,hasMore);

@override
String toString() {
  return 'UserMatchState.loadedUserMatches(userMatches: $userMatches, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedUserMatchesCopyWith<$Res> implements $UserMatchStateCopyWith<$Res> {
  factory $LoadedUserMatchesCopyWith(LoadedUserMatches value, $Res Function(LoadedUserMatches) _then) = _$LoadedUserMatchesCopyWithImpl;
@useResult
$Res call({
 List<UserMatch> userMatches, int currentPage, int limit, bool hasMore
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
@pragma('vm:prefer-inline') $Res call({Object? userMatches = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedUserMatches(
null == userMatches ? _self._userMatches : userMatches // ignore: cast_nullable_to_non_nullable
as List<UserMatch>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
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
