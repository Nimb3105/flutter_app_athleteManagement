// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchScheduleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchScheduleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchScheduleEvent()';
}


}

/// @nodoc
class $MatchScheduleEventCopyWith<$Res>  {
$MatchScheduleEventCopyWith(MatchScheduleEvent _, $Res Function(MatchScheduleEvent) __);
}


/// Adds pattern-matching-related methods to [MatchScheduleEvent].
extension MatchScheduleEventPatterns on MatchScheduleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateMatchSchedule value)?  createMatchSchedule,TResult Function( _GetMatchScheduleById value)?  getMatchScheduleById,TResult Function( _GetMatchScheduleByTournamentId value)?  getMatchScheduleByTournamentId,TResult Function( _GetAllMatchSchedules value)?  getAllMatchSchedules,TResult Function( _UpdateMatchSchedule value)?  updateMatchSchedule,TResult Function( _DeleteMatchSchedule value)?  deleteMatchSchedule,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMatchSchedule() when createMatchSchedule != null:
return createMatchSchedule(_that);case _GetMatchScheduleById() when getMatchScheduleById != null:
return getMatchScheduleById(_that);case _GetMatchScheduleByTournamentId() when getMatchScheduleByTournamentId != null:
return getMatchScheduleByTournamentId(_that);case _GetAllMatchSchedules() when getAllMatchSchedules != null:
return getAllMatchSchedules(_that);case _UpdateMatchSchedule() when updateMatchSchedule != null:
return updateMatchSchedule(_that);case _DeleteMatchSchedule() when deleteMatchSchedule != null:
return deleteMatchSchedule(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateMatchSchedule value)  createMatchSchedule,required TResult Function( _GetMatchScheduleById value)  getMatchScheduleById,required TResult Function( _GetMatchScheduleByTournamentId value)  getMatchScheduleByTournamentId,required TResult Function( _GetAllMatchSchedules value)  getAllMatchSchedules,required TResult Function( _UpdateMatchSchedule value)  updateMatchSchedule,required TResult Function( _DeleteMatchSchedule value)  deleteMatchSchedule,}){
final _that = this;
switch (_that) {
case _CreateMatchSchedule():
return createMatchSchedule(_that);case _GetMatchScheduleById():
return getMatchScheduleById(_that);case _GetMatchScheduleByTournamentId():
return getMatchScheduleByTournamentId(_that);case _GetAllMatchSchedules():
return getAllMatchSchedules(_that);case _UpdateMatchSchedule():
return updateMatchSchedule(_that);case _DeleteMatchSchedule():
return deleteMatchSchedule(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateMatchSchedule value)?  createMatchSchedule,TResult? Function( _GetMatchScheduleById value)?  getMatchScheduleById,TResult? Function( _GetMatchScheduleByTournamentId value)?  getMatchScheduleByTournamentId,TResult? Function( _GetAllMatchSchedules value)?  getAllMatchSchedules,TResult? Function( _UpdateMatchSchedule value)?  updateMatchSchedule,TResult? Function( _DeleteMatchSchedule value)?  deleteMatchSchedule,}){
final _that = this;
switch (_that) {
case _CreateMatchSchedule() when createMatchSchedule != null:
return createMatchSchedule(_that);case _GetMatchScheduleById() when getMatchScheduleById != null:
return getMatchScheduleById(_that);case _GetMatchScheduleByTournamentId() when getMatchScheduleByTournamentId != null:
return getMatchScheduleByTournamentId(_that);case _GetAllMatchSchedules() when getAllMatchSchedules != null:
return getAllMatchSchedules(_that);case _UpdateMatchSchedule() when updateMatchSchedule != null:
return updateMatchSchedule(_that);case _DeleteMatchSchedule() when deleteMatchSchedule != null:
return deleteMatchSchedule(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MatchSchedule matchSchedule)?  createMatchSchedule,TResult Function( String id)?  getMatchScheduleById,TResult Function( String tournamentId)?  getMatchScheduleByTournamentId,TResult Function( int page,  int limit)?  getAllMatchSchedules,TResult Function( String id,  MatchSchedule matchSchedule)?  updateMatchSchedule,TResult Function( String id)?  deleteMatchSchedule,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMatchSchedule() when createMatchSchedule != null:
return createMatchSchedule(_that.matchSchedule);case _GetMatchScheduleById() when getMatchScheduleById != null:
return getMatchScheduleById(_that.id);case _GetMatchScheduleByTournamentId() when getMatchScheduleByTournamentId != null:
return getMatchScheduleByTournamentId(_that.tournamentId);case _GetAllMatchSchedules() when getAllMatchSchedules != null:
return getAllMatchSchedules(_that.page,_that.limit);case _UpdateMatchSchedule() when updateMatchSchedule != null:
return updateMatchSchedule(_that.id,_that.matchSchedule);case _DeleteMatchSchedule() when deleteMatchSchedule != null:
return deleteMatchSchedule(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MatchSchedule matchSchedule)  createMatchSchedule,required TResult Function( String id)  getMatchScheduleById,required TResult Function( String tournamentId)  getMatchScheduleByTournamentId,required TResult Function( int page,  int limit)  getAllMatchSchedules,required TResult Function( String id,  MatchSchedule matchSchedule)  updateMatchSchedule,required TResult Function( String id)  deleteMatchSchedule,}) {final _that = this;
switch (_that) {
case _CreateMatchSchedule():
return createMatchSchedule(_that.matchSchedule);case _GetMatchScheduleById():
return getMatchScheduleById(_that.id);case _GetMatchScheduleByTournamentId():
return getMatchScheduleByTournamentId(_that.tournamentId);case _GetAllMatchSchedules():
return getAllMatchSchedules(_that.page,_that.limit);case _UpdateMatchSchedule():
return updateMatchSchedule(_that.id,_that.matchSchedule);case _DeleteMatchSchedule():
return deleteMatchSchedule(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MatchSchedule matchSchedule)?  createMatchSchedule,TResult? Function( String id)?  getMatchScheduleById,TResult? Function( String tournamentId)?  getMatchScheduleByTournamentId,TResult? Function( int page,  int limit)?  getAllMatchSchedules,TResult? Function( String id,  MatchSchedule matchSchedule)?  updateMatchSchedule,TResult? Function( String id)?  deleteMatchSchedule,}) {final _that = this;
switch (_that) {
case _CreateMatchSchedule() when createMatchSchedule != null:
return createMatchSchedule(_that.matchSchedule);case _GetMatchScheduleById() when getMatchScheduleById != null:
return getMatchScheduleById(_that.id);case _GetMatchScheduleByTournamentId() when getMatchScheduleByTournamentId != null:
return getMatchScheduleByTournamentId(_that.tournamentId);case _GetAllMatchSchedules() when getAllMatchSchedules != null:
return getAllMatchSchedules(_that.page,_that.limit);case _UpdateMatchSchedule() when updateMatchSchedule != null:
return updateMatchSchedule(_that.id,_that.matchSchedule);case _DeleteMatchSchedule() when deleteMatchSchedule != null:
return deleteMatchSchedule(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateMatchSchedule implements MatchScheduleEvent {
  const _CreateMatchSchedule(this.matchSchedule);
  

 final  MatchSchedule matchSchedule;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMatchScheduleCopyWith<_CreateMatchSchedule> get copyWith => __$CreateMatchScheduleCopyWithImpl<_CreateMatchSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMatchSchedule&&(identical(other.matchSchedule, matchSchedule) || other.matchSchedule == matchSchedule));
}


@override
int get hashCode => Object.hash(runtimeType,matchSchedule);

@override
String toString() {
  return 'MatchScheduleEvent.createMatchSchedule(matchSchedule: $matchSchedule)';
}


}

/// @nodoc
abstract mixin class _$CreateMatchScheduleCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$CreateMatchScheduleCopyWith(_CreateMatchSchedule value, $Res Function(_CreateMatchSchedule) _then) = __$CreateMatchScheduleCopyWithImpl;
@useResult
$Res call({
 MatchSchedule matchSchedule
});


$MatchScheduleCopyWith<$Res> get matchSchedule;

}
/// @nodoc
class __$CreateMatchScheduleCopyWithImpl<$Res>
    implements _$CreateMatchScheduleCopyWith<$Res> {
  __$CreateMatchScheduleCopyWithImpl(this._self, this._then);

  final _CreateMatchSchedule _self;
  final $Res Function(_CreateMatchSchedule) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchSchedule = null,}) {
  return _then(_CreateMatchSchedule(
null == matchSchedule ? _self.matchSchedule : matchSchedule // ignore: cast_nullable_to_non_nullable
as MatchSchedule,
  ));
}

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchScheduleCopyWith<$Res> get matchSchedule {
  
  return $MatchScheduleCopyWith<$Res>(_self.matchSchedule, (value) {
    return _then(_self.copyWith(matchSchedule: value));
  });
}
}

/// @nodoc


class _GetMatchScheduleById implements MatchScheduleEvent {
  const _GetMatchScheduleById(this.id);
  

 final  String id;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMatchScheduleByIdCopyWith<_GetMatchScheduleById> get copyWith => __$GetMatchScheduleByIdCopyWithImpl<_GetMatchScheduleById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMatchScheduleById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MatchScheduleEvent.getMatchScheduleById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetMatchScheduleByIdCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$GetMatchScheduleByIdCopyWith(_GetMatchScheduleById value, $Res Function(_GetMatchScheduleById) _then) = __$GetMatchScheduleByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetMatchScheduleByIdCopyWithImpl<$Res>
    implements _$GetMatchScheduleByIdCopyWith<$Res> {
  __$GetMatchScheduleByIdCopyWithImpl(this._self, this._then);

  final _GetMatchScheduleById _self;
  final $Res Function(_GetMatchScheduleById) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetMatchScheduleById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetMatchScheduleByTournamentId implements MatchScheduleEvent {
  const _GetMatchScheduleByTournamentId(this.tournamentId);
  

 final  String tournamentId;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMatchScheduleByTournamentIdCopyWith<_GetMatchScheduleByTournamentId> get copyWith => __$GetMatchScheduleByTournamentIdCopyWithImpl<_GetMatchScheduleByTournamentId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMatchScheduleByTournamentId&&(identical(other.tournamentId, tournamentId) || other.tournamentId == tournamentId));
}


@override
int get hashCode => Object.hash(runtimeType,tournamentId);

@override
String toString() {
  return 'MatchScheduleEvent.getMatchScheduleByTournamentId(tournamentId: $tournamentId)';
}


}

/// @nodoc
abstract mixin class _$GetMatchScheduleByTournamentIdCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$GetMatchScheduleByTournamentIdCopyWith(_GetMatchScheduleByTournamentId value, $Res Function(_GetMatchScheduleByTournamentId) _then) = __$GetMatchScheduleByTournamentIdCopyWithImpl;
@useResult
$Res call({
 String tournamentId
});




}
/// @nodoc
class __$GetMatchScheduleByTournamentIdCopyWithImpl<$Res>
    implements _$GetMatchScheduleByTournamentIdCopyWith<$Res> {
  __$GetMatchScheduleByTournamentIdCopyWithImpl(this._self, this._then);

  final _GetMatchScheduleByTournamentId _self;
  final $Res Function(_GetMatchScheduleByTournamentId) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tournamentId = null,}) {
  return _then(_GetMatchScheduleByTournamentId(
null == tournamentId ? _self.tournamentId : tournamentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllMatchSchedules implements MatchScheduleEvent {
  const _GetAllMatchSchedules({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllMatchSchedulesCopyWith<_GetAllMatchSchedules> get copyWith => __$GetAllMatchSchedulesCopyWithImpl<_GetAllMatchSchedules>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllMatchSchedules&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'MatchScheduleEvent.getAllMatchSchedules(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllMatchSchedulesCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$GetAllMatchSchedulesCopyWith(_GetAllMatchSchedules value, $Res Function(_GetAllMatchSchedules) _then) = __$GetAllMatchSchedulesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllMatchSchedulesCopyWithImpl<$Res>
    implements _$GetAllMatchSchedulesCopyWith<$Res> {
  __$GetAllMatchSchedulesCopyWithImpl(this._self, this._then);

  final _GetAllMatchSchedules _self;
  final $Res Function(_GetAllMatchSchedules) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllMatchSchedules(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateMatchSchedule implements MatchScheduleEvent {
  const _UpdateMatchSchedule(this.id, this.matchSchedule);
  

 final  String id;
 final  MatchSchedule matchSchedule;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMatchScheduleCopyWith<_UpdateMatchSchedule> get copyWith => __$UpdateMatchScheduleCopyWithImpl<_UpdateMatchSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMatchSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.matchSchedule, matchSchedule) || other.matchSchedule == matchSchedule));
}


@override
int get hashCode => Object.hash(runtimeType,id,matchSchedule);

@override
String toString() {
  return 'MatchScheduleEvent.updateMatchSchedule(id: $id, matchSchedule: $matchSchedule)';
}


}

/// @nodoc
abstract mixin class _$UpdateMatchScheduleCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$UpdateMatchScheduleCopyWith(_UpdateMatchSchedule value, $Res Function(_UpdateMatchSchedule) _then) = __$UpdateMatchScheduleCopyWithImpl;
@useResult
$Res call({
 String id, MatchSchedule matchSchedule
});


$MatchScheduleCopyWith<$Res> get matchSchedule;

}
/// @nodoc
class __$UpdateMatchScheduleCopyWithImpl<$Res>
    implements _$UpdateMatchScheduleCopyWith<$Res> {
  __$UpdateMatchScheduleCopyWithImpl(this._self, this._then);

  final _UpdateMatchSchedule _self;
  final $Res Function(_UpdateMatchSchedule) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? matchSchedule = null,}) {
  return _then(_UpdateMatchSchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == matchSchedule ? _self.matchSchedule : matchSchedule // ignore: cast_nullable_to_non_nullable
as MatchSchedule,
  ));
}

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchScheduleCopyWith<$Res> get matchSchedule {
  
  return $MatchScheduleCopyWith<$Res>(_self.matchSchedule, (value) {
    return _then(_self.copyWith(matchSchedule: value));
  });
}
}

/// @nodoc


class _DeleteMatchSchedule implements MatchScheduleEvent {
  const _DeleteMatchSchedule(this.id);
  

 final  String id;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMatchScheduleCopyWith<_DeleteMatchSchedule> get copyWith => __$DeleteMatchScheduleCopyWithImpl<_DeleteMatchSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMatchSchedule&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MatchScheduleEvent.deleteMatchSchedule(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteMatchScheduleCopyWith<$Res> implements $MatchScheduleEventCopyWith<$Res> {
  factory _$DeleteMatchScheduleCopyWith(_DeleteMatchSchedule value, $Res Function(_DeleteMatchSchedule) _then) = __$DeleteMatchScheduleCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteMatchScheduleCopyWithImpl<$Res>
    implements _$DeleteMatchScheduleCopyWith<$Res> {
  __$DeleteMatchScheduleCopyWithImpl(this._self, this._then);

  final _DeleteMatchSchedule _self;
  final $Res Function(_DeleteMatchSchedule) _then;

/// Create a copy of MatchScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteMatchSchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MatchScheduleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchScheduleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchScheduleState()';
}


}

/// @nodoc
class $MatchScheduleStateCopyWith<$Res>  {
$MatchScheduleStateCopyWith(MatchScheduleState _, $Res Function(MatchScheduleState) __);
}


/// Adds pattern-matching-related methods to [MatchScheduleState].
extension MatchScheduleStatePatterns on MatchScheduleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MatchSchedule_Initial value)?  initial,TResult Function( MatchSchedule_Loading value)?  loading,TResult Function( LoadedMatchSchedule value)?  loadedMatchSchedule,TResult Function( LoadedMatchSchedules value)?  loadedMatchSchedules,TResult Function( MatchSchedule_Error value)?  error,TResult Function( MatchSchedule_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MatchSchedule_Initial() when initial != null:
return initial(_that);case MatchSchedule_Loading() when loading != null:
return loading(_that);case LoadedMatchSchedule() when loadedMatchSchedule != null:
return loadedMatchSchedule(_that);case LoadedMatchSchedules() when loadedMatchSchedules != null:
return loadedMatchSchedules(_that);case MatchSchedule_Error() when error != null:
return error(_that);case MatchSchedule_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MatchSchedule_Initial value)  initial,required TResult Function( MatchSchedule_Loading value)  loading,required TResult Function( LoadedMatchSchedule value)  loadedMatchSchedule,required TResult Function( LoadedMatchSchedules value)  loadedMatchSchedules,required TResult Function( MatchSchedule_Error value)  error,required TResult Function( MatchSchedule_Success value)  success,}){
final _that = this;
switch (_that) {
case MatchSchedule_Initial():
return initial(_that);case MatchSchedule_Loading():
return loading(_that);case LoadedMatchSchedule():
return loadedMatchSchedule(_that);case LoadedMatchSchedules():
return loadedMatchSchedules(_that);case MatchSchedule_Error():
return error(_that);case MatchSchedule_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MatchSchedule_Initial value)?  initial,TResult? Function( MatchSchedule_Loading value)?  loading,TResult? Function( LoadedMatchSchedule value)?  loadedMatchSchedule,TResult? Function( LoadedMatchSchedules value)?  loadedMatchSchedules,TResult? Function( MatchSchedule_Error value)?  error,TResult? Function( MatchSchedule_Success value)?  success,}){
final _that = this;
switch (_that) {
case MatchSchedule_Initial() when initial != null:
return initial(_that);case MatchSchedule_Loading() when loading != null:
return loading(_that);case LoadedMatchSchedule() when loadedMatchSchedule != null:
return loadedMatchSchedule(_that);case LoadedMatchSchedules() when loadedMatchSchedules != null:
return loadedMatchSchedules(_that);case MatchSchedule_Error() when error != null:
return error(_that);case MatchSchedule_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MatchSchedule matchSchedule)?  loadedMatchSchedule,TResult Function( List<MatchSchedule> matchSchedules,  int currentPage,  int limit,  bool hasMore)?  loadedMatchSchedules,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MatchSchedule_Initial() when initial != null:
return initial();case MatchSchedule_Loading() when loading != null:
return loading();case LoadedMatchSchedule() when loadedMatchSchedule != null:
return loadedMatchSchedule(_that.matchSchedule);case LoadedMatchSchedules() when loadedMatchSchedules != null:
return loadedMatchSchedules(_that.matchSchedules,_that.currentPage,_that.limit,_that.hasMore);case MatchSchedule_Error() when error != null:
return error(_that.message);case MatchSchedule_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MatchSchedule matchSchedule)  loadedMatchSchedule,required TResult Function( List<MatchSchedule> matchSchedules,  int currentPage,  int limit,  bool hasMore)  loadedMatchSchedules,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case MatchSchedule_Initial():
return initial();case MatchSchedule_Loading():
return loading();case LoadedMatchSchedule():
return loadedMatchSchedule(_that.matchSchedule);case LoadedMatchSchedules():
return loadedMatchSchedules(_that.matchSchedules,_that.currentPage,_that.limit,_that.hasMore);case MatchSchedule_Error():
return error(_that.message);case MatchSchedule_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MatchSchedule matchSchedule)?  loadedMatchSchedule,TResult? Function( List<MatchSchedule> matchSchedules,  int currentPage,  int limit,  bool hasMore)?  loadedMatchSchedules,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case MatchSchedule_Initial() when initial != null:
return initial();case MatchSchedule_Loading() when loading != null:
return loading();case LoadedMatchSchedule() when loadedMatchSchedule != null:
return loadedMatchSchedule(_that.matchSchedule);case LoadedMatchSchedules() when loadedMatchSchedules != null:
return loadedMatchSchedules(_that.matchSchedules,_that.currentPage,_that.limit,_that.hasMore);case MatchSchedule_Error() when error != null:
return error(_that.message);case MatchSchedule_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MatchSchedule_Initial implements MatchScheduleState {
  const MatchSchedule_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchSchedule_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchScheduleState.initial()';
}


}




/// @nodoc


class MatchSchedule_Loading implements MatchScheduleState {
  const MatchSchedule_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchSchedule_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchScheduleState.loading()';
}


}




/// @nodoc


class LoadedMatchSchedule implements MatchScheduleState {
  const LoadedMatchSchedule(this.matchSchedule);
  

 final  MatchSchedule matchSchedule;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMatchScheduleCopyWith<LoadedMatchSchedule> get copyWith => _$LoadedMatchScheduleCopyWithImpl<LoadedMatchSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMatchSchedule&&(identical(other.matchSchedule, matchSchedule) || other.matchSchedule == matchSchedule));
}


@override
int get hashCode => Object.hash(runtimeType,matchSchedule);

@override
String toString() {
  return 'MatchScheduleState.loadedMatchSchedule(matchSchedule: $matchSchedule)';
}


}

/// @nodoc
abstract mixin class $LoadedMatchScheduleCopyWith<$Res> implements $MatchScheduleStateCopyWith<$Res> {
  factory $LoadedMatchScheduleCopyWith(LoadedMatchSchedule value, $Res Function(LoadedMatchSchedule) _then) = _$LoadedMatchScheduleCopyWithImpl;
@useResult
$Res call({
 MatchSchedule matchSchedule
});


$MatchScheduleCopyWith<$Res> get matchSchedule;

}
/// @nodoc
class _$LoadedMatchScheduleCopyWithImpl<$Res>
    implements $LoadedMatchScheduleCopyWith<$Res> {
  _$LoadedMatchScheduleCopyWithImpl(this._self, this._then);

  final LoadedMatchSchedule _self;
  final $Res Function(LoadedMatchSchedule) _then;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchSchedule = null,}) {
  return _then(LoadedMatchSchedule(
null == matchSchedule ? _self.matchSchedule : matchSchedule // ignore: cast_nullable_to_non_nullable
as MatchSchedule,
  ));
}

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchScheduleCopyWith<$Res> get matchSchedule {
  
  return $MatchScheduleCopyWith<$Res>(_self.matchSchedule, (value) {
    return _then(_self.copyWith(matchSchedule: value));
  });
}
}

/// @nodoc


class LoadedMatchSchedules implements MatchScheduleState {
  const LoadedMatchSchedules(final  List<MatchSchedule> matchSchedules, this.currentPage, this.limit, this.hasMore): _matchSchedules = matchSchedules;
  

 final  List<MatchSchedule> _matchSchedules;
 List<MatchSchedule> get matchSchedules {
  if (_matchSchedules is EqualUnmodifiableListView) return _matchSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matchSchedules);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMatchSchedulesCopyWith<LoadedMatchSchedules> get copyWith => _$LoadedMatchSchedulesCopyWithImpl<LoadedMatchSchedules>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMatchSchedules&&const DeepCollectionEquality().equals(other._matchSchedules, _matchSchedules)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matchSchedules),currentPage,limit,hasMore);

@override
String toString() {
  return 'MatchScheduleState.loadedMatchSchedules(matchSchedules: $matchSchedules, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedMatchSchedulesCopyWith<$Res> implements $MatchScheduleStateCopyWith<$Res> {
  factory $LoadedMatchSchedulesCopyWith(LoadedMatchSchedules value, $Res Function(LoadedMatchSchedules) _then) = _$LoadedMatchSchedulesCopyWithImpl;
@useResult
$Res call({
 List<MatchSchedule> matchSchedules, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedMatchSchedulesCopyWithImpl<$Res>
    implements $LoadedMatchSchedulesCopyWith<$Res> {
  _$LoadedMatchSchedulesCopyWithImpl(this._self, this._then);

  final LoadedMatchSchedules _self;
  final $Res Function(LoadedMatchSchedules) _then;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchSchedules = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedMatchSchedules(
null == matchSchedules ? _self._matchSchedules : matchSchedules // ignore: cast_nullable_to_non_nullable
as List<MatchSchedule>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class MatchSchedule_Error implements MatchScheduleState {
  const MatchSchedule_Error(this.message);
  

 final  String message;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchSchedule_ErrorCopyWith<MatchSchedule_Error> get copyWith => _$MatchSchedule_ErrorCopyWithImpl<MatchSchedule_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchSchedule_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatchScheduleState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MatchSchedule_ErrorCopyWith<$Res> implements $MatchScheduleStateCopyWith<$Res> {
  factory $MatchSchedule_ErrorCopyWith(MatchSchedule_Error value, $Res Function(MatchSchedule_Error) _then) = _$MatchSchedule_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MatchSchedule_ErrorCopyWithImpl<$Res>
    implements $MatchSchedule_ErrorCopyWith<$Res> {
  _$MatchSchedule_ErrorCopyWithImpl(this._self, this._then);

  final MatchSchedule_Error _self;
  final $Res Function(MatchSchedule_Error) _then;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MatchSchedule_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MatchSchedule_Success implements MatchScheduleState {
  const MatchSchedule_Success(this.message);
  

 final  String message;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchSchedule_SuccessCopyWith<MatchSchedule_Success> get copyWith => _$MatchSchedule_SuccessCopyWithImpl<MatchSchedule_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchSchedule_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatchScheduleState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $MatchSchedule_SuccessCopyWith<$Res> implements $MatchScheduleStateCopyWith<$Res> {
  factory $MatchSchedule_SuccessCopyWith(MatchSchedule_Success value, $Res Function(MatchSchedule_Success) _then) = _$MatchSchedule_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MatchSchedule_SuccessCopyWithImpl<$Res>
    implements $MatchSchedule_SuccessCopyWith<$Res> {
  _$MatchSchedule_SuccessCopyWithImpl(this._self, this._then);

  final MatchSchedule_Success _self;
  final $Res Function(MatchSchedule_Success) _then;

/// Create a copy of MatchScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MatchSchedule_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
