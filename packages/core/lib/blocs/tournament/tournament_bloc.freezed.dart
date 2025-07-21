// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TournamentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TournamentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TournamentEvent()';
}


}

/// @nodoc
class $TournamentEventCopyWith<$Res>  {
$TournamentEventCopyWith(TournamentEvent _, $Res Function(TournamentEvent) __);
}


/// Adds pattern-matching-related methods to [TournamentEvent].
extension TournamentEventPatterns on TournamentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateTournament value)?  createTournament,TResult Function( _GetTournamentById value)?  getTournamentById,TResult Function( _GetAllTournaments value)?  getAllTournaments,TResult Function( _UpdateTournament value)?  updateTournament,TResult Function( _DeleteTournament value)?  deleteTournament,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTournament() when createTournament != null:
return createTournament(_that);case _GetTournamentById() when getTournamentById != null:
return getTournamentById(_that);case _GetAllTournaments() when getAllTournaments != null:
return getAllTournaments(_that);case _UpdateTournament() when updateTournament != null:
return updateTournament(_that);case _DeleteTournament() when deleteTournament != null:
return deleteTournament(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateTournament value)  createTournament,required TResult Function( _GetTournamentById value)  getTournamentById,required TResult Function( _GetAllTournaments value)  getAllTournaments,required TResult Function( _UpdateTournament value)  updateTournament,required TResult Function( _DeleteTournament value)  deleteTournament,}){
final _that = this;
switch (_that) {
case _CreateTournament():
return createTournament(_that);case _GetTournamentById():
return getTournamentById(_that);case _GetAllTournaments():
return getAllTournaments(_that);case _UpdateTournament():
return updateTournament(_that);case _DeleteTournament():
return deleteTournament(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateTournament value)?  createTournament,TResult? Function( _GetTournamentById value)?  getTournamentById,TResult? Function( _GetAllTournaments value)?  getAllTournaments,TResult? Function( _UpdateTournament value)?  updateTournament,TResult? Function( _DeleteTournament value)?  deleteTournament,}){
final _that = this;
switch (_that) {
case _CreateTournament() when createTournament != null:
return createTournament(_that);case _GetTournamentById() when getTournamentById != null:
return getTournamentById(_that);case _GetAllTournaments() when getAllTournaments != null:
return getAllTournaments(_that);case _UpdateTournament() when updateTournament != null:
return updateTournament(_that);case _DeleteTournament() when deleteTournament != null:
return deleteTournament(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Tournament tournament)?  createTournament,TResult Function( String id)?  getTournamentById,TResult Function( int page,  int limit)?  getAllTournaments,TResult Function( String id,  Tournament tournament)?  updateTournament,TResult Function( String id)?  deleteTournament,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTournament() when createTournament != null:
return createTournament(_that.tournament);case _GetTournamentById() when getTournamentById != null:
return getTournamentById(_that.id);case _GetAllTournaments() when getAllTournaments != null:
return getAllTournaments(_that.page,_that.limit);case _UpdateTournament() when updateTournament != null:
return updateTournament(_that.id,_that.tournament);case _DeleteTournament() when deleteTournament != null:
return deleteTournament(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Tournament tournament)  createTournament,required TResult Function( String id)  getTournamentById,required TResult Function( int page,  int limit)  getAllTournaments,required TResult Function( String id,  Tournament tournament)  updateTournament,required TResult Function( String id)  deleteTournament,}) {final _that = this;
switch (_that) {
case _CreateTournament():
return createTournament(_that.tournament);case _GetTournamentById():
return getTournamentById(_that.id);case _GetAllTournaments():
return getAllTournaments(_that.page,_that.limit);case _UpdateTournament():
return updateTournament(_that.id,_that.tournament);case _DeleteTournament():
return deleteTournament(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Tournament tournament)?  createTournament,TResult? Function( String id)?  getTournamentById,TResult? Function( int page,  int limit)?  getAllTournaments,TResult? Function( String id,  Tournament tournament)?  updateTournament,TResult? Function( String id)?  deleteTournament,}) {final _that = this;
switch (_that) {
case _CreateTournament() when createTournament != null:
return createTournament(_that.tournament);case _GetTournamentById() when getTournamentById != null:
return getTournamentById(_that.id);case _GetAllTournaments() when getAllTournaments != null:
return getAllTournaments(_that.page,_that.limit);case _UpdateTournament() when updateTournament != null:
return updateTournament(_that.id,_that.tournament);case _DeleteTournament() when deleteTournament != null:
return deleteTournament(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTournament implements TournamentEvent {
  const _CreateTournament(this.tournament);
  

 final  Tournament tournament;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTournamentCopyWith<_CreateTournament> get copyWith => __$CreateTournamentCopyWithImpl<_CreateTournament>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTournament&&(identical(other.tournament, tournament) || other.tournament == tournament));
}


@override
int get hashCode => Object.hash(runtimeType,tournament);

@override
String toString() {
  return 'TournamentEvent.createTournament(tournament: $tournament)';
}


}

/// @nodoc
abstract mixin class _$CreateTournamentCopyWith<$Res> implements $TournamentEventCopyWith<$Res> {
  factory _$CreateTournamentCopyWith(_CreateTournament value, $Res Function(_CreateTournament) _then) = __$CreateTournamentCopyWithImpl;
@useResult
$Res call({
 Tournament tournament
});


$TournamentCopyWith<$Res> get tournament;

}
/// @nodoc
class __$CreateTournamentCopyWithImpl<$Res>
    implements _$CreateTournamentCopyWith<$Res> {
  __$CreateTournamentCopyWithImpl(this._self, this._then);

  final _CreateTournament _self;
  final $Res Function(_CreateTournament) _then;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tournament = null,}) {
  return _then(_CreateTournament(
null == tournament ? _self.tournament : tournament // ignore: cast_nullable_to_non_nullable
as Tournament,
  ));
}

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TournamentCopyWith<$Res> get tournament {
  
  return $TournamentCopyWith<$Res>(_self.tournament, (value) {
    return _then(_self.copyWith(tournament: value));
  });
}
}

/// @nodoc


class _GetTournamentById implements TournamentEvent {
  const _GetTournamentById(this.id);
  

 final  String id;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTournamentByIdCopyWith<_GetTournamentById> get copyWith => __$GetTournamentByIdCopyWithImpl<_GetTournamentById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTournamentById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TournamentEvent.getTournamentById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTournamentByIdCopyWith<$Res> implements $TournamentEventCopyWith<$Res> {
  factory _$GetTournamentByIdCopyWith(_GetTournamentById value, $Res Function(_GetTournamentById) _then) = __$GetTournamentByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetTournamentByIdCopyWithImpl<$Res>
    implements _$GetTournamentByIdCopyWith<$Res> {
  __$GetTournamentByIdCopyWithImpl(this._self, this._then);

  final _GetTournamentById _self;
  final $Res Function(_GetTournamentById) _then;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTournamentById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllTournaments implements TournamentEvent {
  const _GetAllTournaments({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllTournamentsCopyWith<_GetAllTournaments> get copyWith => __$GetAllTournamentsCopyWithImpl<_GetAllTournaments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllTournaments&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'TournamentEvent.getAllTournaments(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllTournamentsCopyWith<$Res> implements $TournamentEventCopyWith<$Res> {
  factory _$GetAllTournamentsCopyWith(_GetAllTournaments value, $Res Function(_GetAllTournaments) _then) = __$GetAllTournamentsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllTournamentsCopyWithImpl<$Res>
    implements _$GetAllTournamentsCopyWith<$Res> {
  __$GetAllTournamentsCopyWithImpl(this._self, this._then);

  final _GetAllTournaments _self;
  final $Res Function(_GetAllTournaments) _then;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllTournaments(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateTournament implements TournamentEvent {
  const _UpdateTournament(this.id, this.tournament);
  

 final  String id;
 final  Tournament tournament;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTournamentCopyWith<_UpdateTournament> get copyWith => __$UpdateTournamentCopyWithImpl<_UpdateTournament>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTournament&&(identical(other.id, id) || other.id == id)&&(identical(other.tournament, tournament) || other.tournament == tournament));
}


@override
int get hashCode => Object.hash(runtimeType,id,tournament);

@override
String toString() {
  return 'TournamentEvent.updateTournament(id: $id, tournament: $tournament)';
}


}

/// @nodoc
abstract mixin class _$UpdateTournamentCopyWith<$Res> implements $TournamentEventCopyWith<$Res> {
  factory _$UpdateTournamentCopyWith(_UpdateTournament value, $Res Function(_UpdateTournament) _then) = __$UpdateTournamentCopyWithImpl;
@useResult
$Res call({
 String id, Tournament tournament
});


$TournamentCopyWith<$Res> get tournament;

}
/// @nodoc
class __$UpdateTournamentCopyWithImpl<$Res>
    implements _$UpdateTournamentCopyWith<$Res> {
  __$UpdateTournamentCopyWithImpl(this._self, this._then);

  final _UpdateTournament _self;
  final $Res Function(_UpdateTournament) _then;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tournament = null,}) {
  return _then(_UpdateTournament(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == tournament ? _self.tournament : tournament // ignore: cast_nullable_to_non_nullable
as Tournament,
  ));
}

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TournamentCopyWith<$Res> get tournament {
  
  return $TournamentCopyWith<$Res>(_self.tournament, (value) {
    return _then(_self.copyWith(tournament: value));
  });
}
}

/// @nodoc


class _DeleteTournament implements TournamentEvent {
  const _DeleteTournament(this.id);
  

 final  String id;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTournamentCopyWith<_DeleteTournament> get copyWith => __$DeleteTournamentCopyWithImpl<_DeleteTournament>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTournament&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TournamentEvent.deleteTournament(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTournamentCopyWith<$Res> implements $TournamentEventCopyWith<$Res> {
  factory _$DeleteTournamentCopyWith(_DeleteTournament value, $Res Function(_DeleteTournament) _then) = __$DeleteTournamentCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteTournamentCopyWithImpl<$Res>
    implements _$DeleteTournamentCopyWith<$Res> {
  __$DeleteTournamentCopyWithImpl(this._self, this._then);

  final _DeleteTournament _self;
  final $Res Function(_DeleteTournament) _then;

/// Create a copy of TournamentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTournament(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TournamentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TournamentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TournamentState()';
}


}

/// @nodoc
class $TournamentStateCopyWith<$Res>  {
$TournamentStateCopyWith(TournamentState _, $Res Function(TournamentState) __);
}


/// Adds pattern-matching-related methods to [TournamentState].
extension TournamentStatePatterns on TournamentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Tournament_Initial value)?  initial,TResult Function( Tournament_Loading value)?  loading,TResult Function( LoadedTournament value)?  loadedTournament,TResult Function( LoadedTournaments value)?  loadedTournaments,TResult Function( Tournament_Error value)?  error,TResult Function( Tournament_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Tournament_Initial() when initial != null:
return initial(_that);case Tournament_Loading() when loading != null:
return loading(_that);case LoadedTournament() when loadedTournament != null:
return loadedTournament(_that);case LoadedTournaments() when loadedTournaments != null:
return loadedTournaments(_that);case Tournament_Error() when error != null:
return error(_that);case Tournament_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Tournament_Initial value)  initial,required TResult Function( Tournament_Loading value)  loading,required TResult Function( LoadedTournament value)  loadedTournament,required TResult Function( LoadedTournaments value)  loadedTournaments,required TResult Function( Tournament_Error value)  error,required TResult Function( Tournament_Success value)  success,}){
final _that = this;
switch (_that) {
case Tournament_Initial():
return initial(_that);case Tournament_Loading():
return loading(_that);case LoadedTournament():
return loadedTournament(_that);case LoadedTournaments():
return loadedTournaments(_that);case Tournament_Error():
return error(_that);case Tournament_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Tournament_Initial value)?  initial,TResult? Function( Tournament_Loading value)?  loading,TResult? Function( LoadedTournament value)?  loadedTournament,TResult? Function( LoadedTournaments value)?  loadedTournaments,TResult? Function( Tournament_Error value)?  error,TResult? Function( Tournament_Success value)?  success,}){
final _that = this;
switch (_that) {
case Tournament_Initial() when initial != null:
return initial(_that);case Tournament_Loading() when loading != null:
return loading(_that);case LoadedTournament() when loadedTournament != null:
return loadedTournament(_that);case LoadedTournaments() when loadedTournaments != null:
return loadedTournaments(_that);case Tournament_Error() when error != null:
return error(_that);case Tournament_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Tournament tournament)?  loadedTournament,TResult Function( List<Tournament> tournaments,  int currentPage,  int limit,  bool hasMore)?  loadedTournaments,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Tournament_Initial() when initial != null:
return initial();case Tournament_Loading() when loading != null:
return loading();case LoadedTournament() when loadedTournament != null:
return loadedTournament(_that.tournament);case LoadedTournaments() when loadedTournaments != null:
return loadedTournaments(_that.tournaments,_that.currentPage,_that.limit,_that.hasMore);case Tournament_Error() when error != null:
return error(_that.message);case Tournament_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Tournament tournament)  loadedTournament,required TResult Function( List<Tournament> tournaments,  int currentPage,  int limit,  bool hasMore)  loadedTournaments,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Tournament_Initial():
return initial();case Tournament_Loading():
return loading();case LoadedTournament():
return loadedTournament(_that.tournament);case LoadedTournaments():
return loadedTournaments(_that.tournaments,_that.currentPage,_that.limit,_that.hasMore);case Tournament_Error():
return error(_that.message);case Tournament_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Tournament tournament)?  loadedTournament,TResult? Function( List<Tournament> tournaments,  int currentPage,  int limit,  bool hasMore)?  loadedTournaments,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Tournament_Initial() when initial != null:
return initial();case Tournament_Loading() when loading != null:
return loading();case LoadedTournament() when loadedTournament != null:
return loadedTournament(_that.tournament);case LoadedTournaments() when loadedTournaments != null:
return loadedTournaments(_that.tournaments,_that.currentPage,_that.limit,_that.hasMore);case Tournament_Error() when error != null:
return error(_that.message);case Tournament_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Tournament_Initial implements TournamentState {
  const Tournament_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tournament_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TournamentState.initial()';
}


}




/// @nodoc


class Tournament_Loading implements TournamentState {
  const Tournament_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tournament_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TournamentState.loading()';
}


}




/// @nodoc


class LoadedTournament implements TournamentState {
  const LoadedTournament(this.tournament);
  

 final  Tournament tournament;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTournamentCopyWith<LoadedTournament> get copyWith => _$LoadedTournamentCopyWithImpl<LoadedTournament>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTournament&&(identical(other.tournament, tournament) || other.tournament == tournament));
}


@override
int get hashCode => Object.hash(runtimeType,tournament);

@override
String toString() {
  return 'TournamentState.loadedTournament(tournament: $tournament)';
}


}

/// @nodoc
abstract mixin class $LoadedTournamentCopyWith<$Res> implements $TournamentStateCopyWith<$Res> {
  factory $LoadedTournamentCopyWith(LoadedTournament value, $Res Function(LoadedTournament) _then) = _$LoadedTournamentCopyWithImpl;
@useResult
$Res call({
 Tournament tournament
});


$TournamentCopyWith<$Res> get tournament;

}
/// @nodoc
class _$LoadedTournamentCopyWithImpl<$Res>
    implements $LoadedTournamentCopyWith<$Res> {
  _$LoadedTournamentCopyWithImpl(this._self, this._then);

  final LoadedTournament _self;
  final $Res Function(LoadedTournament) _then;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tournament = null,}) {
  return _then(LoadedTournament(
null == tournament ? _self.tournament : tournament // ignore: cast_nullable_to_non_nullable
as Tournament,
  ));
}

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TournamentCopyWith<$Res> get tournament {
  
  return $TournamentCopyWith<$Res>(_self.tournament, (value) {
    return _then(_self.copyWith(tournament: value));
  });
}
}

/// @nodoc


class LoadedTournaments implements TournamentState {
  const LoadedTournaments(final  List<Tournament> tournaments, this.currentPage, this.limit, this.hasMore): _tournaments = tournaments;
  

 final  List<Tournament> _tournaments;
 List<Tournament> get tournaments {
  if (_tournaments is EqualUnmodifiableListView) return _tournaments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tournaments);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTournamentsCopyWith<LoadedTournaments> get copyWith => _$LoadedTournamentsCopyWithImpl<LoadedTournaments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTournaments&&const DeepCollectionEquality().equals(other._tournaments, _tournaments)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tournaments),currentPage,limit,hasMore);

@override
String toString() {
  return 'TournamentState.loadedTournaments(tournaments: $tournaments, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedTournamentsCopyWith<$Res> implements $TournamentStateCopyWith<$Res> {
  factory $LoadedTournamentsCopyWith(LoadedTournaments value, $Res Function(LoadedTournaments) _then) = _$LoadedTournamentsCopyWithImpl;
@useResult
$Res call({
 List<Tournament> tournaments, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedTournamentsCopyWithImpl<$Res>
    implements $LoadedTournamentsCopyWith<$Res> {
  _$LoadedTournamentsCopyWithImpl(this._self, this._then);

  final LoadedTournaments _self;
  final $Res Function(LoadedTournaments) _then;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tournaments = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedTournaments(
null == tournaments ? _self._tournaments : tournaments // ignore: cast_nullable_to_non_nullable
as List<Tournament>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Tournament_Error implements TournamentState {
  const Tournament_Error(this.message);
  

 final  String message;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Tournament_ErrorCopyWith<Tournament_Error> get copyWith => _$Tournament_ErrorCopyWithImpl<Tournament_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tournament_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TournamentState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Tournament_ErrorCopyWith<$Res> implements $TournamentStateCopyWith<$Res> {
  factory $Tournament_ErrorCopyWith(Tournament_Error value, $Res Function(Tournament_Error) _then) = _$Tournament_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Tournament_ErrorCopyWithImpl<$Res>
    implements $Tournament_ErrorCopyWith<$Res> {
  _$Tournament_ErrorCopyWithImpl(this._self, this._then);

  final Tournament_Error _self;
  final $Res Function(Tournament_Error) _then;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Tournament_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Tournament_Success implements TournamentState {
  const Tournament_Success(this.message);
  

 final  String message;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Tournament_SuccessCopyWith<Tournament_Success> get copyWith => _$Tournament_SuccessCopyWithImpl<Tournament_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tournament_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TournamentState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Tournament_SuccessCopyWith<$Res> implements $TournamentStateCopyWith<$Res> {
  factory $Tournament_SuccessCopyWith(Tournament_Success value, $Res Function(Tournament_Success) _then) = _$Tournament_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Tournament_SuccessCopyWithImpl<$Res>
    implements $Tournament_SuccessCopyWith<$Res> {
  _$Tournament_SuccessCopyWithImpl(this._self, this._then);

  final Tournament_Success _self;
  final $Res Function(Tournament_Success) _then;

/// Create a copy of TournamentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Tournament_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
