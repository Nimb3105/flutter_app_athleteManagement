// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthEvent()';
}


}

/// @nodoc
class $HealthEventCopyWith<$Res>  {
$HealthEventCopyWith(HealthEvent _, $Res Function(HealthEvent) __);
}


/// Adds pattern-matching-related methods to [HealthEvent].
extension HealthEventPatterns on HealthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateHealth value)?  createHealth,TResult Function( _GetHealthById value)?  getHealthById,TResult Function( _GetHealthByUserId value)?  getHealthByUserId,TResult Function( _GetAllHealthRecords value)?  getAllHealthRecords,TResult Function( _UpdateHealth value)?  updateHealth,TResult Function( _DeleteHealth value)?  deleteHealth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHealth() when createHealth != null:
return createHealth(_that);case _GetHealthById() when getHealthById != null:
return getHealthById(_that);case _GetHealthByUserId() when getHealthByUserId != null:
return getHealthByUserId(_that);case _GetAllHealthRecords() when getAllHealthRecords != null:
return getAllHealthRecords(_that);case _UpdateHealth() when updateHealth != null:
return updateHealth(_that);case _DeleteHealth() when deleteHealth != null:
return deleteHealth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateHealth value)  createHealth,required TResult Function( _GetHealthById value)  getHealthById,required TResult Function( _GetHealthByUserId value)  getHealthByUserId,required TResult Function( _GetAllHealthRecords value)  getAllHealthRecords,required TResult Function( _UpdateHealth value)  updateHealth,required TResult Function( _DeleteHealth value)  deleteHealth,}){
final _that = this;
switch (_that) {
case _CreateHealth():
return createHealth(_that);case _GetHealthById():
return getHealthById(_that);case _GetHealthByUserId():
return getHealthByUserId(_that);case _GetAllHealthRecords():
return getAllHealthRecords(_that);case _UpdateHealth():
return updateHealth(_that);case _DeleteHealth():
return deleteHealth(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateHealth value)?  createHealth,TResult? Function( _GetHealthById value)?  getHealthById,TResult? Function( _GetHealthByUserId value)?  getHealthByUserId,TResult? Function( _GetAllHealthRecords value)?  getAllHealthRecords,TResult? Function( _UpdateHealth value)?  updateHealth,TResult? Function( _DeleteHealth value)?  deleteHealth,}){
final _that = this;
switch (_that) {
case _CreateHealth() when createHealth != null:
return createHealth(_that);case _GetHealthById() when getHealthById != null:
return getHealthById(_that);case _GetHealthByUserId() when getHealthByUserId != null:
return getHealthByUserId(_that);case _GetAllHealthRecords() when getAllHealthRecords != null:
return getAllHealthRecords(_that);case _UpdateHealth() when updateHealth != null:
return updateHealth(_that);case _DeleteHealth() when deleteHealth != null:
return deleteHealth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Health health)?  createHealth,TResult Function( String id)?  getHealthById,TResult Function( String userId)?  getHealthByUserId,TResult Function( int page,  int limit)?  getAllHealthRecords,TResult Function( String id,  Health health)?  updateHealth,TResult Function( String id)?  deleteHealth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateHealth() when createHealth != null:
return createHealth(_that.health);case _GetHealthById() when getHealthById != null:
return getHealthById(_that.id);case _GetHealthByUserId() when getHealthByUserId != null:
return getHealthByUserId(_that.userId);case _GetAllHealthRecords() when getAllHealthRecords != null:
return getAllHealthRecords(_that.page,_that.limit);case _UpdateHealth() when updateHealth != null:
return updateHealth(_that.id,_that.health);case _DeleteHealth() when deleteHealth != null:
return deleteHealth(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Health health)  createHealth,required TResult Function( String id)  getHealthById,required TResult Function( String userId)  getHealthByUserId,required TResult Function( int page,  int limit)  getAllHealthRecords,required TResult Function( String id,  Health health)  updateHealth,required TResult Function( String id)  deleteHealth,}) {final _that = this;
switch (_that) {
case _CreateHealth():
return createHealth(_that.health);case _GetHealthById():
return getHealthById(_that.id);case _GetHealthByUserId():
return getHealthByUserId(_that.userId);case _GetAllHealthRecords():
return getAllHealthRecords(_that.page,_that.limit);case _UpdateHealth():
return updateHealth(_that.id,_that.health);case _DeleteHealth():
return deleteHealth(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Health health)?  createHealth,TResult? Function( String id)?  getHealthById,TResult? Function( String userId)?  getHealthByUserId,TResult? Function( int page,  int limit)?  getAllHealthRecords,TResult? Function( String id,  Health health)?  updateHealth,TResult? Function( String id)?  deleteHealth,}) {final _that = this;
switch (_that) {
case _CreateHealth() when createHealth != null:
return createHealth(_that.health);case _GetHealthById() when getHealthById != null:
return getHealthById(_that.id);case _GetHealthByUserId() when getHealthByUserId != null:
return getHealthByUserId(_that.userId);case _GetAllHealthRecords() when getAllHealthRecords != null:
return getAllHealthRecords(_that.page,_that.limit);case _UpdateHealth() when updateHealth != null:
return updateHealth(_that.id,_that.health);case _DeleteHealth() when deleteHealth != null:
return deleteHealth(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateHealth implements HealthEvent {
  const _CreateHealth(this.health);
  

 final  Health health;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHealthCopyWith<_CreateHealth> get copyWith => __$CreateHealthCopyWithImpl<_CreateHealth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHealth&&(identical(other.health, health) || other.health == health));
}


@override
int get hashCode => Object.hash(runtimeType,health);

@override
String toString() {
  return 'HealthEvent.createHealth(health: $health)';
}


}

/// @nodoc
abstract mixin class _$CreateHealthCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$CreateHealthCopyWith(_CreateHealth value, $Res Function(_CreateHealth) _then) = __$CreateHealthCopyWithImpl;
@useResult
$Res call({
 Health health
});


$HealthCopyWith<$Res> get health;

}
/// @nodoc
class __$CreateHealthCopyWithImpl<$Res>
    implements _$CreateHealthCopyWith<$Res> {
  __$CreateHealthCopyWithImpl(this._self, this._then);

  final _CreateHealth _self;
  final $Res Function(_CreateHealth) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? health = null,}) {
  return _then(_CreateHealth(
null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as Health,
  ));
}

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthCopyWith<$Res> get health {
  
  return $HealthCopyWith<$Res>(_self.health, (value) {
    return _then(_self.copyWith(health: value));
  });
}
}

/// @nodoc


class _GetHealthById implements HealthEvent {
  const _GetHealthById(this.id);
  

 final  String id;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHealthByIdCopyWith<_GetHealthById> get copyWith => __$GetHealthByIdCopyWithImpl<_GetHealthById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHealthById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HealthEvent.getHealthById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetHealthByIdCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$GetHealthByIdCopyWith(_GetHealthById value, $Res Function(_GetHealthById) _then) = __$GetHealthByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetHealthByIdCopyWithImpl<$Res>
    implements _$GetHealthByIdCopyWith<$Res> {
  __$GetHealthByIdCopyWithImpl(this._self, this._then);

  final _GetHealthById _self;
  final $Res Function(_GetHealthById) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetHealthById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetHealthByUserId implements HealthEvent {
  const _GetHealthByUserId(this.userId);
  

 final  String userId;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHealthByUserIdCopyWith<_GetHealthByUserId> get copyWith => __$GetHealthByUserIdCopyWithImpl<_GetHealthByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHealthByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'HealthEvent.getHealthByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetHealthByUserIdCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$GetHealthByUserIdCopyWith(_GetHealthByUserId value, $Res Function(_GetHealthByUserId) _then) = __$GetHealthByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetHealthByUserIdCopyWithImpl<$Res>
    implements _$GetHealthByUserIdCopyWith<$Res> {
  __$GetHealthByUserIdCopyWithImpl(this._self, this._then);

  final _GetHealthByUserId _self;
  final $Res Function(_GetHealthByUserId) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetHealthByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllHealthRecords implements HealthEvent {
  const _GetAllHealthRecords({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllHealthRecordsCopyWith<_GetAllHealthRecords> get copyWith => __$GetAllHealthRecordsCopyWithImpl<_GetAllHealthRecords>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllHealthRecords&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'HealthEvent.getAllHealthRecords(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllHealthRecordsCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$GetAllHealthRecordsCopyWith(_GetAllHealthRecords value, $Res Function(_GetAllHealthRecords) _then) = __$GetAllHealthRecordsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllHealthRecordsCopyWithImpl<$Res>
    implements _$GetAllHealthRecordsCopyWith<$Res> {
  __$GetAllHealthRecordsCopyWithImpl(this._self, this._then);

  final _GetAllHealthRecords _self;
  final $Res Function(_GetAllHealthRecords) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllHealthRecords(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateHealth implements HealthEvent {
  const _UpdateHealth(this.id, this.health);
  

 final  String id;
 final  Health health;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateHealthCopyWith<_UpdateHealth> get copyWith => __$UpdateHealthCopyWithImpl<_UpdateHealth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateHealth&&(identical(other.id, id) || other.id == id)&&(identical(other.health, health) || other.health == health));
}


@override
int get hashCode => Object.hash(runtimeType,id,health);

@override
String toString() {
  return 'HealthEvent.updateHealth(id: $id, health: $health)';
}


}

/// @nodoc
abstract mixin class _$UpdateHealthCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$UpdateHealthCopyWith(_UpdateHealth value, $Res Function(_UpdateHealth) _then) = __$UpdateHealthCopyWithImpl;
@useResult
$Res call({
 String id, Health health
});


$HealthCopyWith<$Res> get health;

}
/// @nodoc
class __$UpdateHealthCopyWithImpl<$Res>
    implements _$UpdateHealthCopyWith<$Res> {
  __$UpdateHealthCopyWithImpl(this._self, this._then);

  final _UpdateHealth _self;
  final $Res Function(_UpdateHealth) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? health = null,}) {
  return _then(_UpdateHealth(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as Health,
  ));
}

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthCopyWith<$Res> get health {
  
  return $HealthCopyWith<$Res>(_self.health, (value) {
    return _then(_self.copyWith(health: value));
  });
}
}

/// @nodoc


class _DeleteHealth implements HealthEvent {
  const _DeleteHealth(this.id);
  

 final  String id;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteHealthCopyWith<_DeleteHealth> get copyWith => __$DeleteHealthCopyWithImpl<_DeleteHealth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteHealth&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HealthEvent.deleteHealth(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteHealthCopyWith<$Res> implements $HealthEventCopyWith<$Res> {
  factory _$DeleteHealthCopyWith(_DeleteHealth value, $Res Function(_DeleteHealth) _then) = __$DeleteHealthCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteHealthCopyWithImpl<$Res>
    implements _$DeleteHealthCopyWith<$Res> {
  __$DeleteHealthCopyWithImpl(this._self, this._then);

  final _DeleteHealth _self;
  final $Res Function(_DeleteHealth) _then;

/// Create a copy of HealthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteHealth(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HealthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthState()';
}


}

/// @nodoc
class $HealthStateCopyWith<$Res>  {
$HealthStateCopyWith(HealthState _, $Res Function(HealthState) __);
}


/// Adds pattern-matching-related methods to [HealthState].
extension HealthStatePatterns on HealthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Health_Initial value)?  initial,TResult Function( Health_Loading value)?  loading,TResult Function( LoadedHealth value)?  loadedHealth,TResult Function( LoadedHealthRecords value)?  loadedHealthRecords,TResult Function( Health_Error value)?  error,TResult Function( Health_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Health_Initial() when initial != null:
return initial(_that);case Health_Loading() when loading != null:
return loading(_that);case LoadedHealth() when loadedHealth != null:
return loadedHealth(_that);case LoadedHealthRecords() when loadedHealthRecords != null:
return loadedHealthRecords(_that);case Health_Error() when error != null:
return error(_that);case Health_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Health_Initial value)  initial,required TResult Function( Health_Loading value)  loading,required TResult Function( LoadedHealth value)  loadedHealth,required TResult Function( LoadedHealthRecords value)  loadedHealthRecords,required TResult Function( Health_Error value)  error,required TResult Function( Health_Success value)  success,}){
final _that = this;
switch (_that) {
case Health_Initial():
return initial(_that);case Health_Loading():
return loading(_that);case LoadedHealth():
return loadedHealth(_that);case LoadedHealthRecords():
return loadedHealthRecords(_that);case Health_Error():
return error(_that);case Health_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Health_Initial value)?  initial,TResult? Function( Health_Loading value)?  loading,TResult? Function( LoadedHealth value)?  loadedHealth,TResult? Function( LoadedHealthRecords value)?  loadedHealthRecords,TResult? Function( Health_Error value)?  error,TResult? Function( Health_Success value)?  success,}){
final _that = this;
switch (_that) {
case Health_Initial() when initial != null:
return initial(_that);case Health_Loading() when loading != null:
return loading(_that);case LoadedHealth() when loadedHealth != null:
return loadedHealth(_that);case LoadedHealthRecords() when loadedHealthRecords != null:
return loadedHealthRecords(_that);case Health_Error() when error != null:
return error(_that);case Health_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Health health)?  loadedHealth,TResult Function( List<Health> healthRecords,  int currentPage,  int limit,  bool hasMore)?  loadedHealthRecords,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Health_Initial() when initial != null:
return initial();case Health_Loading() when loading != null:
return loading();case LoadedHealth() when loadedHealth != null:
return loadedHealth(_that.health);case LoadedHealthRecords() when loadedHealthRecords != null:
return loadedHealthRecords(_that.healthRecords,_that.currentPage,_that.limit,_that.hasMore);case Health_Error() when error != null:
return error(_that.message);case Health_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Health health)  loadedHealth,required TResult Function( List<Health> healthRecords,  int currentPage,  int limit,  bool hasMore)  loadedHealthRecords,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Health_Initial():
return initial();case Health_Loading():
return loading();case LoadedHealth():
return loadedHealth(_that.health);case LoadedHealthRecords():
return loadedHealthRecords(_that.healthRecords,_that.currentPage,_that.limit,_that.hasMore);case Health_Error():
return error(_that.message);case Health_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Health health)?  loadedHealth,TResult? Function( List<Health> healthRecords,  int currentPage,  int limit,  bool hasMore)?  loadedHealthRecords,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Health_Initial() when initial != null:
return initial();case Health_Loading() when loading != null:
return loading();case LoadedHealth() when loadedHealth != null:
return loadedHealth(_that.health);case LoadedHealthRecords() when loadedHealthRecords != null:
return loadedHealthRecords(_that.healthRecords,_that.currentPage,_that.limit,_that.hasMore);case Health_Error() when error != null:
return error(_that.message);case Health_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Health_Initial implements HealthState {
  const Health_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Health_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthState.initial()';
}


}




/// @nodoc


class Health_Loading implements HealthState {
  const Health_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Health_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthState.loading()';
}


}




/// @nodoc


class LoadedHealth implements HealthState {
  const LoadedHealth(this.health);
  

 final  Health health;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedHealthCopyWith<LoadedHealth> get copyWith => _$LoadedHealthCopyWithImpl<LoadedHealth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedHealth&&(identical(other.health, health) || other.health == health));
}


@override
int get hashCode => Object.hash(runtimeType,health);

@override
String toString() {
  return 'HealthState.loadedHealth(health: $health)';
}


}

/// @nodoc
abstract mixin class $LoadedHealthCopyWith<$Res> implements $HealthStateCopyWith<$Res> {
  factory $LoadedHealthCopyWith(LoadedHealth value, $Res Function(LoadedHealth) _then) = _$LoadedHealthCopyWithImpl;
@useResult
$Res call({
 Health health
});


$HealthCopyWith<$Res> get health;

}
/// @nodoc
class _$LoadedHealthCopyWithImpl<$Res>
    implements $LoadedHealthCopyWith<$Res> {
  _$LoadedHealthCopyWithImpl(this._self, this._then);

  final LoadedHealth _self;
  final $Res Function(LoadedHealth) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? health = null,}) {
  return _then(LoadedHealth(
null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as Health,
  ));
}

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthCopyWith<$Res> get health {
  
  return $HealthCopyWith<$Res>(_self.health, (value) {
    return _then(_self.copyWith(health: value));
  });
}
}

/// @nodoc


class LoadedHealthRecords implements HealthState {
  const LoadedHealthRecords(final  List<Health> healthRecords, this.currentPage, this.limit, this.hasMore): _healthRecords = healthRecords;
  

 final  List<Health> _healthRecords;
 List<Health> get healthRecords {
  if (_healthRecords is EqualUnmodifiableListView) return _healthRecords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_healthRecords);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedHealthRecordsCopyWith<LoadedHealthRecords> get copyWith => _$LoadedHealthRecordsCopyWithImpl<LoadedHealthRecords>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedHealthRecords&&const DeepCollectionEquality().equals(other._healthRecords, _healthRecords)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_healthRecords),currentPage,limit,hasMore);

@override
String toString() {
  return 'HealthState.loadedHealthRecords(healthRecords: $healthRecords, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedHealthRecordsCopyWith<$Res> implements $HealthStateCopyWith<$Res> {
  factory $LoadedHealthRecordsCopyWith(LoadedHealthRecords value, $Res Function(LoadedHealthRecords) _then) = _$LoadedHealthRecordsCopyWithImpl;
@useResult
$Res call({
 List<Health> healthRecords, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedHealthRecordsCopyWithImpl<$Res>
    implements $LoadedHealthRecordsCopyWith<$Res> {
  _$LoadedHealthRecordsCopyWithImpl(this._self, this._then);

  final LoadedHealthRecords _self;
  final $Res Function(LoadedHealthRecords) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? healthRecords = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedHealthRecords(
null == healthRecords ? _self._healthRecords : healthRecords // ignore: cast_nullable_to_non_nullable
as List<Health>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Health_Error implements HealthState {
  const Health_Error(this.message);
  

 final  String message;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Health_ErrorCopyWith<Health_Error> get copyWith => _$Health_ErrorCopyWithImpl<Health_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Health_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HealthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Health_ErrorCopyWith<$Res> implements $HealthStateCopyWith<$Res> {
  factory $Health_ErrorCopyWith(Health_Error value, $Res Function(Health_Error) _then) = _$Health_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Health_ErrorCopyWithImpl<$Res>
    implements $Health_ErrorCopyWith<$Res> {
  _$Health_ErrorCopyWithImpl(this._self, this._then);

  final Health_Error _self;
  final $Res Function(Health_Error) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Health_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Health_Success implements HealthState {
  const Health_Success(this.message);
  

 final  String message;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Health_SuccessCopyWith<Health_Success> get copyWith => _$Health_SuccessCopyWithImpl<Health_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Health_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HealthState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Health_SuccessCopyWith<$Res> implements $HealthStateCopyWith<$Res> {
  factory $Health_SuccessCopyWith(Health_Success value, $Res Function(Health_Success) _then) = _$Health_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Health_SuccessCopyWithImpl<$Res>
    implements $Health_SuccessCopyWith<$Res> {
  _$Health_SuccessCopyWithImpl(this._self, this._then);

  final Health_Success _self;
  final $Res Function(Health_Success) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Health_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
