// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AthleteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AthleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteEvent()';
}


}

/// @nodoc
class $AthleteEventCopyWith<$Res>  {
$AthleteEventCopyWith(AthleteEvent _, $Res Function(AthleteEvent) __);
}


/// Adds pattern-matching-related methods to [AthleteEvent].
extension AthleteEventPatterns on AthleteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateAthlete value)?  createAthlete,TResult Function( _GetAthleteById value)?  getAthleteById,TResult Function( _GetAthleteByUserId value)?  getAthleteByUserId,TResult Function( _GetAllAthletes value)?  getAllAthletes,TResult Function( _UpdateAthlete value)?  updateAthlete,TResult Function( _DeleteAthlete value)?  deleteAthlete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAthlete() when createAthlete != null:
return createAthlete(_that);case _GetAthleteById() when getAthleteById != null:
return getAthleteById(_that);case _GetAthleteByUserId() when getAthleteByUserId != null:
return getAthleteByUserId(_that);case _GetAllAthletes() when getAllAthletes != null:
return getAllAthletes(_that);case _UpdateAthlete() when updateAthlete != null:
return updateAthlete(_that);case _DeleteAthlete() when deleteAthlete != null:
return deleteAthlete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateAthlete value)  createAthlete,required TResult Function( _GetAthleteById value)  getAthleteById,required TResult Function( _GetAthleteByUserId value)  getAthleteByUserId,required TResult Function( _GetAllAthletes value)  getAllAthletes,required TResult Function( _UpdateAthlete value)  updateAthlete,required TResult Function( _DeleteAthlete value)  deleteAthlete,}){
final _that = this;
switch (_that) {
case _CreateAthlete():
return createAthlete(_that);case _GetAthleteById():
return getAthleteById(_that);case _GetAthleteByUserId():
return getAthleteByUserId(_that);case _GetAllAthletes():
return getAllAthletes(_that);case _UpdateAthlete():
return updateAthlete(_that);case _DeleteAthlete():
return deleteAthlete(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateAthlete value)?  createAthlete,TResult? Function( _GetAthleteById value)?  getAthleteById,TResult? Function( _GetAthleteByUserId value)?  getAthleteByUserId,TResult? Function( _GetAllAthletes value)?  getAllAthletes,TResult? Function( _UpdateAthlete value)?  updateAthlete,TResult? Function( _DeleteAthlete value)?  deleteAthlete,}){
final _that = this;
switch (_that) {
case _CreateAthlete() when createAthlete != null:
return createAthlete(_that);case _GetAthleteById() when getAthleteById != null:
return getAthleteById(_that);case _GetAthleteByUserId() when getAthleteByUserId != null:
return getAthleteByUserId(_that);case _GetAllAthletes() when getAllAthletes != null:
return getAllAthletes(_that);case _UpdateAthlete() when updateAthlete != null:
return updateAthlete(_that);case _DeleteAthlete() when deleteAthlete != null:
return deleteAthlete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Athlete athlete)?  createAthlete,TResult Function( String id)?  getAthleteById,TResult Function( String userId)?  getAthleteByUserId,TResult Function( int page,  int limit)?  getAllAthletes,TResult Function( String id,  Athlete athlete)?  updateAthlete,TResult Function( String id)?  deleteAthlete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAthlete() when createAthlete != null:
return createAthlete(_that.athlete);case _GetAthleteById() when getAthleteById != null:
return getAthleteById(_that.id);case _GetAthleteByUserId() when getAthleteByUserId != null:
return getAthleteByUserId(_that.userId);case _GetAllAthletes() when getAllAthletes != null:
return getAllAthletes(_that.page,_that.limit);case _UpdateAthlete() when updateAthlete != null:
return updateAthlete(_that.id,_that.athlete);case _DeleteAthlete() when deleteAthlete != null:
return deleteAthlete(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Athlete athlete)  createAthlete,required TResult Function( String id)  getAthleteById,required TResult Function( String userId)  getAthleteByUserId,required TResult Function( int page,  int limit)  getAllAthletes,required TResult Function( String id,  Athlete athlete)  updateAthlete,required TResult Function( String id)  deleteAthlete,}) {final _that = this;
switch (_that) {
case _CreateAthlete():
return createAthlete(_that.athlete);case _GetAthleteById():
return getAthleteById(_that.id);case _GetAthleteByUserId():
return getAthleteByUserId(_that.userId);case _GetAllAthletes():
return getAllAthletes(_that.page,_that.limit);case _UpdateAthlete():
return updateAthlete(_that.id,_that.athlete);case _DeleteAthlete():
return deleteAthlete(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Athlete athlete)?  createAthlete,TResult? Function( String id)?  getAthleteById,TResult? Function( String userId)?  getAthleteByUserId,TResult? Function( int page,  int limit)?  getAllAthletes,TResult? Function( String id,  Athlete athlete)?  updateAthlete,TResult? Function( String id)?  deleteAthlete,}) {final _that = this;
switch (_that) {
case _CreateAthlete() when createAthlete != null:
return createAthlete(_that.athlete);case _GetAthleteById() when getAthleteById != null:
return getAthleteById(_that.id);case _GetAthleteByUserId() when getAthleteByUserId != null:
return getAthleteByUserId(_that.userId);case _GetAllAthletes() when getAllAthletes != null:
return getAllAthletes(_that.page,_that.limit);case _UpdateAthlete() when updateAthlete != null:
return updateAthlete(_that.id,_that.athlete);case _DeleteAthlete() when deleteAthlete != null:
return deleteAthlete(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAthlete implements AthleteEvent {
  const _CreateAthlete(this.athlete);
  

 final  Athlete athlete;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAthleteCopyWith<_CreateAthlete> get copyWith => __$CreateAthleteCopyWithImpl<_CreateAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAthlete&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,athlete);

@override
String toString() {
  return 'AthleteEvent.createAthlete(athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class _$CreateAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$CreateAthleteCopyWith(_CreateAthlete value, $Res Function(_CreateAthlete) _then) = __$CreateAthleteCopyWithImpl;
@useResult
$Res call({
 Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class __$CreateAthleteCopyWithImpl<$Res>
    implements _$CreateAthleteCopyWith<$Res> {
  __$CreateAthleteCopyWithImpl(this._self, this._then);

  final _CreateAthlete _self;
  final $Res Function(_CreateAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athlete = null,}) {
  return _then(_CreateAthlete(
null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class _GetAthleteById implements AthleteEvent {
  const _GetAthleteById(this.id);
  

 final  String id;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAthleteByIdCopyWith<_GetAthleteById> get copyWith => __$GetAthleteByIdCopyWithImpl<_GetAthleteById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAthleteById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AthleteEvent.getAthleteById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetAthleteByIdCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAthleteByIdCopyWith(_GetAthleteById value, $Res Function(_GetAthleteById) _then) = __$GetAthleteByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetAthleteByIdCopyWithImpl<$Res>
    implements _$GetAthleteByIdCopyWith<$Res> {
  __$GetAthleteByIdCopyWithImpl(this._self, this._then);

  final _GetAthleteById _self;
  final $Res Function(_GetAthleteById) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetAthleteById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAthleteByUserId implements AthleteEvent {
  const _GetAthleteByUserId(this.userId);
  

 final  String userId;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAthleteByUserIdCopyWith<_GetAthleteByUserId> get copyWith => __$GetAthleteByUserIdCopyWithImpl<_GetAthleteByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAthleteByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'AthleteEvent.getAthleteByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetAthleteByUserIdCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAthleteByUserIdCopyWith(_GetAthleteByUserId value, $Res Function(_GetAthleteByUserId) _then) = __$GetAthleteByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetAthleteByUserIdCopyWithImpl<$Res>
    implements _$GetAthleteByUserIdCopyWith<$Res> {
  __$GetAthleteByUserIdCopyWithImpl(this._self, this._then);

  final _GetAthleteByUserId _self;
  final $Res Function(_GetAthleteByUserId) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetAthleteByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllAthletes implements AthleteEvent {
  const _GetAllAthletes({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllAthletesCopyWith<_GetAllAthletes> get copyWith => __$GetAllAthletesCopyWithImpl<_GetAllAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllAthletes&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'AthleteEvent.getAllAthletes(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllAthletesCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAllAthletesCopyWith(_GetAllAthletes value, $Res Function(_GetAllAthletes) _then) = __$GetAllAthletesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllAthletesCopyWithImpl<$Res>
    implements _$GetAllAthletesCopyWith<$Res> {
  __$GetAllAthletesCopyWithImpl(this._self, this._then);

  final _GetAllAthletes _self;
  final $Res Function(_GetAllAthletes) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllAthletes(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateAthlete implements AthleteEvent {
  const _UpdateAthlete(this.id, this.athlete);
  

 final  String id;
 final  Athlete athlete;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAthleteCopyWith<_UpdateAthlete> get copyWith => __$UpdateAthleteCopyWithImpl<_UpdateAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,id,athlete);

@override
String toString() {
  return 'AthleteEvent.updateAthlete(id: $id, athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class _$UpdateAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$UpdateAthleteCopyWith(_UpdateAthlete value, $Res Function(_UpdateAthlete) _then) = __$UpdateAthleteCopyWithImpl;
@useResult
$Res call({
 String id, Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class __$UpdateAthleteCopyWithImpl<$Res>
    implements _$UpdateAthleteCopyWith<$Res> {
  __$UpdateAthleteCopyWithImpl(this._self, this._then);

  final _UpdateAthlete _self;
  final $Res Function(_UpdateAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? athlete = null,}) {
  return _then(_UpdateAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class _DeleteAthlete implements AthleteEvent {
  const _DeleteAthlete(this.id);
  

 final  String id;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAthleteCopyWith<_DeleteAthlete> get copyWith => __$DeleteAthleteCopyWithImpl<_DeleteAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAthlete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AthleteEvent.deleteAthlete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$DeleteAthleteCopyWith(_DeleteAthlete value, $Res Function(_DeleteAthlete) _then) = __$DeleteAthleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteAthleteCopyWithImpl<$Res>
    implements _$DeleteAthleteCopyWith<$Res> {
  __$DeleteAthleteCopyWithImpl(this._self, this._then);

  final _DeleteAthlete _self;
  final $Res Function(_DeleteAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AthleteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AthleteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState()';
}


}

/// @nodoc
class $AthleteStateCopyWith<$Res>  {
$AthleteStateCopyWith(AthleteState _, $Res Function(AthleteState) __);
}


/// Adds pattern-matching-related methods to [AthleteState].
extension AthleteStatePatterns on AthleteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Athlete_Initial value)?  initial,TResult Function( Athlete_Loading value)?  loading,TResult Function( LoadedAthlete value)?  loadedAthlete,TResult Function( LoadedAthletes value)?  loadedAthletes,TResult Function( Athlete_Error value)?  error,TResult Function( Athlete_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Athlete_Initial() when initial != null:
return initial(_that);case Athlete_Loading() when loading != null:
return loading(_that);case LoadedAthlete() when loadedAthlete != null:
return loadedAthlete(_that);case LoadedAthletes() when loadedAthletes != null:
return loadedAthletes(_that);case Athlete_Error() when error != null:
return error(_that);case Athlete_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Athlete_Initial value)  initial,required TResult Function( Athlete_Loading value)  loading,required TResult Function( LoadedAthlete value)  loadedAthlete,required TResult Function( LoadedAthletes value)  loadedAthletes,required TResult Function( Athlete_Error value)  error,required TResult Function( Athlete_Success value)  success,}){
final _that = this;
switch (_that) {
case Athlete_Initial():
return initial(_that);case Athlete_Loading():
return loading(_that);case LoadedAthlete():
return loadedAthlete(_that);case LoadedAthletes():
return loadedAthletes(_that);case Athlete_Error():
return error(_that);case Athlete_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Athlete_Initial value)?  initial,TResult? Function( Athlete_Loading value)?  loading,TResult? Function( LoadedAthlete value)?  loadedAthlete,TResult? Function( LoadedAthletes value)?  loadedAthletes,TResult? Function( Athlete_Error value)?  error,TResult? Function( Athlete_Success value)?  success,}){
final _that = this;
switch (_that) {
case Athlete_Initial() when initial != null:
return initial(_that);case Athlete_Loading() when loading != null:
return loading(_that);case LoadedAthlete() when loadedAthlete != null:
return loadedAthlete(_that);case LoadedAthletes() when loadedAthletes != null:
return loadedAthletes(_that);case Athlete_Error() when error != null:
return error(_that);case Athlete_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Athlete athlete)?  loadedAthlete,TResult Function( List<Athlete> athletes,  int currentPage,  int limit,  bool hasMore)?  loadedAthletes,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Athlete_Initial() when initial != null:
return initial();case Athlete_Loading() when loading != null:
return loading();case LoadedAthlete() when loadedAthlete != null:
return loadedAthlete(_that.athlete);case LoadedAthletes() when loadedAthletes != null:
return loadedAthletes(_that.athletes,_that.currentPage,_that.limit,_that.hasMore);case Athlete_Error() when error != null:
return error(_that.message);case Athlete_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Athlete athlete)  loadedAthlete,required TResult Function( List<Athlete> athletes,  int currentPage,  int limit,  bool hasMore)  loadedAthletes,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Athlete_Initial():
return initial();case Athlete_Loading():
return loading();case LoadedAthlete():
return loadedAthlete(_that.athlete);case LoadedAthletes():
return loadedAthletes(_that.athletes,_that.currentPage,_that.limit,_that.hasMore);case Athlete_Error():
return error(_that.message);case Athlete_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Athlete athlete)?  loadedAthlete,TResult? Function( List<Athlete> athletes,  int currentPage,  int limit,  bool hasMore)?  loadedAthletes,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Athlete_Initial() when initial != null:
return initial();case Athlete_Loading() when loading != null:
return loading();case LoadedAthlete() when loadedAthlete != null:
return loadedAthlete(_that.athlete);case LoadedAthletes() when loadedAthletes != null:
return loadedAthletes(_that.athletes,_that.currentPage,_that.limit,_that.hasMore);case Athlete_Error() when error != null:
return error(_that.message);case Athlete_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Athlete_Initial implements AthleteState {
  const Athlete_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState.initial()';
}


}




/// @nodoc


class Athlete_Loading implements AthleteState {
  const Athlete_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState.loading()';
}


}




/// @nodoc


class LoadedAthlete implements AthleteState {
  const LoadedAthlete(this.athlete);
  

 final  Athlete athlete;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAthleteCopyWith<LoadedAthlete> get copyWith => _$LoadedAthleteCopyWithImpl<LoadedAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAthlete&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,athlete);

@override
String toString() {
  return 'AthleteState.loadedAthlete(athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class $LoadedAthleteCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $LoadedAthleteCopyWith(LoadedAthlete value, $Res Function(LoadedAthlete) _then) = _$LoadedAthleteCopyWithImpl;
@useResult
$Res call({
 Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class _$LoadedAthleteCopyWithImpl<$Res>
    implements $LoadedAthleteCopyWith<$Res> {
  _$LoadedAthleteCopyWithImpl(this._self, this._then);

  final LoadedAthlete _self;
  final $Res Function(LoadedAthlete) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athlete = null,}) {
  return _then(LoadedAthlete(
null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class LoadedAthletes implements AthleteState {
  const LoadedAthletes(final  List<Athlete> athletes, this.currentPage, this.limit, this.hasMore): _athletes = athletes;
  

 final  List<Athlete> _athletes;
 List<Athlete> get athletes {
  if (_athletes is EqualUnmodifiableListView) return _athletes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_athletes);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAthletesCopyWith<LoadedAthletes> get copyWith => _$LoadedAthletesCopyWithImpl<LoadedAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAthletes&&const DeepCollectionEquality().equals(other._athletes, _athletes)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_athletes),currentPage,limit,hasMore);

@override
String toString() {
  return 'AthleteState.loadedAthletes(athletes: $athletes, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedAthletesCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $LoadedAthletesCopyWith(LoadedAthletes value, $Res Function(LoadedAthletes) _then) = _$LoadedAthletesCopyWithImpl;
@useResult
$Res call({
 List<Athlete> athletes, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedAthletesCopyWithImpl<$Res>
    implements $LoadedAthletesCopyWith<$Res> {
  _$LoadedAthletesCopyWithImpl(this._self, this._then);

  final LoadedAthletes _self;
  final $Res Function(LoadedAthletes) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athletes = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedAthletes(
null == athletes ? _self._athletes : athletes // ignore: cast_nullable_to_non_nullable
as List<Athlete>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Athlete_Error implements AthleteState {
  const Athlete_Error(this.message);
  

 final  String message;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Athlete_ErrorCopyWith<Athlete_Error> get copyWith => _$Athlete_ErrorCopyWithImpl<Athlete_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AthleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Athlete_ErrorCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $Athlete_ErrorCopyWith(Athlete_Error value, $Res Function(Athlete_Error) _then) = _$Athlete_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Athlete_ErrorCopyWithImpl<$Res>
    implements $Athlete_ErrorCopyWith<$Res> {
  _$Athlete_ErrorCopyWithImpl(this._self, this._then);

  final Athlete_Error _self;
  final $Res Function(Athlete_Error) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Athlete_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Athlete_Success implements AthleteState {
  const Athlete_Success(this.message);
  

 final  String message;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Athlete_SuccessCopyWith<Athlete_Success> get copyWith => _$Athlete_SuccessCopyWithImpl<Athlete_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AthleteState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Athlete_SuccessCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $Athlete_SuccessCopyWith(Athlete_Success value, $Res Function(Athlete_Success) _then) = _$Athlete_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Athlete_SuccessCopyWithImpl<$Res>
    implements $Athlete_SuccessCopyWith<$Res> {
  _$Athlete_SuccessCopyWithImpl(this._self, this._then);

  final Athlete_Success _self;
  final $Res Function(Athlete_Success) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Athlete_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
