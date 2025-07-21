// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_certification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoachCertificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachCertificationEvent()';
}


}

/// @nodoc
class $CoachCertificationEventCopyWith<$Res>  {
$CoachCertificationEventCopyWith(CoachCertificationEvent _, $Res Function(CoachCertificationEvent) __);
}


/// Adds pattern-matching-related methods to [CoachCertificationEvent].
extension CoachCertificationEventPatterns on CoachCertificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateCoachCertification value)?  createCoachCertification,TResult Function( _GetCoachCertificationById value)?  getCoachCertificationById,TResult Function( _GetCoachCertificationByUserId value)?  getCoachCertificationByUserId,TResult Function( _GetAllCoachCertifications value)?  getAllCoachCertifications,TResult Function( _UpdateCoachCertification value)?  updateCoachCertification,TResult Function( _DeleteCoachCertification value)?  deleteCoachCertification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCoachCertification() when createCoachCertification != null:
return createCoachCertification(_that);case _GetCoachCertificationById() when getCoachCertificationById != null:
return getCoachCertificationById(_that);case _GetCoachCertificationByUserId() when getCoachCertificationByUserId != null:
return getCoachCertificationByUserId(_that);case _GetAllCoachCertifications() when getAllCoachCertifications != null:
return getAllCoachCertifications(_that);case _UpdateCoachCertification() when updateCoachCertification != null:
return updateCoachCertification(_that);case _DeleteCoachCertification() when deleteCoachCertification != null:
return deleteCoachCertification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateCoachCertification value)  createCoachCertification,required TResult Function( _GetCoachCertificationById value)  getCoachCertificationById,required TResult Function( _GetCoachCertificationByUserId value)  getCoachCertificationByUserId,required TResult Function( _GetAllCoachCertifications value)  getAllCoachCertifications,required TResult Function( _UpdateCoachCertification value)  updateCoachCertification,required TResult Function( _DeleteCoachCertification value)  deleteCoachCertification,}){
final _that = this;
switch (_that) {
case _CreateCoachCertification():
return createCoachCertification(_that);case _GetCoachCertificationById():
return getCoachCertificationById(_that);case _GetCoachCertificationByUserId():
return getCoachCertificationByUserId(_that);case _GetAllCoachCertifications():
return getAllCoachCertifications(_that);case _UpdateCoachCertification():
return updateCoachCertification(_that);case _DeleteCoachCertification():
return deleteCoachCertification(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateCoachCertification value)?  createCoachCertification,TResult? Function( _GetCoachCertificationById value)?  getCoachCertificationById,TResult? Function( _GetCoachCertificationByUserId value)?  getCoachCertificationByUserId,TResult? Function( _GetAllCoachCertifications value)?  getAllCoachCertifications,TResult? Function( _UpdateCoachCertification value)?  updateCoachCertification,TResult? Function( _DeleteCoachCertification value)?  deleteCoachCertification,}){
final _that = this;
switch (_that) {
case _CreateCoachCertification() when createCoachCertification != null:
return createCoachCertification(_that);case _GetCoachCertificationById() when getCoachCertificationById != null:
return getCoachCertificationById(_that);case _GetCoachCertificationByUserId() when getCoachCertificationByUserId != null:
return getCoachCertificationByUserId(_that);case _GetAllCoachCertifications() when getAllCoachCertifications != null:
return getAllCoachCertifications(_that);case _UpdateCoachCertification() when updateCoachCertification != null:
return updateCoachCertification(_that);case _DeleteCoachCertification() when deleteCoachCertification != null:
return deleteCoachCertification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CoachCertification certification)?  createCoachCertification,TResult Function( String id)?  getCoachCertificationById,TResult Function( String userId)?  getCoachCertificationByUserId,TResult Function( int page,  int limit)?  getAllCoachCertifications,TResult Function( String id,  CoachCertification certification)?  updateCoachCertification,TResult Function( String id)?  deleteCoachCertification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCoachCertification() when createCoachCertification != null:
return createCoachCertification(_that.certification);case _GetCoachCertificationById() when getCoachCertificationById != null:
return getCoachCertificationById(_that.id);case _GetCoachCertificationByUserId() when getCoachCertificationByUserId != null:
return getCoachCertificationByUserId(_that.userId);case _GetAllCoachCertifications() when getAllCoachCertifications != null:
return getAllCoachCertifications(_that.page,_that.limit);case _UpdateCoachCertification() when updateCoachCertification != null:
return updateCoachCertification(_that.id,_that.certification);case _DeleteCoachCertification() when deleteCoachCertification != null:
return deleteCoachCertification(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CoachCertification certification)  createCoachCertification,required TResult Function( String id)  getCoachCertificationById,required TResult Function( String userId)  getCoachCertificationByUserId,required TResult Function( int page,  int limit)  getAllCoachCertifications,required TResult Function( String id,  CoachCertification certification)  updateCoachCertification,required TResult Function( String id)  deleteCoachCertification,}) {final _that = this;
switch (_that) {
case _CreateCoachCertification():
return createCoachCertification(_that.certification);case _GetCoachCertificationById():
return getCoachCertificationById(_that.id);case _GetCoachCertificationByUserId():
return getCoachCertificationByUserId(_that.userId);case _GetAllCoachCertifications():
return getAllCoachCertifications(_that.page,_that.limit);case _UpdateCoachCertification():
return updateCoachCertification(_that.id,_that.certification);case _DeleteCoachCertification():
return deleteCoachCertification(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CoachCertification certification)?  createCoachCertification,TResult? Function( String id)?  getCoachCertificationById,TResult? Function( String userId)?  getCoachCertificationByUserId,TResult? Function( int page,  int limit)?  getAllCoachCertifications,TResult? Function( String id,  CoachCertification certification)?  updateCoachCertification,TResult? Function( String id)?  deleteCoachCertification,}) {final _that = this;
switch (_that) {
case _CreateCoachCertification() when createCoachCertification != null:
return createCoachCertification(_that.certification);case _GetCoachCertificationById() when getCoachCertificationById != null:
return getCoachCertificationById(_that.id);case _GetCoachCertificationByUserId() when getCoachCertificationByUserId != null:
return getCoachCertificationByUserId(_that.userId);case _GetAllCoachCertifications() when getAllCoachCertifications != null:
return getAllCoachCertifications(_that.page,_that.limit);case _UpdateCoachCertification() when updateCoachCertification != null:
return updateCoachCertification(_that.id,_that.certification);case _DeleteCoachCertification() when deleteCoachCertification != null:
return deleteCoachCertification(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCoachCertification implements CoachCertificationEvent {
  const _CreateCoachCertification(this.certification);
  

 final  CoachCertification certification;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCoachCertificationCopyWith<_CreateCoachCertification> get copyWith => __$CreateCoachCertificationCopyWithImpl<_CreateCoachCertification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCoachCertification&&(identical(other.certification, certification) || other.certification == certification));
}


@override
int get hashCode => Object.hash(runtimeType,certification);

@override
String toString() {
  return 'CoachCertificationEvent.createCoachCertification(certification: $certification)';
}


}

/// @nodoc
abstract mixin class _$CreateCoachCertificationCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$CreateCoachCertificationCopyWith(_CreateCoachCertification value, $Res Function(_CreateCoachCertification) _then) = __$CreateCoachCertificationCopyWithImpl;
@useResult
$Res call({
 CoachCertification certification
});


$CoachCertificationCopyWith<$Res> get certification;

}
/// @nodoc
class __$CreateCoachCertificationCopyWithImpl<$Res>
    implements _$CreateCoachCertificationCopyWith<$Res> {
  __$CreateCoachCertificationCopyWithImpl(this._self, this._then);

  final _CreateCoachCertification _self;
  final $Res Function(_CreateCoachCertification) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? certification = null,}) {
  return _then(_CreateCoachCertification(
null == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as CoachCertification,
  ));
}

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCertificationCopyWith<$Res> get certification {
  
  return $CoachCertificationCopyWith<$Res>(_self.certification, (value) {
    return _then(_self.copyWith(certification: value));
  });
}
}

/// @nodoc


class _GetCoachCertificationById implements CoachCertificationEvent {
  const _GetCoachCertificationById(this.id);
  

 final  String id;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachCertificationByIdCopyWith<_GetCoachCertificationById> get copyWith => __$GetCoachCertificationByIdCopyWithImpl<_GetCoachCertificationById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachCertificationById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachCertificationEvent.getCoachCertificationById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetCoachCertificationByIdCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$GetCoachCertificationByIdCopyWith(_GetCoachCertificationById value, $Res Function(_GetCoachCertificationById) _then) = __$GetCoachCertificationByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetCoachCertificationByIdCopyWithImpl<$Res>
    implements _$GetCoachCertificationByIdCopyWith<$Res> {
  __$GetCoachCertificationByIdCopyWithImpl(this._self, this._then);

  final _GetCoachCertificationById _self;
  final $Res Function(_GetCoachCertificationById) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetCoachCertificationById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetCoachCertificationByUserId implements CoachCertificationEvent {
  const _GetCoachCertificationByUserId(this.userId);
  

 final  String userId;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachCertificationByUserIdCopyWith<_GetCoachCertificationByUserId> get copyWith => __$GetCoachCertificationByUserIdCopyWithImpl<_GetCoachCertificationByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachCertificationByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CoachCertificationEvent.getCoachCertificationByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetCoachCertificationByUserIdCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$GetCoachCertificationByUserIdCopyWith(_GetCoachCertificationByUserId value, $Res Function(_GetCoachCertificationByUserId) _then) = __$GetCoachCertificationByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetCoachCertificationByUserIdCopyWithImpl<$Res>
    implements _$GetCoachCertificationByUserIdCopyWith<$Res> {
  __$GetCoachCertificationByUserIdCopyWithImpl(this._self, this._then);

  final _GetCoachCertificationByUserId _self;
  final $Res Function(_GetCoachCertificationByUserId) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetCoachCertificationByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllCoachCertifications implements CoachCertificationEvent {
  const _GetAllCoachCertifications({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllCoachCertificationsCopyWith<_GetAllCoachCertifications> get copyWith => __$GetAllCoachCertificationsCopyWithImpl<_GetAllCoachCertifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllCoachCertifications&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'CoachCertificationEvent.getAllCoachCertifications(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllCoachCertificationsCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$GetAllCoachCertificationsCopyWith(_GetAllCoachCertifications value, $Res Function(_GetAllCoachCertifications) _then) = __$GetAllCoachCertificationsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllCoachCertificationsCopyWithImpl<$Res>
    implements _$GetAllCoachCertificationsCopyWith<$Res> {
  __$GetAllCoachCertificationsCopyWithImpl(this._self, this._then);

  final _GetAllCoachCertifications _self;
  final $Res Function(_GetAllCoachCertifications) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllCoachCertifications(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateCoachCertification implements CoachCertificationEvent {
  const _UpdateCoachCertification(this.id, this.certification);
  

 final  String id;
 final  CoachCertification certification;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCoachCertificationCopyWith<_UpdateCoachCertification> get copyWith => __$UpdateCoachCertificationCopyWithImpl<_UpdateCoachCertification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCoachCertification&&(identical(other.id, id) || other.id == id)&&(identical(other.certification, certification) || other.certification == certification));
}


@override
int get hashCode => Object.hash(runtimeType,id,certification);

@override
String toString() {
  return 'CoachCertificationEvent.updateCoachCertification(id: $id, certification: $certification)';
}


}

/// @nodoc
abstract mixin class _$UpdateCoachCertificationCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$UpdateCoachCertificationCopyWith(_UpdateCoachCertification value, $Res Function(_UpdateCoachCertification) _then) = __$UpdateCoachCertificationCopyWithImpl;
@useResult
$Res call({
 String id, CoachCertification certification
});


$CoachCertificationCopyWith<$Res> get certification;

}
/// @nodoc
class __$UpdateCoachCertificationCopyWithImpl<$Res>
    implements _$UpdateCoachCertificationCopyWith<$Res> {
  __$UpdateCoachCertificationCopyWithImpl(this._self, this._then);

  final _UpdateCoachCertification _self;
  final $Res Function(_UpdateCoachCertification) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? certification = null,}) {
  return _then(_UpdateCoachCertification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as CoachCertification,
  ));
}

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCertificationCopyWith<$Res> get certification {
  
  return $CoachCertificationCopyWith<$Res>(_self.certification, (value) {
    return _then(_self.copyWith(certification: value));
  });
}
}

/// @nodoc


class _DeleteCoachCertification implements CoachCertificationEvent {
  const _DeleteCoachCertification(this.id);
  

 final  String id;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCoachCertificationCopyWith<_DeleteCoachCertification> get copyWith => __$DeleteCoachCertificationCopyWithImpl<_DeleteCoachCertification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCoachCertification&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachCertificationEvent.deleteCoachCertification(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCoachCertificationCopyWith<$Res> implements $CoachCertificationEventCopyWith<$Res> {
  factory _$DeleteCoachCertificationCopyWith(_DeleteCoachCertification value, $Res Function(_DeleteCoachCertification) _then) = __$DeleteCoachCertificationCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCoachCertificationCopyWithImpl<$Res>
    implements _$DeleteCoachCertificationCopyWith<$Res> {
  __$DeleteCoachCertificationCopyWithImpl(this._self, this._then);

  final _DeleteCoachCertification _self;
  final $Res Function(_DeleteCoachCertification) _then;

/// Create a copy of CoachCertificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCoachCertification(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CoachCertificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachCertificationState()';
}


}

/// @nodoc
class $CoachCertificationStateCopyWith<$Res>  {
$CoachCertificationStateCopyWith(CoachCertificationState _, $Res Function(CoachCertificationState) __);
}


/// Adds pattern-matching-related methods to [CoachCertificationState].
extension CoachCertificationStatePatterns on CoachCertificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CoachCertification_Initial value)?  initial,TResult Function( CoachCertification_Loading value)?  loading,TResult Function( LoadedCoachCertification value)?  loadedCoachCertification,TResult Function( LoadedCoachCertifications value)?  loadedCoachCertifications,TResult Function( CoachCertification_Error value)?  error,TResult Function( CoachCertification_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CoachCertification_Initial() when initial != null:
return initial(_that);case CoachCertification_Loading() when loading != null:
return loading(_that);case LoadedCoachCertification() when loadedCoachCertification != null:
return loadedCoachCertification(_that);case LoadedCoachCertifications() when loadedCoachCertifications != null:
return loadedCoachCertifications(_that);case CoachCertification_Error() when error != null:
return error(_that);case CoachCertification_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CoachCertification_Initial value)  initial,required TResult Function( CoachCertification_Loading value)  loading,required TResult Function( LoadedCoachCertification value)  loadedCoachCertification,required TResult Function( LoadedCoachCertifications value)  loadedCoachCertifications,required TResult Function( CoachCertification_Error value)  error,required TResult Function( CoachCertification_Success value)  success,}){
final _that = this;
switch (_that) {
case CoachCertification_Initial():
return initial(_that);case CoachCertification_Loading():
return loading(_that);case LoadedCoachCertification():
return loadedCoachCertification(_that);case LoadedCoachCertifications():
return loadedCoachCertifications(_that);case CoachCertification_Error():
return error(_that);case CoachCertification_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CoachCertification_Initial value)?  initial,TResult? Function( CoachCertification_Loading value)?  loading,TResult? Function( LoadedCoachCertification value)?  loadedCoachCertification,TResult? Function( LoadedCoachCertifications value)?  loadedCoachCertifications,TResult? Function( CoachCertification_Error value)?  error,TResult? Function( CoachCertification_Success value)?  success,}){
final _that = this;
switch (_that) {
case CoachCertification_Initial() when initial != null:
return initial(_that);case CoachCertification_Loading() when loading != null:
return loading(_that);case LoadedCoachCertification() when loadedCoachCertification != null:
return loadedCoachCertification(_that);case LoadedCoachCertifications() when loadedCoachCertifications != null:
return loadedCoachCertifications(_that);case CoachCertification_Error() when error != null:
return error(_that);case CoachCertification_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CoachCertification certification)?  loadedCoachCertification,TResult Function( List<CoachCertification> certifications,  int currentPage,  int limit,  bool hasMore)?  loadedCoachCertifications,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CoachCertification_Initial() when initial != null:
return initial();case CoachCertification_Loading() when loading != null:
return loading();case LoadedCoachCertification() when loadedCoachCertification != null:
return loadedCoachCertification(_that.certification);case LoadedCoachCertifications() when loadedCoachCertifications != null:
return loadedCoachCertifications(_that.certifications,_that.currentPage,_that.limit,_that.hasMore);case CoachCertification_Error() when error != null:
return error(_that.message);case CoachCertification_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CoachCertification certification)  loadedCoachCertification,required TResult Function( List<CoachCertification> certifications,  int currentPage,  int limit,  bool hasMore)  loadedCoachCertifications,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case CoachCertification_Initial():
return initial();case CoachCertification_Loading():
return loading();case LoadedCoachCertification():
return loadedCoachCertification(_that.certification);case LoadedCoachCertifications():
return loadedCoachCertifications(_that.certifications,_that.currentPage,_that.limit,_that.hasMore);case CoachCertification_Error():
return error(_that.message);case CoachCertification_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CoachCertification certification)?  loadedCoachCertification,TResult? Function( List<CoachCertification> certifications,  int currentPage,  int limit,  bool hasMore)?  loadedCoachCertifications,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case CoachCertification_Initial() when initial != null:
return initial();case CoachCertification_Loading() when loading != null:
return loading();case LoadedCoachCertification() when loadedCoachCertification != null:
return loadedCoachCertification(_that.certification);case LoadedCoachCertifications() when loadedCoachCertifications != null:
return loadedCoachCertifications(_that.certifications,_that.currentPage,_that.limit,_that.hasMore);case CoachCertification_Error() when error != null:
return error(_that.message);case CoachCertification_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CoachCertification_Initial implements CoachCertificationState {
  const CoachCertification_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertification_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachCertificationState.initial()';
}


}




/// @nodoc


class CoachCertification_Loading implements CoachCertificationState {
  const CoachCertification_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertification_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachCertificationState.loading()';
}


}




/// @nodoc


class LoadedCoachCertification implements CoachCertificationState {
  const LoadedCoachCertification(this.certification);
  

 final  CoachCertification certification;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachCertificationCopyWith<LoadedCoachCertification> get copyWith => _$LoadedCoachCertificationCopyWithImpl<LoadedCoachCertification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoachCertification&&(identical(other.certification, certification) || other.certification == certification));
}


@override
int get hashCode => Object.hash(runtimeType,certification);

@override
String toString() {
  return 'CoachCertificationState.loadedCoachCertification(certification: $certification)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachCertificationCopyWith<$Res> implements $CoachCertificationStateCopyWith<$Res> {
  factory $LoadedCoachCertificationCopyWith(LoadedCoachCertification value, $Res Function(LoadedCoachCertification) _then) = _$LoadedCoachCertificationCopyWithImpl;
@useResult
$Res call({
 CoachCertification certification
});


$CoachCertificationCopyWith<$Res> get certification;

}
/// @nodoc
class _$LoadedCoachCertificationCopyWithImpl<$Res>
    implements $LoadedCoachCertificationCopyWith<$Res> {
  _$LoadedCoachCertificationCopyWithImpl(this._self, this._then);

  final LoadedCoachCertification _self;
  final $Res Function(LoadedCoachCertification) _then;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? certification = null,}) {
  return _then(LoadedCoachCertification(
null == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as CoachCertification,
  ));
}

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCertificationCopyWith<$Res> get certification {
  
  return $CoachCertificationCopyWith<$Res>(_self.certification, (value) {
    return _then(_self.copyWith(certification: value));
  });
}
}

/// @nodoc


class LoadedCoachCertifications implements CoachCertificationState {
  const LoadedCoachCertifications(final  List<CoachCertification> certifications, this.currentPage, this.limit, this.hasMore): _certifications = certifications;
  

 final  List<CoachCertification> _certifications;
 List<CoachCertification> get certifications {
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certifications);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachCertificationsCopyWith<LoadedCoachCertifications> get copyWith => _$LoadedCoachCertificationsCopyWithImpl<LoadedCoachCertifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoachCertifications&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_certifications),currentPage,limit,hasMore);

@override
String toString() {
  return 'CoachCertificationState.loadedCoachCertifications(certifications: $certifications, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachCertificationsCopyWith<$Res> implements $CoachCertificationStateCopyWith<$Res> {
  factory $LoadedCoachCertificationsCopyWith(LoadedCoachCertifications value, $Res Function(LoadedCoachCertifications) _then) = _$LoadedCoachCertificationsCopyWithImpl;
@useResult
$Res call({
 List<CoachCertification> certifications, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedCoachCertificationsCopyWithImpl<$Res>
    implements $LoadedCoachCertificationsCopyWith<$Res> {
  _$LoadedCoachCertificationsCopyWithImpl(this._self, this._then);

  final LoadedCoachCertifications _self;
  final $Res Function(LoadedCoachCertifications) _then;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? certifications = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedCoachCertifications(
null == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CoachCertification>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CoachCertification_Error implements CoachCertificationState {
  const CoachCertification_Error(this.message);
  

 final  String message;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachCertification_ErrorCopyWith<CoachCertification_Error> get copyWith => _$CoachCertification_ErrorCopyWithImpl<CoachCertification_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertification_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachCertificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoachCertification_ErrorCopyWith<$Res> implements $CoachCertificationStateCopyWith<$Res> {
  factory $CoachCertification_ErrorCopyWith(CoachCertification_Error value, $Res Function(CoachCertification_Error) _then) = _$CoachCertification_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoachCertification_ErrorCopyWithImpl<$Res>
    implements $CoachCertification_ErrorCopyWith<$Res> {
  _$CoachCertification_ErrorCopyWithImpl(this._self, this._then);

  final CoachCertification_Error _self;
  final $Res Function(CoachCertification_Error) _then;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoachCertification_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CoachCertification_Success implements CoachCertificationState {
  const CoachCertification_Success(this.message);
  

 final  String message;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachCertification_SuccessCopyWith<CoachCertification_Success> get copyWith => _$CoachCertification_SuccessCopyWithImpl<CoachCertification_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertification_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachCertificationState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoachCertification_SuccessCopyWith<$Res> implements $CoachCertificationStateCopyWith<$Res> {
  factory $CoachCertification_SuccessCopyWith(CoachCertification_Success value, $Res Function(CoachCertification_Success) _then) = _$CoachCertification_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoachCertification_SuccessCopyWithImpl<$Res>
    implements $CoachCertification_SuccessCopyWith<$Res> {
  _$CoachCertification_SuccessCopyWithImpl(this._self, this._then);

  final CoachCertification_Success _self;
  final $Res Function(CoachCertification_Success) _then;

/// Create a copy of CoachCertificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoachCertification_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
