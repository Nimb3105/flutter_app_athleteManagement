// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoachEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachEvent()';
}


}

/// @nodoc
class $CoachEventCopyWith<$Res>  {
$CoachEventCopyWith(CoachEvent _, $Res Function(CoachEvent) __);
}


/// Adds pattern-matching-related methods to [CoachEvent].
extension CoachEventPatterns on CoachEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateCoach value)?  createCoach,TResult Function( _GetCoachById value)?  getCoachById,TResult Function( _GetCoachByUserId value)?  getCoachByUserId,TResult Function( GetAllCoaches value)?  getAllCoaches,TResult Function( _UpdateCoach value)?  updateCoach,TResult Function( _DeleteCoach value)?  deleteCoach,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCoach() when createCoach != null:
return createCoach(_that);case _GetCoachById() when getCoachById != null:
return getCoachById(_that);case _GetCoachByUserId() when getCoachByUserId != null:
return getCoachByUserId(_that);case GetAllCoaches() when getAllCoaches != null:
return getAllCoaches(_that);case _UpdateCoach() when updateCoach != null:
return updateCoach(_that);case _DeleteCoach() when deleteCoach != null:
return deleteCoach(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateCoach value)  createCoach,required TResult Function( _GetCoachById value)  getCoachById,required TResult Function( _GetCoachByUserId value)  getCoachByUserId,required TResult Function( GetAllCoaches value)  getAllCoaches,required TResult Function( _UpdateCoach value)  updateCoach,required TResult Function( _DeleteCoach value)  deleteCoach,}){
final _that = this;
switch (_that) {
case _CreateCoach():
return createCoach(_that);case _GetCoachById():
return getCoachById(_that);case _GetCoachByUserId():
return getCoachByUserId(_that);case GetAllCoaches():
return getAllCoaches(_that);case _UpdateCoach():
return updateCoach(_that);case _DeleteCoach():
return deleteCoach(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateCoach value)?  createCoach,TResult? Function( _GetCoachById value)?  getCoachById,TResult? Function( _GetCoachByUserId value)?  getCoachByUserId,TResult? Function( GetAllCoaches value)?  getAllCoaches,TResult? Function( _UpdateCoach value)?  updateCoach,TResult? Function( _DeleteCoach value)?  deleteCoach,}){
final _that = this;
switch (_that) {
case _CreateCoach() when createCoach != null:
return createCoach(_that);case _GetCoachById() when getCoachById != null:
return getCoachById(_that);case _GetCoachByUserId() when getCoachByUserId != null:
return getCoachByUserId(_that);case GetAllCoaches() when getAllCoaches != null:
return getAllCoaches(_that);case _UpdateCoach() when updateCoach != null:
return updateCoach(_that);case _DeleteCoach() when deleteCoach != null:
return deleteCoach(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Coach coach)?  createCoach,TResult Function( String id)?  getCoachById,TResult Function( String userId)?  getCoachByUserId,TResult Function( int page,  int limit)?  getAllCoaches,TResult Function( String id,  Coach coach)?  updateCoach,TResult Function( String id)?  deleteCoach,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCoach() when createCoach != null:
return createCoach(_that.coach);case _GetCoachById() when getCoachById != null:
return getCoachById(_that.id);case _GetCoachByUserId() when getCoachByUserId != null:
return getCoachByUserId(_that.userId);case GetAllCoaches() when getAllCoaches != null:
return getAllCoaches(_that.page,_that.limit);case _UpdateCoach() when updateCoach != null:
return updateCoach(_that.id,_that.coach);case _DeleteCoach() when deleteCoach != null:
return deleteCoach(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Coach coach)  createCoach,required TResult Function( String id)  getCoachById,required TResult Function( String userId)  getCoachByUserId,required TResult Function( int page,  int limit)  getAllCoaches,required TResult Function( String id,  Coach coach)  updateCoach,required TResult Function( String id)  deleteCoach,}) {final _that = this;
switch (_that) {
case _CreateCoach():
return createCoach(_that.coach);case _GetCoachById():
return getCoachById(_that.id);case _GetCoachByUserId():
return getCoachByUserId(_that.userId);case GetAllCoaches():
return getAllCoaches(_that.page,_that.limit);case _UpdateCoach():
return updateCoach(_that.id,_that.coach);case _DeleteCoach():
return deleteCoach(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Coach coach)?  createCoach,TResult? Function( String id)?  getCoachById,TResult? Function( String userId)?  getCoachByUserId,TResult? Function( int page,  int limit)?  getAllCoaches,TResult? Function( String id,  Coach coach)?  updateCoach,TResult? Function( String id)?  deleteCoach,}) {final _that = this;
switch (_that) {
case _CreateCoach() when createCoach != null:
return createCoach(_that.coach);case _GetCoachById() when getCoachById != null:
return getCoachById(_that.id);case _GetCoachByUserId() when getCoachByUserId != null:
return getCoachByUserId(_that.userId);case GetAllCoaches() when getAllCoaches != null:
return getAllCoaches(_that.page,_that.limit);case _UpdateCoach() when updateCoach != null:
return updateCoach(_that.id,_that.coach);case _DeleteCoach() when deleteCoach != null:
return deleteCoach(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCoach implements CoachEvent {
  const _CreateCoach(this.coach);
  

 final  Coach coach;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCoachCopyWith<_CreateCoach> get copyWith => __$CreateCoachCopyWithImpl<_CreateCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCoach&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,coach);

@override
String toString() {
  return 'CoachEvent.createCoach(coach: $coach)';
}


}

/// @nodoc
abstract mixin class _$CreateCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$CreateCoachCopyWith(_CreateCoach value, $Res Function(_CreateCoach) _then) = __$CreateCoachCopyWithImpl;
@useResult
$Res call({
 Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class __$CreateCoachCopyWithImpl<$Res>
    implements _$CreateCoachCopyWith<$Res> {
  __$CreateCoachCopyWithImpl(this._self, this._then);

  final _CreateCoach _self;
  final $Res Function(_CreateCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coach = null,}) {
  return _then(_CreateCoach(
null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class _GetCoachById implements CoachEvent {
  const _GetCoachById(this.id);
  

 final  String id;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachByIdCopyWith<_GetCoachById> get copyWith => __$GetCoachByIdCopyWithImpl<_GetCoachById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachEvent.getCoachById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetCoachByIdCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$GetCoachByIdCopyWith(_GetCoachById value, $Res Function(_GetCoachById) _then) = __$GetCoachByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetCoachByIdCopyWithImpl<$Res>
    implements _$GetCoachByIdCopyWith<$Res> {
  __$GetCoachByIdCopyWithImpl(this._self, this._then);

  final _GetCoachById _self;
  final $Res Function(_GetCoachById) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetCoachById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetCoachByUserId implements CoachEvent {
  const _GetCoachByUserId(this.userId);
  

 final  String userId;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachByUserIdCopyWith<_GetCoachByUserId> get copyWith => __$GetCoachByUserIdCopyWithImpl<_GetCoachByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CoachEvent.getCoachByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetCoachByUserIdCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$GetCoachByUserIdCopyWith(_GetCoachByUserId value, $Res Function(_GetCoachByUserId) _then) = __$GetCoachByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetCoachByUserIdCopyWithImpl<$Res>
    implements _$GetCoachByUserIdCopyWith<$Res> {
  __$GetCoachByUserIdCopyWithImpl(this._self, this._then);

  final _GetCoachByUserId _self;
  final $Res Function(_GetCoachByUserId) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetCoachByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllCoaches implements CoachEvent {
  const GetAllCoaches({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCoachesCopyWith<GetAllCoaches> get copyWith => _$GetAllCoachesCopyWithImpl<GetAllCoaches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCoaches&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'CoachEvent.getAllCoaches(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllCoachesCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory $GetAllCoachesCopyWith(GetAllCoaches value, $Res Function(GetAllCoaches) _then) = _$GetAllCoachesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllCoachesCopyWithImpl<$Res>
    implements $GetAllCoachesCopyWith<$Res> {
  _$GetAllCoachesCopyWithImpl(this._self, this._then);

  final GetAllCoaches _self;
  final $Res Function(GetAllCoaches) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllCoaches(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateCoach implements CoachEvent {
  const _UpdateCoach(this.id, this.coach);
  

 final  String id;
 final  Coach coach;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCoachCopyWith<_UpdateCoach> get copyWith => __$UpdateCoachCopyWithImpl<_UpdateCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCoach&&(identical(other.id, id) || other.id == id)&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,id,coach);

@override
String toString() {
  return 'CoachEvent.updateCoach(id: $id, coach: $coach)';
}


}

/// @nodoc
abstract mixin class _$UpdateCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$UpdateCoachCopyWith(_UpdateCoach value, $Res Function(_UpdateCoach) _then) = __$UpdateCoachCopyWithImpl;
@useResult
$Res call({
 String id, Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class __$UpdateCoachCopyWithImpl<$Res>
    implements _$UpdateCoachCopyWith<$Res> {
  __$UpdateCoachCopyWithImpl(this._self, this._then);

  final _UpdateCoach _self;
  final $Res Function(_UpdateCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? coach = null,}) {
  return _then(_UpdateCoach(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class _DeleteCoach implements CoachEvent {
  const _DeleteCoach(this.id);
  

 final  String id;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCoachCopyWith<_DeleteCoach> get copyWith => __$DeleteCoachCopyWithImpl<_DeleteCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCoach&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachEvent.deleteCoach(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$DeleteCoachCopyWith(_DeleteCoach value, $Res Function(_DeleteCoach) _then) = __$DeleteCoachCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCoachCopyWithImpl<$Res>
    implements _$DeleteCoachCopyWith<$Res> {
  __$DeleteCoachCopyWithImpl(this._self, this._then);

  final _DeleteCoach _self;
  final $Res Function(_DeleteCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCoach(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CoachState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState()';
}


}

/// @nodoc
class $CoachStateCopyWith<$Res>  {
$CoachStateCopyWith(CoachState _, $Res Function(CoachState) __);
}


/// Adds pattern-matching-related methods to [CoachState].
extension CoachStatePatterns on CoachState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Coach_Initial value)?  initial,TResult Function( Coach_Loading value)?  loading,TResult Function( LoadedCoach value)?  loadedCoach,TResult Function( LoadedCoaches value)?  loadedCoaches,TResult Function( Coach_Error value)?  error,TResult Function( Coach_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Coach_Initial() when initial != null:
return initial(_that);case Coach_Loading() when loading != null:
return loading(_that);case LoadedCoach() when loadedCoach != null:
return loadedCoach(_that);case LoadedCoaches() when loadedCoaches != null:
return loadedCoaches(_that);case Coach_Error() when error != null:
return error(_that);case Coach_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Coach_Initial value)  initial,required TResult Function( Coach_Loading value)  loading,required TResult Function( LoadedCoach value)  loadedCoach,required TResult Function( LoadedCoaches value)  loadedCoaches,required TResult Function( Coach_Error value)  error,required TResult Function( Coach_Success value)  success,}){
final _that = this;
switch (_that) {
case Coach_Initial():
return initial(_that);case Coach_Loading():
return loading(_that);case LoadedCoach():
return loadedCoach(_that);case LoadedCoaches():
return loadedCoaches(_that);case Coach_Error():
return error(_that);case Coach_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Coach_Initial value)?  initial,TResult? Function( Coach_Loading value)?  loading,TResult? Function( LoadedCoach value)?  loadedCoach,TResult? Function( LoadedCoaches value)?  loadedCoaches,TResult? Function( Coach_Error value)?  error,TResult? Function( Coach_Success value)?  success,}){
final _that = this;
switch (_that) {
case Coach_Initial() when initial != null:
return initial(_that);case Coach_Loading() when loading != null:
return loading(_that);case LoadedCoach() when loadedCoach != null:
return loadedCoach(_that);case LoadedCoaches() when loadedCoaches != null:
return loadedCoaches(_that);case Coach_Error() when error != null:
return error(_that);case Coach_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Coach coach)?  loadedCoach,TResult Function( List<Coach> coaches,  int currentPage,  int limit,  bool hasMore)?  loadedCoaches,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Coach_Initial() when initial != null:
return initial();case Coach_Loading() when loading != null:
return loading();case LoadedCoach() when loadedCoach != null:
return loadedCoach(_that.coach);case LoadedCoaches() when loadedCoaches != null:
return loadedCoaches(_that.coaches,_that.currentPage,_that.limit,_that.hasMore);case Coach_Error() when error != null:
return error(_that.message);case Coach_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Coach coach)  loadedCoach,required TResult Function( List<Coach> coaches,  int currentPage,  int limit,  bool hasMore)  loadedCoaches,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Coach_Initial():
return initial();case Coach_Loading():
return loading();case LoadedCoach():
return loadedCoach(_that.coach);case LoadedCoaches():
return loadedCoaches(_that.coaches,_that.currentPage,_that.limit,_that.hasMore);case Coach_Error():
return error(_that.message);case Coach_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Coach coach)?  loadedCoach,TResult? Function( List<Coach> coaches,  int currentPage,  int limit,  bool hasMore)?  loadedCoaches,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Coach_Initial() when initial != null:
return initial();case Coach_Loading() when loading != null:
return loading();case LoadedCoach() when loadedCoach != null:
return loadedCoach(_that.coach);case LoadedCoaches() when loadedCoaches != null:
return loadedCoaches(_that.coaches,_that.currentPage,_that.limit,_that.hasMore);case Coach_Error() when error != null:
return error(_that.message);case Coach_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Coach_Initial implements CoachState {
  const Coach_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState.initial()';
}


}




/// @nodoc


class Coach_Loading implements CoachState {
  const Coach_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState.loading()';
}


}




/// @nodoc


class LoadedCoach implements CoachState {
  const LoadedCoach(this.coach);
  

 final  Coach coach;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachCopyWith<LoadedCoach> get copyWith => _$LoadedCoachCopyWithImpl<LoadedCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoach&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,coach);

@override
String toString() {
  return 'CoachState.loadedCoach(coach: $coach)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $LoadedCoachCopyWith(LoadedCoach value, $Res Function(LoadedCoach) _then) = _$LoadedCoachCopyWithImpl;
@useResult
$Res call({
 Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class _$LoadedCoachCopyWithImpl<$Res>
    implements $LoadedCoachCopyWith<$Res> {
  _$LoadedCoachCopyWithImpl(this._self, this._then);

  final LoadedCoach _self;
  final $Res Function(LoadedCoach) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coach = null,}) {
  return _then(LoadedCoach(
null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class LoadedCoaches implements CoachState {
  const LoadedCoaches(final  List<Coach> coaches, this.currentPage, this.limit, this.hasMore): _coaches = coaches;
  

 final  List<Coach> _coaches;
 List<Coach> get coaches {
  if (_coaches is EqualUnmodifiableListView) return _coaches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coaches);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachesCopyWith<LoadedCoaches> get copyWith => _$LoadedCoachesCopyWithImpl<LoadedCoaches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoaches&&const DeepCollectionEquality().equals(other._coaches, _coaches)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coaches),currentPage,limit,hasMore);

@override
String toString() {
  return 'CoachState.loadedCoaches(coaches: $coaches, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachesCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $LoadedCoachesCopyWith(LoadedCoaches value, $Res Function(LoadedCoaches) _then) = _$LoadedCoachesCopyWithImpl;
@useResult
$Res call({
 List<Coach> coaches, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedCoachesCopyWithImpl<$Res>
    implements $LoadedCoachesCopyWith<$Res> {
  _$LoadedCoachesCopyWithImpl(this._self, this._then);

  final LoadedCoaches _self;
  final $Res Function(LoadedCoaches) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coaches = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedCoaches(
null == coaches ? _self._coaches : coaches // ignore: cast_nullable_to_non_nullable
as List<Coach>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Coach_Error implements CoachState {
  const Coach_Error(this.message);
  

 final  String message;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Coach_ErrorCopyWith<Coach_Error> get copyWith => _$Coach_ErrorCopyWithImpl<Coach_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Coach_ErrorCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $Coach_ErrorCopyWith(Coach_Error value, $Res Function(Coach_Error) _then) = _$Coach_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Coach_ErrorCopyWithImpl<$Res>
    implements $Coach_ErrorCopyWith<$Res> {
  _$Coach_ErrorCopyWithImpl(this._self, this._then);

  final Coach_Error _self;
  final $Res Function(Coach_Error) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Coach_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Coach_Success implements CoachState {
  const Coach_Success(this.message);
  

 final  String message;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Coach_SuccessCopyWith<Coach_Success> get copyWith => _$Coach_SuccessCopyWithImpl<Coach_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Coach_SuccessCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $Coach_SuccessCopyWith(Coach_Success value, $Res Function(Coach_Success) _then) = _$Coach_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Coach_SuccessCopyWithImpl<$Res>
    implements $Coach_SuccessCopyWith<$Res> {
  _$Coach_SuccessCopyWithImpl(this._self, this._then);

  final Coach_Success _self;
  final $Res Function(Coach_Success) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Coach_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
