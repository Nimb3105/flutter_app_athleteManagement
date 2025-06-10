// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SportUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportUserEvent()';
}


}

/// @nodoc
class $SportUserEventCopyWith<$Res>  {
$SportUserEventCopyWith(SportUserEvent _, $Res Function(SportUserEvent) __);
}


/// @nodoc


class _CreateSportUser implements SportUserEvent {
  const _CreateSportUser(this.sportUser);
  

 final  SportUser sportUser;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSportUserCopyWith<_CreateSportUser> get copyWith => __$CreateSportUserCopyWithImpl<_CreateSportUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSportUser&&(identical(other.sportUser, sportUser) || other.sportUser == sportUser));
}


@override
int get hashCode => Object.hash(runtimeType,sportUser);

@override
String toString() {
  return 'SportUserEvent.createSportUser(sportUser: $sportUser)';
}


}

/// @nodoc
abstract mixin class _$CreateSportUserCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$CreateSportUserCopyWith(_CreateSportUser value, $Res Function(_CreateSportUser) _then) = __$CreateSportUserCopyWithImpl;
@useResult
$Res call({
 SportUser sportUser
});


$SportUserCopyWith<$Res> get sportUser;

}
/// @nodoc
class __$CreateSportUserCopyWithImpl<$Res>
    implements _$CreateSportUserCopyWith<$Res> {
  __$CreateSportUserCopyWithImpl(this._self, this._then);

  final _CreateSportUser _self;
  final $Res Function(_CreateSportUser) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportUser = null,}) {
  return _then(_CreateSportUser(
null == sportUser ? _self.sportUser : sportUser // ignore: cast_nullable_to_non_nullable
as SportUser,
  ));
}

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportUserCopyWith<$Res> get sportUser {
  
  return $SportUserCopyWith<$Res>(_self.sportUser, (value) {
    return _then(_self.copyWith(sportUser: value));
  });
}
}

/// @nodoc


class _GetSportUserById implements SportUserEvent {
  const _GetSportUserById(this.id);
  

 final  String id;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportUserByIdCopyWith<_GetSportUserById> get copyWith => __$GetSportUserByIdCopyWithImpl<_GetSportUserById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportUserById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportUserEvent.getSportUserById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetSportUserByIdCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$GetSportUserByIdCopyWith(_GetSportUserById value, $Res Function(_GetSportUserById) _then) = __$GetSportUserByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetSportUserByIdCopyWithImpl<$Res>
    implements _$GetSportUserByIdCopyWith<$Res> {
  __$GetSportUserByIdCopyWithImpl(this._self, this._then);

  final _GetSportUserById _self;
  final $Res Function(_GetSportUserById) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetSportUserById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSportUserByUserId implements SportUserEvent {
  const _GetSportUserByUserId(this.userId);
  

 final  String userId;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportUserByUserIdCopyWith<_GetSportUserByUserId> get copyWith => __$GetSportUserByUserIdCopyWithImpl<_GetSportUserByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportUserByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SportUserEvent.getSportUserUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetSportUserByUserIdCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$GetSportUserByUserIdCopyWith(_GetSportUserByUserId value, $Res Function(_GetSportUserByUserId) _then) = __$GetSportUserByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetSportUserByUserIdCopyWithImpl<$Res>
    implements _$GetSportUserByUserIdCopyWith<$Res> {
  __$GetSportUserByUserIdCopyWithImpl(this._self, this._then);

  final _GetSportUserByUserId _self;
  final $Res Function(_GetSportUserByUserId) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetSportUserByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllSportUserByUserId implements SportUserEvent {
  const _GetAllSportUserByUserId(this.userId);
  

 final  String userId;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllSportUserByUserIdCopyWith<_GetAllSportUserByUserId> get copyWith => __$GetAllSportUserByUserIdCopyWithImpl<_GetAllSportUserByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllSportUserByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SportUserEvent.getAllSportUserByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetAllSportUserByUserIdCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$GetAllSportUserByUserIdCopyWith(_GetAllSportUserByUserId value, $Res Function(_GetAllSportUserByUserId) _then) = __$GetAllSportUserByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetAllSportUserByUserIdCopyWithImpl<$Res>
    implements _$GetAllSportUserByUserIdCopyWith<$Res> {
  __$GetAllSportUserByUserIdCopyWithImpl(this._self, this._then);

  final _GetAllSportUserByUserId _self;
  final $Res Function(_GetAllSportUserByUserId) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetAllSportUserByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSportUserBySportId implements SportUserEvent {
  const _GetSportUserBySportId(this.sportId);
  

 final  String sportId;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportUserBySportIdCopyWith<_GetSportUserBySportId> get copyWith => __$GetSportUserBySportIdCopyWithImpl<_GetSportUserBySportId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportUserBySportId&&(identical(other.sportId, sportId) || other.sportId == sportId));
}


@override
int get hashCode => Object.hash(runtimeType,sportId);

@override
String toString() {
  return 'SportUserEvent.getSportUserBySportId(sportId: $sportId)';
}


}

/// @nodoc
abstract mixin class _$GetSportUserBySportIdCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$GetSportUserBySportIdCopyWith(_GetSportUserBySportId value, $Res Function(_GetSportUserBySportId) _then) = __$GetSportUserBySportIdCopyWithImpl;
@useResult
$Res call({
 String sportId
});




}
/// @nodoc
class __$GetSportUserBySportIdCopyWithImpl<$Res>
    implements _$GetSportUserBySportIdCopyWith<$Res> {
  __$GetSportUserBySportIdCopyWithImpl(this._self, this._then);

  final _GetSportUserBySportId _self;
  final $Res Function(_GetSportUserBySportId) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,}) {
  return _then(_GetSportUserBySportId(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllSportUsers implements SportUserEvent {
  const _GetAllSportUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllSportUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportUserEvent.getAllSportUsers()';
}


}




/// @nodoc


class _UpdateSportUser implements SportUserEvent {
  const _UpdateSportUser(this.id, this.sportUser);
  

 final  String id;
 final  SportUser sportUser;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSportUserCopyWith<_UpdateSportUser> get copyWith => __$UpdateSportUserCopyWithImpl<_UpdateSportUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSportUser&&(identical(other.id, id) || other.id == id)&&(identical(other.sportUser, sportUser) || other.sportUser == sportUser));
}


@override
int get hashCode => Object.hash(runtimeType,id,sportUser);

@override
String toString() {
  return 'SportUserEvent.updateSportUser(id: $id, sportUser: $sportUser)';
}


}

/// @nodoc
abstract mixin class _$UpdateSportUserCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$UpdateSportUserCopyWith(_UpdateSportUser value, $Res Function(_UpdateSportUser) _then) = __$UpdateSportUserCopyWithImpl;
@useResult
$Res call({
 String id, SportUser sportUser
});


$SportUserCopyWith<$Res> get sportUser;

}
/// @nodoc
class __$UpdateSportUserCopyWithImpl<$Res>
    implements _$UpdateSportUserCopyWith<$Res> {
  __$UpdateSportUserCopyWithImpl(this._self, this._then);

  final _UpdateSportUser _self;
  final $Res Function(_UpdateSportUser) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sportUser = null,}) {
  return _then(_UpdateSportUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == sportUser ? _self.sportUser : sportUser // ignore: cast_nullable_to_non_nullable
as SportUser,
  ));
}

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportUserCopyWith<$Res> get sportUser {
  
  return $SportUserCopyWith<$Res>(_self.sportUser, (value) {
    return _then(_self.copyWith(sportUser: value));
  });
}
}

/// @nodoc


class _DeleteSportUser implements SportUserEvent {
  const _DeleteSportUser(this.id);
  

 final  String id;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSportUserCopyWith<_DeleteSportUser> get copyWith => __$DeleteSportUserCopyWithImpl<_DeleteSportUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSportUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportUserEvent.deleteSportUser(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteSportUserCopyWith<$Res> implements $SportUserEventCopyWith<$Res> {
  factory _$DeleteSportUserCopyWith(_DeleteSportUser value, $Res Function(_DeleteSportUser) _then) = __$DeleteSportUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteSportUserCopyWithImpl<$Res>
    implements _$DeleteSportUserCopyWith<$Res> {
  __$DeleteSportUserCopyWithImpl(this._self, this._then);

  final _DeleteSportUser _self;
  final $Res Function(_DeleteSportUser) _then;

/// Create a copy of SportUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteSportUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SportUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportUserState()';
}


}

/// @nodoc
class $SportUserStateCopyWith<$Res>  {
$SportUserStateCopyWith(SportUserState _, $Res Function(SportUserState) __);
}


/// @nodoc


class Sport_User_Initial implements SportUserState {
  const Sport_User_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_User_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportUserState.initial()';
}


}




/// @nodoc


class Sport_User_Loading implements SportUserState {
  const Sport_User_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_User_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportUserState.loading()';
}


}




/// @nodoc


class LoadedSportUser implements SportUserState {
  const LoadedSportUser(this.sportUser);
  

 final  SportUser sportUser;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportUserCopyWith<LoadedSportUser> get copyWith => _$LoadedSportUserCopyWithImpl<LoadedSportUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSportUser&&(identical(other.sportUser, sportUser) || other.sportUser == sportUser));
}


@override
int get hashCode => Object.hash(runtimeType,sportUser);

@override
String toString() {
  return 'SportUserState.loadedSportUser(sportUser: $sportUser)';
}


}

/// @nodoc
abstract mixin class $LoadedSportUserCopyWith<$Res> implements $SportUserStateCopyWith<$Res> {
  factory $LoadedSportUserCopyWith(LoadedSportUser value, $Res Function(LoadedSportUser) _then) = _$LoadedSportUserCopyWithImpl;
@useResult
$Res call({
 SportUser sportUser
});


$SportUserCopyWith<$Res> get sportUser;

}
/// @nodoc
class _$LoadedSportUserCopyWithImpl<$Res>
    implements $LoadedSportUserCopyWith<$Res> {
  _$LoadedSportUserCopyWithImpl(this._self, this._then);

  final LoadedSportUser _self;
  final $Res Function(LoadedSportUser) _then;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportUser = null,}) {
  return _then(LoadedSportUser(
null == sportUser ? _self.sportUser : sportUser // ignore: cast_nullable_to_non_nullable
as SportUser,
  ));
}

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportUserCopyWith<$Res> get sportUser {
  
  return $SportUserCopyWith<$Res>(_self.sportUser, (value) {
    return _then(_self.copyWith(sportUser: value));
  });
}
}

/// @nodoc


class LoadedSportUsers implements SportUserState {
  const LoadedSportUsers(final  List<SportUser> sportUsers, final  Map<String, Sport> sports): _sportUsers = sportUsers,_sports = sports;
  

 final  List<SportUser> _sportUsers;
 List<SportUser> get sportUsers {
  if (_sportUsers is EqualUnmodifiableListView) return _sportUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sportUsers);
}

 final  Map<String, Sport> _sports;
 Map<String, Sport> get sports {
  if (_sports is EqualUnmodifiableMapView) return _sports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sports);
}


/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportUsersCopyWith<LoadedSportUsers> get copyWith => _$LoadedSportUsersCopyWithImpl<LoadedSportUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSportUsers&&const DeepCollectionEquality().equals(other._sportUsers, _sportUsers)&&const DeepCollectionEquality().equals(other._sports, _sports));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sportUsers),const DeepCollectionEquality().hash(_sports));

@override
String toString() {
  return 'SportUserState.loadedSportUsers(sportUsers: $sportUsers, sports: $sports)';
}


}

/// @nodoc
abstract mixin class $LoadedSportUsersCopyWith<$Res> implements $SportUserStateCopyWith<$Res> {
  factory $LoadedSportUsersCopyWith(LoadedSportUsers value, $Res Function(LoadedSportUsers) _then) = _$LoadedSportUsersCopyWithImpl;
@useResult
$Res call({
 List<SportUser> sportUsers, Map<String, Sport> sports
});




}
/// @nodoc
class _$LoadedSportUsersCopyWithImpl<$Res>
    implements $LoadedSportUsersCopyWith<$Res> {
  _$LoadedSportUsersCopyWithImpl(this._self, this._then);

  final LoadedSportUsers _self;
  final $Res Function(LoadedSportUsers) _then;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportUsers = null,Object? sports = null,}) {
  return _then(LoadedSportUsers(
null == sportUsers ? _self._sportUsers : sportUsers // ignore: cast_nullable_to_non_nullable
as List<SportUser>,null == sports ? _self._sports : sports // ignore: cast_nullable_to_non_nullable
as Map<String, Sport>,
  ));
}


}

/// @nodoc


class Sport_User_Error implements SportUserState {
  const Sport_User_Error(this.message);
  

 final  String message;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_User_ErrorCopyWith<Sport_User_Error> get copyWith => _$Sport_User_ErrorCopyWithImpl<Sport_User_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_User_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportUserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_User_ErrorCopyWith<$Res> implements $SportUserStateCopyWith<$Res> {
  factory $Sport_User_ErrorCopyWith(Sport_User_Error value, $Res Function(Sport_User_Error) _then) = _$Sport_User_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_User_ErrorCopyWithImpl<$Res>
    implements $Sport_User_ErrorCopyWith<$Res> {
  _$Sport_User_ErrorCopyWithImpl(this._self, this._then);

  final Sport_User_Error _self;
  final $Res Function(Sport_User_Error) _then;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_User_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Sport_User_Success implements SportUserState {
  const Sport_User_Success(this.message);
  

 final  String message;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_User_SuccessCopyWith<Sport_User_Success> get copyWith => _$Sport_User_SuccessCopyWithImpl<Sport_User_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_User_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportUserState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_User_SuccessCopyWith<$Res> implements $SportUserStateCopyWith<$Res> {
  factory $Sport_User_SuccessCopyWith(Sport_User_Success value, $Res Function(Sport_User_Success) _then) = _$Sport_User_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_User_SuccessCopyWithImpl<$Res>
    implements $Sport_User_SuccessCopyWith<$Res> {
  _$Sport_User_SuccessCopyWithImpl(this._self, this._then);

  final Sport_User_Success _self;
  final $Res Function(Sport_User_Success) _then;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_User_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedMultipleSportUsers implements SportUserState {
  const LoadedMultipleSportUsers(final  Map<String, List<SportUser>> sportUsers, final  Map<String, Sport> sports, final  Map<String, String> errors): _sportUsers = sportUsers,_sports = sports,_errors = errors;
  

 final  Map<String, List<SportUser>> _sportUsers;
 Map<String, List<SportUser>> get sportUsers {
  if (_sportUsers is EqualUnmodifiableMapView) return _sportUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sportUsers);
}

 final  Map<String, Sport> _sports;
 Map<String, Sport> get sports {
  if (_sports is EqualUnmodifiableMapView) return _sports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sports);
}

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMultipleSportUsersCopyWith<LoadedMultipleSportUsers> get copyWith => _$LoadedMultipleSportUsersCopyWithImpl<LoadedMultipleSportUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMultipleSportUsers&&const DeepCollectionEquality().equals(other._sportUsers, _sportUsers)&&const DeepCollectionEquality().equals(other._sports, _sports)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sportUsers),const DeepCollectionEquality().hash(_sports),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SportUserState.loadedMultipleSportUsers(sportUsers: $sportUsers, sports: $sports, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $LoadedMultipleSportUsersCopyWith<$Res> implements $SportUserStateCopyWith<$Res> {
  factory $LoadedMultipleSportUsersCopyWith(LoadedMultipleSportUsers value, $Res Function(LoadedMultipleSportUsers) _then) = _$LoadedMultipleSportUsersCopyWithImpl;
@useResult
$Res call({
 Map<String, List<SportUser>> sportUsers, Map<String, Sport> sports, Map<String, String> errors
});




}
/// @nodoc
class _$LoadedMultipleSportUsersCopyWithImpl<$Res>
    implements $LoadedMultipleSportUsersCopyWith<$Res> {
  _$LoadedMultipleSportUsersCopyWithImpl(this._self, this._then);

  final LoadedMultipleSportUsers _self;
  final $Res Function(LoadedMultipleSportUsers) _then;

/// Create a copy of SportUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportUsers = null,Object? sports = null,Object? errors = null,}) {
  return _then(LoadedMultipleSportUsers(
null == sportUsers ? _self._sportUsers : sportUsers // ignore: cast_nullable_to_non_nullable
as Map<String, List<SportUser>>,null == sports ? _self._sports : sports // ignore: cast_nullable_to_non_nullable
as Map<String, Sport>,null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
