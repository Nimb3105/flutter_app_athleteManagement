// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'injury_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InjuryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjuryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryEvent()';
}


}

/// @nodoc
class $InjuryEventCopyWith<$Res>  {
$InjuryEventCopyWith(InjuryEvent _, $Res Function(InjuryEvent) __);
}


/// Adds pattern-matching-related methods to [InjuryEvent].
extension InjuryEventPatterns on InjuryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateInjury value)?  createInjury,TResult Function( _GetInjuryById value)?  getInjuryById,TResult Function( _GetInjuryByUserId value)?  getInjuryByUserId,TResult Function( _GetAllInjuries value)?  getAllInjuries,TResult Function( _UpdateInjury value)?  updateInjury,TResult Function( _DeleteInjury value)?  deleteInjury,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInjury() when createInjury != null:
return createInjury(_that);case _GetInjuryById() when getInjuryById != null:
return getInjuryById(_that);case _GetInjuryByUserId() when getInjuryByUserId != null:
return getInjuryByUserId(_that);case _GetAllInjuries() when getAllInjuries != null:
return getAllInjuries(_that);case _UpdateInjury() when updateInjury != null:
return updateInjury(_that);case _DeleteInjury() when deleteInjury != null:
return deleteInjury(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateInjury value)  createInjury,required TResult Function( _GetInjuryById value)  getInjuryById,required TResult Function( _GetInjuryByUserId value)  getInjuryByUserId,required TResult Function( _GetAllInjuries value)  getAllInjuries,required TResult Function( _UpdateInjury value)  updateInjury,required TResult Function( _DeleteInjury value)  deleteInjury,}){
final _that = this;
switch (_that) {
case _CreateInjury():
return createInjury(_that);case _GetInjuryById():
return getInjuryById(_that);case _GetInjuryByUserId():
return getInjuryByUserId(_that);case _GetAllInjuries():
return getAllInjuries(_that);case _UpdateInjury():
return updateInjury(_that);case _DeleteInjury():
return deleteInjury(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateInjury value)?  createInjury,TResult? Function( _GetInjuryById value)?  getInjuryById,TResult? Function( _GetInjuryByUserId value)?  getInjuryByUserId,TResult? Function( _GetAllInjuries value)?  getAllInjuries,TResult? Function( _UpdateInjury value)?  updateInjury,TResult? Function( _DeleteInjury value)?  deleteInjury,}){
final _that = this;
switch (_that) {
case _CreateInjury() when createInjury != null:
return createInjury(_that);case _GetInjuryById() when getInjuryById != null:
return getInjuryById(_that);case _GetInjuryByUserId() when getInjuryByUserId != null:
return getInjuryByUserId(_that);case _GetAllInjuries() when getAllInjuries != null:
return getAllInjuries(_that);case _UpdateInjury() when updateInjury != null:
return updateInjury(_that);case _DeleteInjury() when deleteInjury != null:
return deleteInjury(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Injury injury)?  createInjury,TResult Function( String id)?  getInjuryById,TResult Function( String userId)?  getInjuryByUserId,TResult Function( int page,  int limit)?  getAllInjuries,TResult Function( String id,  Injury injury)?  updateInjury,TResult Function( String id)?  deleteInjury,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInjury() when createInjury != null:
return createInjury(_that.injury);case _GetInjuryById() when getInjuryById != null:
return getInjuryById(_that.id);case _GetInjuryByUserId() when getInjuryByUserId != null:
return getInjuryByUserId(_that.userId);case _GetAllInjuries() when getAllInjuries != null:
return getAllInjuries(_that.page,_that.limit);case _UpdateInjury() when updateInjury != null:
return updateInjury(_that.id,_that.injury);case _DeleteInjury() when deleteInjury != null:
return deleteInjury(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Injury injury)  createInjury,required TResult Function( String id)  getInjuryById,required TResult Function( String userId)  getInjuryByUserId,required TResult Function( int page,  int limit)  getAllInjuries,required TResult Function( String id,  Injury injury)  updateInjury,required TResult Function( String id)  deleteInjury,}) {final _that = this;
switch (_that) {
case _CreateInjury():
return createInjury(_that.injury);case _GetInjuryById():
return getInjuryById(_that.id);case _GetInjuryByUserId():
return getInjuryByUserId(_that.userId);case _GetAllInjuries():
return getAllInjuries(_that.page,_that.limit);case _UpdateInjury():
return updateInjury(_that.id,_that.injury);case _DeleteInjury():
return deleteInjury(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Injury injury)?  createInjury,TResult? Function( String id)?  getInjuryById,TResult? Function( String userId)?  getInjuryByUserId,TResult? Function( int page,  int limit)?  getAllInjuries,TResult? Function( String id,  Injury injury)?  updateInjury,TResult? Function( String id)?  deleteInjury,}) {final _that = this;
switch (_that) {
case _CreateInjury() when createInjury != null:
return createInjury(_that.injury);case _GetInjuryById() when getInjuryById != null:
return getInjuryById(_that.id);case _GetInjuryByUserId() when getInjuryByUserId != null:
return getInjuryByUserId(_that.userId);case _GetAllInjuries() when getAllInjuries != null:
return getAllInjuries(_that.page,_that.limit);case _UpdateInjury() when updateInjury != null:
return updateInjury(_that.id,_that.injury);case _DeleteInjury() when deleteInjury != null:
return deleteInjury(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateInjury implements InjuryEvent {
  const _CreateInjury(this.injury);
  

 final  Injury injury;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInjuryCopyWith<_CreateInjury> get copyWith => __$CreateInjuryCopyWithImpl<_CreateInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInjury&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,injury);

@override
String toString() {
  return 'InjuryEvent.createInjury(injury: $injury)';
}


}

/// @nodoc
abstract mixin class _$CreateInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$CreateInjuryCopyWith(_CreateInjury value, $Res Function(_CreateInjury) _then) = __$CreateInjuryCopyWithImpl;
@useResult
$Res call({
 Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class __$CreateInjuryCopyWithImpl<$Res>
    implements _$CreateInjuryCopyWith<$Res> {
  __$CreateInjuryCopyWithImpl(this._self, this._then);

  final _CreateInjury _self;
  final $Res Function(_CreateInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injury = null,}) {
  return _then(_CreateInjury(
null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class _GetInjuryById implements InjuryEvent {
  const _GetInjuryById(this.id);
  

 final  String id;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInjuryByIdCopyWith<_GetInjuryById> get copyWith => __$GetInjuryByIdCopyWithImpl<_GetInjuryById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInjuryById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'InjuryEvent.getInjuryById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetInjuryByIdCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetInjuryByIdCopyWith(_GetInjuryById value, $Res Function(_GetInjuryById) _then) = __$GetInjuryByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetInjuryByIdCopyWithImpl<$Res>
    implements _$GetInjuryByIdCopyWith<$Res> {
  __$GetInjuryByIdCopyWithImpl(this._self, this._then);

  final _GetInjuryById _self;
  final $Res Function(_GetInjuryById) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetInjuryById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetInjuryByUserId implements InjuryEvent {
  const _GetInjuryByUserId(this.userId);
  

 final  String userId;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInjuryByUserIdCopyWith<_GetInjuryByUserId> get copyWith => __$GetInjuryByUserIdCopyWithImpl<_GetInjuryByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInjuryByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'InjuryEvent.getInjuryByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetInjuryByUserIdCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetInjuryByUserIdCopyWith(_GetInjuryByUserId value, $Res Function(_GetInjuryByUserId) _then) = __$GetInjuryByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetInjuryByUserIdCopyWithImpl<$Res>
    implements _$GetInjuryByUserIdCopyWith<$Res> {
  __$GetInjuryByUserIdCopyWithImpl(this._self, this._then);

  final _GetInjuryByUserId _self;
  final $Res Function(_GetInjuryByUserId) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetInjuryByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllInjuries implements InjuryEvent {
  const _GetAllInjuries({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllInjuriesCopyWith<_GetAllInjuries> get copyWith => __$GetAllInjuriesCopyWithImpl<_GetAllInjuries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllInjuries&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'InjuryEvent.getAllInjuries(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllInjuriesCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetAllInjuriesCopyWith(_GetAllInjuries value, $Res Function(_GetAllInjuries) _then) = __$GetAllInjuriesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllInjuriesCopyWithImpl<$Res>
    implements _$GetAllInjuriesCopyWith<$Res> {
  __$GetAllInjuriesCopyWithImpl(this._self, this._then);

  final _GetAllInjuries _self;
  final $Res Function(_GetAllInjuries) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllInjuries(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateInjury implements InjuryEvent {
  const _UpdateInjury(this.id, this.injury);
  

 final  String id;
 final  Injury injury;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInjuryCopyWith<_UpdateInjury> get copyWith => __$UpdateInjuryCopyWithImpl<_UpdateInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInjury&&(identical(other.id, id) || other.id == id)&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,id,injury);

@override
String toString() {
  return 'InjuryEvent.updateInjury(id: $id, injury: $injury)';
}


}

/// @nodoc
abstract mixin class _$UpdateInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$UpdateInjuryCopyWith(_UpdateInjury value, $Res Function(_UpdateInjury) _then) = __$UpdateInjuryCopyWithImpl;
@useResult
$Res call({
 String id, Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class __$UpdateInjuryCopyWithImpl<$Res>
    implements _$UpdateInjuryCopyWith<$Res> {
  __$UpdateInjuryCopyWithImpl(this._self, this._then);

  final _UpdateInjury _self;
  final $Res Function(_UpdateInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? injury = null,}) {
  return _then(_UpdateInjury(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class _DeleteInjury implements InjuryEvent {
  const _DeleteInjury(this.id);
  

 final  String id;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteInjuryCopyWith<_DeleteInjury> get copyWith => __$DeleteInjuryCopyWithImpl<_DeleteInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteInjury&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'InjuryEvent.deleteInjury(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$DeleteInjuryCopyWith(_DeleteInjury value, $Res Function(_DeleteInjury) _then) = __$DeleteInjuryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteInjuryCopyWithImpl<$Res>
    implements _$DeleteInjuryCopyWith<$Res> {
  __$DeleteInjuryCopyWithImpl(this._self, this._then);

  final _DeleteInjury _self;
  final $Res Function(_DeleteInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteInjury(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$InjuryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjuryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState()';
}


}

/// @nodoc
class $InjuryStateCopyWith<$Res>  {
$InjuryStateCopyWith(InjuryState _, $Res Function(InjuryState) __);
}


/// Adds pattern-matching-related methods to [InjuryState].
extension InjuryStatePatterns on InjuryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Injury_Initial value)?  initial,TResult Function( Injury_Loading value)?  loading,TResult Function( LoadedInjury value)?  loadedInjury,TResult Function( LoadedInjuries value)?  loadedInjuries,TResult Function( Injury_Error value)?  error,TResult Function( Injury_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Injury_Initial() when initial != null:
return initial(_that);case Injury_Loading() when loading != null:
return loading(_that);case LoadedInjury() when loadedInjury != null:
return loadedInjury(_that);case LoadedInjuries() when loadedInjuries != null:
return loadedInjuries(_that);case Injury_Error() when error != null:
return error(_that);case Injury_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Injury_Initial value)  initial,required TResult Function( Injury_Loading value)  loading,required TResult Function( LoadedInjury value)  loadedInjury,required TResult Function( LoadedInjuries value)  loadedInjuries,required TResult Function( Injury_Error value)  error,required TResult Function( Injury_Success value)  success,}){
final _that = this;
switch (_that) {
case Injury_Initial():
return initial(_that);case Injury_Loading():
return loading(_that);case LoadedInjury():
return loadedInjury(_that);case LoadedInjuries():
return loadedInjuries(_that);case Injury_Error():
return error(_that);case Injury_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Injury_Initial value)?  initial,TResult? Function( Injury_Loading value)?  loading,TResult? Function( LoadedInjury value)?  loadedInjury,TResult? Function( LoadedInjuries value)?  loadedInjuries,TResult? Function( Injury_Error value)?  error,TResult? Function( Injury_Success value)?  success,}){
final _that = this;
switch (_that) {
case Injury_Initial() when initial != null:
return initial(_that);case Injury_Loading() when loading != null:
return loading(_that);case LoadedInjury() when loadedInjury != null:
return loadedInjury(_that);case LoadedInjuries() when loadedInjuries != null:
return loadedInjuries(_that);case Injury_Error() when error != null:
return error(_that);case Injury_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Injury injury)?  loadedInjury,TResult Function( List<Injury> injuries,  int currentPage,  int limit,  bool hasMore)?  loadedInjuries,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Injury_Initial() when initial != null:
return initial();case Injury_Loading() when loading != null:
return loading();case LoadedInjury() when loadedInjury != null:
return loadedInjury(_that.injury);case LoadedInjuries() when loadedInjuries != null:
return loadedInjuries(_that.injuries,_that.currentPage,_that.limit,_that.hasMore);case Injury_Error() when error != null:
return error(_that.message);case Injury_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Injury injury)  loadedInjury,required TResult Function( List<Injury> injuries,  int currentPage,  int limit,  bool hasMore)  loadedInjuries,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Injury_Initial():
return initial();case Injury_Loading():
return loading();case LoadedInjury():
return loadedInjury(_that.injury);case LoadedInjuries():
return loadedInjuries(_that.injuries,_that.currentPage,_that.limit,_that.hasMore);case Injury_Error():
return error(_that.message);case Injury_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Injury injury)?  loadedInjury,TResult? Function( List<Injury> injuries,  int currentPage,  int limit,  bool hasMore)?  loadedInjuries,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Injury_Initial() when initial != null:
return initial();case Injury_Loading() when loading != null:
return loading();case LoadedInjury() when loadedInjury != null:
return loadedInjury(_that.injury);case LoadedInjuries() when loadedInjuries != null:
return loadedInjuries(_that.injuries,_that.currentPage,_that.limit,_that.hasMore);case Injury_Error() when error != null:
return error(_that.message);case Injury_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Injury_Initial implements InjuryState {
  const Injury_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState.initial()';
}


}




/// @nodoc


class Injury_Loading implements InjuryState {
  const Injury_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState.loading()';
}


}




/// @nodoc


class LoadedInjury implements InjuryState {
  const LoadedInjury(this.injury);
  

 final  Injury injury;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedInjuryCopyWith<LoadedInjury> get copyWith => _$LoadedInjuryCopyWithImpl<LoadedInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedInjury&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,injury);

@override
String toString() {
  return 'InjuryState.loadedInjury(injury: $injury)';
}


}

/// @nodoc
abstract mixin class $LoadedInjuryCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $LoadedInjuryCopyWith(LoadedInjury value, $Res Function(LoadedInjury) _then) = _$LoadedInjuryCopyWithImpl;
@useResult
$Res call({
 Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class _$LoadedInjuryCopyWithImpl<$Res>
    implements $LoadedInjuryCopyWith<$Res> {
  _$LoadedInjuryCopyWithImpl(this._self, this._then);

  final LoadedInjury _self;
  final $Res Function(LoadedInjury) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injury = null,}) {
  return _then(LoadedInjury(
null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class LoadedInjuries implements InjuryState {
  const LoadedInjuries(final  List<Injury> injuries, this.currentPage, this.limit, this.hasMore): _injuries = injuries;
  

 final  List<Injury> _injuries;
 List<Injury> get injuries {
  if (_injuries is EqualUnmodifiableListView) return _injuries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_injuries);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedInjuriesCopyWith<LoadedInjuries> get copyWith => _$LoadedInjuriesCopyWithImpl<LoadedInjuries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedInjuries&&const DeepCollectionEquality().equals(other._injuries, _injuries)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_injuries),currentPage,limit,hasMore);

@override
String toString() {
  return 'InjuryState.loadedInjuries(injuries: $injuries, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedInjuriesCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $LoadedInjuriesCopyWith(LoadedInjuries value, $Res Function(LoadedInjuries) _then) = _$LoadedInjuriesCopyWithImpl;
@useResult
$Res call({
 List<Injury> injuries, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedInjuriesCopyWithImpl<$Res>
    implements $LoadedInjuriesCopyWith<$Res> {
  _$LoadedInjuriesCopyWithImpl(this._self, this._then);

  final LoadedInjuries _self;
  final $Res Function(LoadedInjuries) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injuries = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedInjuries(
null == injuries ? _self._injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<Injury>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Injury_Error implements InjuryState {
  const Injury_Error(this.message);
  

 final  String message;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Injury_ErrorCopyWith<Injury_Error> get copyWith => _$Injury_ErrorCopyWithImpl<Injury_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InjuryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Injury_ErrorCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $Injury_ErrorCopyWith(Injury_Error value, $Res Function(Injury_Error) _then) = _$Injury_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Injury_ErrorCopyWithImpl<$Res>
    implements $Injury_ErrorCopyWith<$Res> {
  _$Injury_ErrorCopyWithImpl(this._self, this._then);

  final Injury_Error _self;
  final $Res Function(Injury_Error) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Injury_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Injury_Success implements InjuryState {
  const Injury_Success(this.message);
  

 final  String message;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Injury_SuccessCopyWith<Injury_Success> get copyWith => _$Injury_SuccessCopyWithImpl<Injury_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InjuryState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Injury_SuccessCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $Injury_SuccessCopyWith(Injury_Success value, $Res Function(Injury_Success) _then) = _$Injury_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Injury_SuccessCopyWithImpl<$Res>
    implements $Injury_SuccessCopyWith<$Res> {
  _$Injury_SuccessCopyWithImpl(this._self, this._then);

  final Injury_Success _self;
  final $Res Function(Injury_Success) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Injury_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
