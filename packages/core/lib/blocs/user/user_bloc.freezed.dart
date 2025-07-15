// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// @nodoc


class CreateUser with DiagnosticableTreeMixin implements UserEvent {
  const CreateUser(this.user);
  

 final  User user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserCopyWith<CreateUser> get copyWith => _$CreateUserCopyWithImpl<CreateUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.createUser'))
    ..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.createUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $CreateUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) _then) = _$CreateUserCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._self, this._then);

  final CreateUser _self;
  final $Res Function(CreateUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(CreateUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class GetUserById with DiagnosticableTreeMixin implements UserEvent {
  const GetUserById(this.id);
  

 final  String id;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserByIdCopyWith<GetUserById> get copyWith => _$GetUserByIdCopyWithImpl<GetUserById>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getUserById'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getUserById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetUserByIdCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetUserByIdCopyWith(GetUserById value, $Res Function(GetUserById) _then) = _$GetUserByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetUserByIdCopyWithImpl<$Res>
    implements $GetUserByIdCopyWith<$Res> {
  _$GetUserByIdCopyWithImpl(this._self, this._then);

  final GetUserById _self;
  final $Res Function(GetUserById) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetUserById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetUserByEmail with DiagnosticableTreeMixin implements UserEvent {
  const GetUserByEmail(this.email);
  

 final  String email;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserByEmailCopyWith<GetUserByEmail> get copyWith => _$GetUserByEmailCopyWithImpl<GetUserByEmail>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getUserByEmail'))
    ..add(DiagnosticsProperty('email', email));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserByEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getUserByEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $GetUserByEmailCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetUserByEmailCopyWith(GetUserByEmail value, $Res Function(GetUserByEmail) _then) = _$GetUserByEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$GetUserByEmailCopyWithImpl<$Res>
    implements $GetUserByEmailCopyWith<$Res> {
  _$GetUserByEmailCopyWithImpl(this._self, this._then);

  final GetUserByEmail _self;
  final $Res Function(GetUserByEmail) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(GetUserByEmail(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Logout with DiagnosticableTreeMixin implements UserEvent {
  const Logout();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.logout'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.logout()';
}


}




/// @nodoc


class GetAllUsers with DiagnosticableTreeMixin implements UserEvent {
  const GetAllUsers({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllUsersCopyWith<GetAllUsers> get copyWith => _$GetAllUsersCopyWithImpl<GetAllUsers>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getAllUsers'))
    ..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('limit', limit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllUsers&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getAllUsers(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllUsersCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetAllUsersCopyWith(GetAllUsers value, $Res Function(GetAllUsers) _then) = _$GetAllUsersCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllUsersCopyWithImpl<$Res>
    implements $GetAllUsersCopyWith<$Res> {
  _$GetAllUsersCopyWithImpl(this._self, this._then);

  final GetAllUsers _self;
  final $Res Function(GetAllUsers) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllUsers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateUser with DiagnosticableTreeMixin implements UserEvent {
  const UpdateUser(this.id, this.user);
  

 final  String id;
 final  User user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserCopyWith<UpdateUser> get copyWith => _$UpdateUserCopyWithImpl<UpdateUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.updateUser'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUser&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,id,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.updateUser(id: $id, user: $user)';
}


}

/// @nodoc
abstract mixin class $UpdateUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $UpdateUserCopyWith(UpdateUser value, $Res Function(UpdateUser) _then) = _$UpdateUserCopyWithImpl;
@useResult
$Res call({
 String id, User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$UpdateUserCopyWithImpl<$Res>
    implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(this._self, this._then);

  final UpdateUser _self;
  final $Res Function(UpdateUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,}) {
  return _then(UpdateUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class DeleteUser with DiagnosticableTreeMixin implements UserEvent {
  const DeleteUser(this.id);
  

 final  String id;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserCopyWith<DeleteUser> get copyWith => _$DeleteUserCopyWithImpl<DeleteUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.deleteUser'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.deleteUser(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $DeleteUserCopyWith(DeleteUser value, $Res Function(DeleteUser) _then) = _$DeleteUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteUserCopyWithImpl<$Res>
    implements $DeleteUserCopyWith<$Res> {
  _$DeleteUserCopyWithImpl(this._self, this._then);

  final DeleteUser _self;
  final $Res Function(DeleteUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Login with DiagnosticableTreeMixin implements UserEvent {
  const Login(this.email, this.password);
  

 final  String email;
 final  String password;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCopyWith<Login> get copyWith => _$LoginCopyWithImpl<Login>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.login'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Login&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) _then) = _$LoginCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._self, this._then);

  final Login _self;
  final $Res Function(Login) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(Login(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllUserCoachBySportId with DiagnosticableTreeMixin implements UserEvent {
  const GetAllUserCoachBySportId(this.sportId, {this.page = 1, this.limit = 10});
  

 final  String sportId;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllUserCoachBySportIdCopyWith<GetAllUserCoachBySportId> get copyWith => _$GetAllUserCoachBySportIdCopyWithImpl<GetAllUserCoachBySportId>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getAllUserCoachBySportId'))
    ..add(DiagnosticsProperty('sportId', sportId))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('limit', limit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllUserCoachBySportId&&(identical(other.sportId, sportId) || other.sportId == sportId)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,sportId,page,limit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getAllUserCoachBySportId(sportId: $sportId, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllUserCoachBySportIdCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetAllUserCoachBySportIdCopyWith(GetAllUserCoachBySportId value, $Res Function(GetAllUserCoachBySportId) _then) = _$GetAllUserCoachBySportIdCopyWithImpl;
@useResult
$Res call({
 String sportId, int page, int limit
});




}
/// @nodoc
class _$GetAllUserCoachBySportIdCopyWithImpl<$Res>
    implements $GetAllUserCoachBySportIdCopyWith<$Res> {
  _$GetAllUserCoachBySportIdCopyWithImpl(this._self, this._then);

  final GetAllUserCoachBySportId _self;
  final $Res Function(GetAllUserCoachBySportId) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,Object? page = null,Object? limit = null,}) {
  return _then(GetAllUserCoachBySportId(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetUsersByRoleWithPagination with DiagnosticableTreeMixin implements UserEvent {
  const GetUsersByRoleWithPagination({required this.role, this.page = 1, this.limit = 10});
  

 final  String role;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersByRoleWithPaginationCopyWith<GetUsersByRoleWithPagination> get copyWith => _$GetUsersByRoleWithPaginationCopyWithImpl<GetUsersByRoleWithPagination>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getUsersByRoleWithPagination'))
    ..add(DiagnosticsProperty('role', role))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('limit', limit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersByRoleWithPagination&&(identical(other.role, role) || other.role == role)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,role,page,limit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getUsersByRoleWithPagination(role: $role, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetUsersByRoleWithPaginationCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetUsersByRoleWithPaginationCopyWith(GetUsersByRoleWithPagination value, $Res Function(GetUsersByRoleWithPagination) _then) = _$GetUsersByRoleWithPaginationCopyWithImpl;
@useResult
$Res call({
 String role, int page, int limit
});




}
/// @nodoc
class _$GetUsersByRoleWithPaginationCopyWithImpl<$Res>
    implements $GetUsersByRoleWithPaginationCopyWith<$Res> {
  _$GetUsersByRoleWithPaginationCopyWithImpl(this._self, this._then);

  final GetUsersByRoleWithPagination _self;
  final $Res Function(GetUsersByRoleWithPagination) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? role = null,Object? page = null,Object? limit = null,}) {
  return _then(GetUsersByRoleWithPagination(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetUnassignedAthletes with DiagnosticableTreeMixin implements UserEvent {
  const GetUnassignedAthletes(this.sportId);
  

 final  String sportId;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUnassignedAthletesCopyWith<GetUnassignedAthletes> get copyWith => _$GetUnassignedAthletesCopyWithImpl<GetUnassignedAthletes>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.getUnassignedAthletes'))
    ..add(DiagnosticsProperty('sportId', sportId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUnassignedAthletes&&(identical(other.sportId, sportId) || other.sportId == sportId));
}


@override
int get hashCode => Object.hash(runtimeType,sportId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.getUnassignedAthletes(sportId: $sportId)';
}


}

/// @nodoc
abstract mixin class $GetUnassignedAthletesCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetUnassignedAthletesCopyWith(GetUnassignedAthletes value, $Res Function(GetUnassignedAthletes) _then) = _$GetUnassignedAthletesCopyWithImpl;
@useResult
$Res call({
 String sportId
});




}
/// @nodoc
class _$GetUnassignedAthletesCopyWithImpl<$Res>
    implements $GetUnassignedAthletesCopyWith<$Res> {
  _$GetUnassignedAthletesCopyWithImpl(this._self, this._then);

  final GetUnassignedAthletes _self;
  final $Res Function(GetUnassignedAthletes) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,}) {
  return _then(GetUnassignedAthletes(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// @nodoc


class User_Initial with DiagnosticableTreeMixin implements UserState {
  const User_Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.initial()';
}


}




/// @nodoc


class User_Loading with DiagnosticableTreeMixin implements UserState {
  const User_Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loading()';
}


}




/// @nodoc


class LoadedUser with DiagnosticableTreeMixin implements UserState {
  const LoadedUser(this.user);
  

 final  User user;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUserCopyWith<LoadedUser> get copyWith => _$LoadedUserCopyWithImpl<LoadedUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loadedUser'))
    ..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loadedUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $LoadedUserCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $LoadedUserCopyWith(LoadedUser value, $Res Function(LoadedUser) _then) = _$LoadedUserCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoadedUserCopyWithImpl<$Res>
    implements $LoadedUserCopyWith<$Res> {
  _$LoadedUserCopyWithImpl(this._self, this._then);

  final LoadedUser _self;
  final $Res Function(LoadedUser) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(LoadedUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class LoadedUsers with DiagnosticableTreeMixin implements UserState {
  const LoadedUsers(final  List<User> users, this.currentPage, this.limit, this.hasMore): _users = users;
  

 final  List<User> _users;
 List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUsersCopyWith<LoadedUsers> get copyWith => _$LoadedUsersCopyWithImpl<LoadedUsers>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loadedUsers'))
    ..add(DiagnosticsProperty('users', users))..add(DiagnosticsProperty('currentPage', currentPage))..add(DiagnosticsProperty('limit', limit))..add(DiagnosticsProperty('hasMore', hasMore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUsers&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),currentPage,limit,hasMore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loadedUsers(users: $users, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedUsersCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $LoadedUsersCopyWith(LoadedUsers value, $Res Function(LoadedUsers) _then) = _$LoadedUsersCopyWithImpl;
@useResult
$Res call({
 List<User> users, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedUsersCopyWithImpl<$Res>
    implements $LoadedUsersCopyWith<$Res> {
  _$LoadedUsersCopyWithImpl(this._self, this._then);

  final LoadedUsers _self;
  final $Res Function(LoadedUsers) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedUsers(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class User_Error with DiagnosticableTreeMixin implements UserState {
  const User_Error(this.message);
  

 final  String message;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$User_ErrorCopyWith<User_Error> get copyWith => _$User_ErrorCopyWithImpl<User_Error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $User_ErrorCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $User_ErrorCopyWith(User_Error value, $Res Function(User_Error) _then) = _$User_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$User_ErrorCopyWithImpl<$Res>
    implements $User_ErrorCopyWith<$Res> {
  _$User_ErrorCopyWithImpl(this._self, this._then);

  final User_Error _self;
  final $Res Function(User_Error) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(User_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class User_Success with DiagnosticableTreeMixin implements UserState {
  const User_Success(this.message);
  

 final  String message;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$User_SuccessCopyWith<User_Success> get copyWith => _$User_SuccessCopyWithImpl<User_Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.success'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $User_SuccessCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $User_SuccessCopyWith(User_Success value, $Res Function(User_Success) _then) = _$User_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$User_SuccessCopyWithImpl<$Res>
    implements $User_SuccessCopyWith<$Res> {
  _$User_SuccessCopyWithImpl(this._self, this._then);

  final User_Success _self;
  final $Res Function(User_Success) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(User_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoggedIn with DiagnosticableTreeMixin implements UserState {
  const LoggedIn(this.token);
  

 final  String token;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoggedInCopyWith<LoggedIn> get copyWith => _$LoggedInCopyWithImpl<LoggedIn>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loggedIn'))
    ..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoggedIn&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loggedIn(token: $token)';
}


}

/// @nodoc
abstract mixin class $LoggedInCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) _then) = _$LoggedInCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$LoggedInCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(this._self, this._then);

  final LoggedIn _self;
  final $Res Function(LoggedIn) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(LoggedIn(
null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedMultipleUsers with DiagnosticableTreeMixin implements UserState {
  const LoadedMultipleUsers(final  Map<String, User> users, final  Map<String, String> errors): _users = users,_errors = errors;
  

 final  Map<String, User> _users;
 Map<String, User> get users {
  if (_users is EqualUnmodifiableMapView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_users);
}

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMultipleUsersCopyWith<LoadedMultipleUsers> get copyWith => _$LoadedMultipleUsersCopyWithImpl<LoadedMultipleUsers>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loadedMultipleUsers'))
    ..add(DiagnosticsProperty('users', users))..add(DiagnosticsProperty('errors', errors));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMultipleUsers&&const DeepCollectionEquality().equals(other._users, _users)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),const DeepCollectionEquality().hash(_errors));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loadedMultipleUsers(users: $users, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $LoadedMultipleUsersCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $LoadedMultipleUsersCopyWith(LoadedMultipleUsers value, $Res Function(LoadedMultipleUsers) _then) = _$LoadedMultipleUsersCopyWithImpl;
@useResult
$Res call({
 Map<String, User> users, Map<String, String> errors
});




}
/// @nodoc
class _$LoadedMultipleUsersCopyWithImpl<$Res>
    implements $LoadedMultipleUsersCopyWith<$Res> {
  _$LoadedMultipleUsersCopyWithImpl(this._self, this._then);

  final LoadedMultipleUsers _self;
  final $Res Function(LoadedMultipleUsers) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,Object? errors = null,}) {
  return _then(LoadedMultipleUsers(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as Map<String, User>,null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class LoginSuccess with DiagnosticableTreeMixin implements UserState {
  const LoginSuccess({required this.user, required this.token});
  

 final  User user;
 final  String token;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState.loginSuccess'))
    ..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState.loginSuccess(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 User user, String token
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? token = null,}) {
  return _then(LoginSuccess(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
