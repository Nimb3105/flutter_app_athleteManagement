// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TeamEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamEvent()';
}


}

/// @nodoc
class $TeamEventCopyWith<$Res>  {
$TeamEventCopyWith(TeamEvent _, $Res Function(TeamEvent) __);
}


/// Adds pattern-matching-related methods to [TeamEvent].
extension TeamEventPatterns on TeamEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateTeam value)?  createTeam,TResult Function( _GetTeamById value)?  getTeamById,TResult Function( _GetTeamsBySportId value)?  getTeamsBySportId,TResult Function( _GetAllTeams value)?  getAllTeams,TResult Function( _UpdateTeam value)?  updateTeam,TResult Function( _DeleteTeam value)?  deleteTeam,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTeam() when createTeam != null:
return createTeam(_that);case _GetTeamById() when getTeamById != null:
return getTeamById(_that);case _GetTeamsBySportId() when getTeamsBySportId != null:
return getTeamsBySportId(_that);case _GetAllTeams() when getAllTeams != null:
return getAllTeams(_that);case _UpdateTeam() when updateTeam != null:
return updateTeam(_that);case _DeleteTeam() when deleteTeam != null:
return deleteTeam(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateTeam value)  createTeam,required TResult Function( _GetTeamById value)  getTeamById,required TResult Function( _GetTeamsBySportId value)  getTeamsBySportId,required TResult Function( _GetAllTeams value)  getAllTeams,required TResult Function( _UpdateTeam value)  updateTeam,required TResult Function( _DeleteTeam value)  deleteTeam,}){
final _that = this;
switch (_that) {
case _CreateTeam():
return createTeam(_that);case _GetTeamById():
return getTeamById(_that);case _GetTeamsBySportId():
return getTeamsBySportId(_that);case _GetAllTeams():
return getAllTeams(_that);case _UpdateTeam():
return updateTeam(_that);case _DeleteTeam():
return deleteTeam(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateTeam value)?  createTeam,TResult? Function( _GetTeamById value)?  getTeamById,TResult? Function( _GetTeamsBySportId value)?  getTeamsBySportId,TResult? Function( _GetAllTeams value)?  getAllTeams,TResult? Function( _UpdateTeam value)?  updateTeam,TResult? Function( _DeleteTeam value)?  deleteTeam,}){
final _that = this;
switch (_that) {
case _CreateTeam() when createTeam != null:
return createTeam(_that);case _GetTeamById() when getTeamById != null:
return getTeamById(_that);case _GetTeamsBySportId() when getTeamsBySportId != null:
return getTeamsBySportId(_that);case _GetAllTeams() when getAllTeams != null:
return getAllTeams(_that);case _UpdateTeam() when updateTeam != null:
return updateTeam(_that);case _DeleteTeam() when deleteTeam != null:
return deleteTeam(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Team team)?  createTeam,TResult Function( String id)?  getTeamById,TResult Function( String sportId)?  getTeamsBySportId,TResult Function( int page,  int limit)?  getAllTeams,TResult Function( String id,  Team team)?  updateTeam,TResult Function( String id)?  deleteTeam,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeam() when createTeam != null:
return createTeam(_that.team);case _GetTeamById() when getTeamById != null:
return getTeamById(_that.id);case _GetTeamsBySportId() when getTeamsBySportId != null:
return getTeamsBySportId(_that.sportId);case _GetAllTeams() when getAllTeams != null:
return getAllTeams(_that.page,_that.limit);case _UpdateTeam() when updateTeam != null:
return updateTeam(_that.id,_that.team);case _DeleteTeam() when deleteTeam != null:
return deleteTeam(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Team team)  createTeam,required TResult Function( String id)  getTeamById,required TResult Function( String sportId)  getTeamsBySportId,required TResult Function( int page,  int limit)  getAllTeams,required TResult Function( String id,  Team team)  updateTeam,required TResult Function( String id)  deleteTeam,}) {final _that = this;
switch (_that) {
case _CreateTeam():
return createTeam(_that.team);case _GetTeamById():
return getTeamById(_that.id);case _GetTeamsBySportId():
return getTeamsBySportId(_that.sportId);case _GetAllTeams():
return getAllTeams(_that.page,_that.limit);case _UpdateTeam():
return updateTeam(_that.id,_that.team);case _DeleteTeam():
return deleteTeam(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Team team)?  createTeam,TResult? Function( String id)?  getTeamById,TResult? Function( String sportId)?  getTeamsBySportId,TResult? Function( int page,  int limit)?  getAllTeams,TResult? Function( String id,  Team team)?  updateTeam,TResult? Function( String id)?  deleteTeam,}) {final _that = this;
switch (_that) {
case _CreateTeam() when createTeam != null:
return createTeam(_that.team);case _GetTeamById() when getTeamById != null:
return getTeamById(_that.id);case _GetTeamsBySportId() when getTeamsBySportId != null:
return getTeamsBySportId(_that.sportId);case _GetAllTeams() when getAllTeams != null:
return getAllTeams(_that.page,_that.limit);case _UpdateTeam() when updateTeam != null:
return updateTeam(_that.id,_that.team);case _DeleteTeam() when deleteTeam != null:
return deleteTeam(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeam implements TeamEvent {
  const _CreateTeam(this.team);
  

 final  Team team;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeamCopyWith<_CreateTeam> get copyWith => __$CreateTeamCopyWithImpl<_CreateTeam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeam&&(identical(other.team, team) || other.team == team));
}


@override
int get hashCode => Object.hash(runtimeType,team);

@override
String toString() {
  return 'TeamEvent.createTeam(team: $team)';
}


}

/// @nodoc
abstract mixin class _$CreateTeamCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$CreateTeamCopyWith(_CreateTeam value, $Res Function(_CreateTeam) _then) = __$CreateTeamCopyWithImpl;
@useResult
$Res call({
 Team team
});


$TeamCopyWith<$Res> get team;

}
/// @nodoc
class __$CreateTeamCopyWithImpl<$Res>
    implements _$CreateTeamCopyWith<$Res> {
  __$CreateTeamCopyWithImpl(this._self, this._then);

  final _CreateTeam _self;
  final $Res Function(_CreateTeam) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? team = null,}) {
  return _then(_CreateTeam(
null == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as Team,
  ));
}

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res> get team {
  
  return $TeamCopyWith<$Res>(_self.team, (value) {
    return _then(_self.copyWith(team: value));
  });
}
}

/// @nodoc


class _GetTeamById implements TeamEvent {
  const _GetTeamById(this.id);
  

 final  String id;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTeamByIdCopyWith<_GetTeamById> get copyWith => __$GetTeamByIdCopyWithImpl<_GetTeamById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTeamById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TeamEvent.getTeamById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTeamByIdCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$GetTeamByIdCopyWith(_GetTeamById value, $Res Function(_GetTeamById) _then) = __$GetTeamByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetTeamByIdCopyWithImpl<$Res>
    implements _$GetTeamByIdCopyWith<$Res> {
  __$GetTeamByIdCopyWithImpl(this._self, this._then);

  final _GetTeamById _self;
  final $Res Function(_GetTeamById) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTeamById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetTeamsBySportId implements TeamEvent {
  const _GetTeamsBySportId(this.sportId);
  

 final  String sportId;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTeamsBySportIdCopyWith<_GetTeamsBySportId> get copyWith => __$GetTeamsBySportIdCopyWithImpl<_GetTeamsBySportId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTeamsBySportId&&(identical(other.sportId, sportId) || other.sportId == sportId));
}


@override
int get hashCode => Object.hash(runtimeType,sportId);

@override
String toString() {
  return 'TeamEvent.getTeamsBySportId(sportId: $sportId)';
}


}

/// @nodoc
abstract mixin class _$GetTeamsBySportIdCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$GetTeamsBySportIdCopyWith(_GetTeamsBySportId value, $Res Function(_GetTeamsBySportId) _then) = __$GetTeamsBySportIdCopyWithImpl;
@useResult
$Res call({
 String sportId
});




}
/// @nodoc
class __$GetTeamsBySportIdCopyWithImpl<$Res>
    implements _$GetTeamsBySportIdCopyWith<$Res> {
  __$GetTeamsBySportIdCopyWithImpl(this._self, this._then);

  final _GetTeamsBySportId _self;
  final $Res Function(_GetTeamsBySportId) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,}) {
  return _then(_GetTeamsBySportId(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllTeams implements TeamEvent {
  const _GetAllTeams({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllTeamsCopyWith<_GetAllTeams> get copyWith => __$GetAllTeamsCopyWithImpl<_GetAllTeams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllTeams&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'TeamEvent.getAllTeams(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllTeamsCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$GetAllTeamsCopyWith(_GetAllTeams value, $Res Function(_GetAllTeams) _then) = __$GetAllTeamsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllTeamsCopyWithImpl<$Res>
    implements _$GetAllTeamsCopyWith<$Res> {
  __$GetAllTeamsCopyWithImpl(this._self, this._then);

  final _GetAllTeams _self;
  final $Res Function(_GetAllTeams) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllTeams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateTeam implements TeamEvent {
  const _UpdateTeam(this.id, this.team);
  

 final  String id;
 final  Team team;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTeamCopyWith<_UpdateTeam> get copyWith => __$UpdateTeamCopyWithImpl<_UpdateTeam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTeam&&(identical(other.id, id) || other.id == id)&&(identical(other.team, team) || other.team == team));
}


@override
int get hashCode => Object.hash(runtimeType,id,team);

@override
String toString() {
  return 'TeamEvent.updateTeam(id: $id, team: $team)';
}


}

/// @nodoc
abstract mixin class _$UpdateTeamCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$UpdateTeamCopyWith(_UpdateTeam value, $Res Function(_UpdateTeam) _then) = __$UpdateTeamCopyWithImpl;
@useResult
$Res call({
 String id, Team team
});


$TeamCopyWith<$Res> get team;

}
/// @nodoc
class __$UpdateTeamCopyWithImpl<$Res>
    implements _$UpdateTeamCopyWith<$Res> {
  __$UpdateTeamCopyWithImpl(this._self, this._then);

  final _UpdateTeam _self;
  final $Res Function(_UpdateTeam) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? team = null,}) {
  return _then(_UpdateTeam(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as Team,
  ));
}

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res> get team {
  
  return $TeamCopyWith<$Res>(_self.team, (value) {
    return _then(_self.copyWith(team: value));
  });
}
}

/// @nodoc


class _DeleteTeam implements TeamEvent {
  const _DeleteTeam(this.id);
  

 final  String id;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTeamCopyWith<_DeleteTeam> get copyWith => __$DeleteTeamCopyWithImpl<_DeleteTeam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTeam&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TeamEvent.deleteTeam(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTeamCopyWith<$Res> implements $TeamEventCopyWith<$Res> {
  factory _$DeleteTeamCopyWith(_DeleteTeam value, $Res Function(_DeleteTeam) _then) = __$DeleteTeamCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteTeamCopyWithImpl<$Res>
    implements _$DeleteTeamCopyWith<$Res> {
  __$DeleteTeamCopyWithImpl(this._self, this._then);

  final _DeleteTeam _self;
  final $Res Function(_DeleteTeam) _then;

/// Create a copy of TeamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTeam(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TeamState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamState()';
}


}

/// @nodoc
class $TeamStateCopyWith<$Res>  {
$TeamStateCopyWith(TeamState _, $Res Function(TeamState) __);
}


/// Adds pattern-matching-related methods to [TeamState].
extension TeamStatePatterns on TeamState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Team_Initial value)?  initial,TResult Function( Team_Loading value)?  loading,TResult Function( LoadedTeam value)?  loadedTeam,TResult Function( LoadedTeams value)?  loadedTeams,TResult Function( Team_Error value)?  error,TResult Function( Team_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Team_Initial() when initial != null:
return initial(_that);case Team_Loading() when loading != null:
return loading(_that);case LoadedTeam() when loadedTeam != null:
return loadedTeam(_that);case LoadedTeams() when loadedTeams != null:
return loadedTeams(_that);case Team_Error() when error != null:
return error(_that);case Team_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Team_Initial value)  initial,required TResult Function( Team_Loading value)  loading,required TResult Function( LoadedTeam value)  loadedTeam,required TResult Function( LoadedTeams value)  loadedTeams,required TResult Function( Team_Error value)  error,required TResult Function( Team_Success value)  success,}){
final _that = this;
switch (_that) {
case Team_Initial():
return initial(_that);case Team_Loading():
return loading(_that);case LoadedTeam():
return loadedTeam(_that);case LoadedTeams():
return loadedTeams(_that);case Team_Error():
return error(_that);case Team_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Team_Initial value)?  initial,TResult? Function( Team_Loading value)?  loading,TResult? Function( LoadedTeam value)?  loadedTeam,TResult? Function( LoadedTeams value)?  loadedTeams,TResult? Function( Team_Error value)?  error,TResult? Function( Team_Success value)?  success,}){
final _that = this;
switch (_that) {
case Team_Initial() when initial != null:
return initial(_that);case Team_Loading() when loading != null:
return loading(_that);case LoadedTeam() when loadedTeam != null:
return loadedTeam(_that);case LoadedTeams() when loadedTeams != null:
return loadedTeams(_that);case Team_Error() when error != null:
return error(_that);case Team_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Team team)?  loadedTeam,TResult Function( List<Team> teams,  int currentPage,  int limit,  bool hasMore)?  loadedTeams,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Team_Initial() when initial != null:
return initial();case Team_Loading() when loading != null:
return loading();case LoadedTeam() when loadedTeam != null:
return loadedTeam(_that.team);case LoadedTeams() when loadedTeams != null:
return loadedTeams(_that.teams,_that.currentPage,_that.limit,_that.hasMore);case Team_Error() when error != null:
return error(_that.message);case Team_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Team team)  loadedTeam,required TResult Function( List<Team> teams,  int currentPage,  int limit,  bool hasMore)  loadedTeams,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Team_Initial():
return initial();case Team_Loading():
return loading();case LoadedTeam():
return loadedTeam(_that.team);case LoadedTeams():
return loadedTeams(_that.teams,_that.currentPage,_that.limit,_that.hasMore);case Team_Error():
return error(_that.message);case Team_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Team team)?  loadedTeam,TResult? Function( List<Team> teams,  int currentPage,  int limit,  bool hasMore)?  loadedTeams,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Team_Initial() when initial != null:
return initial();case Team_Loading() when loading != null:
return loading();case LoadedTeam() when loadedTeam != null:
return loadedTeam(_that.team);case LoadedTeams() when loadedTeams != null:
return loadedTeams(_that.teams,_that.currentPage,_that.limit,_that.hasMore);case Team_Error() when error != null:
return error(_that.message);case Team_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Team_Initial implements TeamState {
  const Team_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Team_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamState.initial()';
}


}




/// @nodoc


class Team_Loading implements TeamState {
  const Team_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Team_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamState.loading()';
}


}




/// @nodoc


class LoadedTeam implements TeamState {
  const LoadedTeam(this.team);
  

 final  Team team;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTeamCopyWith<LoadedTeam> get copyWith => _$LoadedTeamCopyWithImpl<LoadedTeam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTeam&&(identical(other.team, team) || other.team == team));
}


@override
int get hashCode => Object.hash(runtimeType,team);

@override
String toString() {
  return 'TeamState.loadedTeam(team: $team)';
}


}

/// @nodoc
abstract mixin class $LoadedTeamCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory $LoadedTeamCopyWith(LoadedTeam value, $Res Function(LoadedTeam) _then) = _$LoadedTeamCopyWithImpl;
@useResult
$Res call({
 Team team
});


$TeamCopyWith<$Res> get team;

}
/// @nodoc
class _$LoadedTeamCopyWithImpl<$Res>
    implements $LoadedTeamCopyWith<$Res> {
  _$LoadedTeamCopyWithImpl(this._self, this._then);

  final LoadedTeam _self;
  final $Res Function(LoadedTeam) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? team = null,}) {
  return _then(LoadedTeam(
null == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as Team,
  ));
}

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res> get team {
  
  return $TeamCopyWith<$Res>(_self.team, (value) {
    return _then(_self.copyWith(team: value));
  });
}
}

/// @nodoc


class LoadedTeams implements TeamState {
  const LoadedTeams(final  List<Team> teams, this.currentPage, this.limit, this.hasMore): _teams = teams;
  

 final  List<Team> _teams;
 List<Team> get teams {
  if (_teams is EqualUnmodifiableListView) return _teams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teams);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTeamsCopyWith<LoadedTeams> get copyWith => _$LoadedTeamsCopyWithImpl<LoadedTeams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTeams&&const DeepCollectionEquality().equals(other._teams, _teams)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_teams),currentPage,limit,hasMore);

@override
String toString() {
  return 'TeamState.loadedTeams(teams: $teams, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedTeamsCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory $LoadedTeamsCopyWith(LoadedTeams value, $Res Function(LoadedTeams) _then) = _$LoadedTeamsCopyWithImpl;
@useResult
$Res call({
 List<Team> teams, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedTeamsCopyWithImpl<$Res>
    implements $LoadedTeamsCopyWith<$Res> {
  _$LoadedTeamsCopyWithImpl(this._self, this._then);

  final LoadedTeams _self;
  final $Res Function(LoadedTeams) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? teams = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedTeams(
null == teams ? _self._teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Team_Error implements TeamState {
  const Team_Error(this.message);
  

 final  String message;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Team_ErrorCopyWith<Team_Error> get copyWith => _$Team_ErrorCopyWithImpl<Team_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Team_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TeamState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Team_ErrorCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory $Team_ErrorCopyWith(Team_Error value, $Res Function(Team_Error) _then) = _$Team_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Team_ErrorCopyWithImpl<$Res>
    implements $Team_ErrorCopyWith<$Res> {
  _$Team_ErrorCopyWithImpl(this._self, this._then);

  final Team_Error _self;
  final $Res Function(Team_Error) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Team_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Team_Success implements TeamState {
  const Team_Success(this.message);
  

 final  String message;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Team_SuccessCopyWith<Team_Success> get copyWith => _$Team_SuccessCopyWithImpl<Team_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Team_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TeamState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Team_SuccessCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory $Team_SuccessCopyWith(Team_Success value, $Res Function(Team_Success) _then) = _$Team_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Team_SuccessCopyWithImpl<$Res>
    implements $Team_SuccessCopyWith<$Res> {
  _$Team_SuccessCopyWithImpl(this._self, this._then);

  final Team_Success _self;
  final $Res Function(Team_Success) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Team_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
