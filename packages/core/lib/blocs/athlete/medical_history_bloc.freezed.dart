// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicalHistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicalHistoryEvent()';
}


}

/// @nodoc
class $MedicalHistoryEventCopyWith<$Res>  {
$MedicalHistoryEventCopyWith(MedicalHistoryEvent _, $Res Function(MedicalHistoryEvent) __);
}


/// Adds pattern-matching-related methods to [MedicalHistoryEvent].
extension MedicalHistoryEventPatterns on MedicalHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateMedicalHistory value)?  createMedicalHistory,TResult Function( _GetMedicalHistoryById value)?  getMedicalHistoryById,TResult Function( _GetMedicalHistoryByHealthId value)?  getMedicalHistoryByHealthId,TResult Function( _GetAllMedicalHistories value)?  getAllMedicalHistories,TResult Function( _UpdateMedicalHistory value)?  updateMedicalHistory,TResult Function( _DeleteMedicalHistory value)?  deleteMedicalHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMedicalHistory() when createMedicalHistory != null:
return createMedicalHistory(_that);case _GetMedicalHistoryById() when getMedicalHistoryById != null:
return getMedicalHistoryById(_that);case _GetMedicalHistoryByHealthId() when getMedicalHistoryByHealthId != null:
return getMedicalHistoryByHealthId(_that);case _GetAllMedicalHistories() when getAllMedicalHistories != null:
return getAllMedicalHistories(_that);case _UpdateMedicalHistory() when updateMedicalHistory != null:
return updateMedicalHistory(_that);case _DeleteMedicalHistory() when deleteMedicalHistory != null:
return deleteMedicalHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateMedicalHistory value)  createMedicalHistory,required TResult Function( _GetMedicalHistoryById value)  getMedicalHistoryById,required TResult Function( _GetMedicalHistoryByHealthId value)  getMedicalHistoryByHealthId,required TResult Function( _GetAllMedicalHistories value)  getAllMedicalHistories,required TResult Function( _UpdateMedicalHistory value)  updateMedicalHistory,required TResult Function( _DeleteMedicalHistory value)  deleteMedicalHistory,}){
final _that = this;
switch (_that) {
case _CreateMedicalHistory():
return createMedicalHistory(_that);case _GetMedicalHistoryById():
return getMedicalHistoryById(_that);case _GetMedicalHistoryByHealthId():
return getMedicalHistoryByHealthId(_that);case _GetAllMedicalHistories():
return getAllMedicalHistories(_that);case _UpdateMedicalHistory():
return updateMedicalHistory(_that);case _DeleteMedicalHistory():
return deleteMedicalHistory(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateMedicalHistory value)?  createMedicalHistory,TResult? Function( _GetMedicalHistoryById value)?  getMedicalHistoryById,TResult? Function( _GetMedicalHistoryByHealthId value)?  getMedicalHistoryByHealthId,TResult? Function( _GetAllMedicalHistories value)?  getAllMedicalHistories,TResult? Function( _UpdateMedicalHistory value)?  updateMedicalHistory,TResult? Function( _DeleteMedicalHistory value)?  deleteMedicalHistory,}){
final _that = this;
switch (_that) {
case _CreateMedicalHistory() when createMedicalHistory != null:
return createMedicalHistory(_that);case _GetMedicalHistoryById() when getMedicalHistoryById != null:
return getMedicalHistoryById(_that);case _GetMedicalHistoryByHealthId() when getMedicalHistoryByHealthId != null:
return getMedicalHistoryByHealthId(_that);case _GetAllMedicalHistories() when getAllMedicalHistories != null:
return getAllMedicalHistories(_that);case _UpdateMedicalHistory() when updateMedicalHistory != null:
return updateMedicalHistory(_that);case _DeleteMedicalHistory() when deleteMedicalHistory != null:
return deleteMedicalHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MedicalHistory medicalHistory)?  createMedicalHistory,TResult Function( String id)?  getMedicalHistoryById,TResult Function( String healthId)?  getMedicalHistoryByHealthId,TResult Function( int page,  int limit)?  getAllMedicalHistories,TResult Function( String id,  MedicalHistory medicalHistory)?  updateMedicalHistory,TResult Function( String id)?  deleteMedicalHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMedicalHistory() when createMedicalHistory != null:
return createMedicalHistory(_that.medicalHistory);case _GetMedicalHistoryById() when getMedicalHistoryById != null:
return getMedicalHistoryById(_that.id);case _GetMedicalHistoryByHealthId() when getMedicalHistoryByHealthId != null:
return getMedicalHistoryByHealthId(_that.healthId);case _GetAllMedicalHistories() when getAllMedicalHistories != null:
return getAllMedicalHistories(_that.page,_that.limit);case _UpdateMedicalHistory() when updateMedicalHistory != null:
return updateMedicalHistory(_that.id,_that.medicalHistory);case _DeleteMedicalHistory() when deleteMedicalHistory != null:
return deleteMedicalHistory(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MedicalHistory medicalHistory)  createMedicalHistory,required TResult Function( String id)  getMedicalHistoryById,required TResult Function( String healthId)  getMedicalHistoryByHealthId,required TResult Function( int page,  int limit)  getAllMedicalHistories,required TResult Function( String id,  MedicalHistory medicalHistory)  updateMedicalHistory,required TResult Function( String id)  deleteMedicalHistory,}) {final _that = this;
switch (_that) {
case _CreateMedicalHistory():
return createMedicalHistory(_that.medicalHistory);case _GetMedicalHistoryById():
return getMedicalHistoryById(_that.id);case _GetMedicalHistoryByHealthId():
return getMedicalHistoryByHealthId(_that.healthId);case _GetAllMedicalHistories():
return getAllMedicalHistories(_that.page,_that.limit);case _UpdateMedicalHistory():
return updateMedicalHistory(_that.id,_that.medicalHistory);case _DeleteMedicalHistory():
return deleteMedicalHistory(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MedicalHistory medicalHistory)?  createMedicalHistory,TResult? Function( String id)?  getMedicalHistoryById,TResult? Function( String healthId)?  getMedicalHistoryByHealthId,TResult? Function( int page,  int limit)?  getAllMedicalHistories,TResult? Function( String id,  MedicalHistory medicalHistory)?  updateMedicalHistory,TResult? Function( String id)?  deleteMedicalHistory,}) {final _that = this;
switch (_that) {
case _CreateMedicalHistory() when createMedicalHistory != null:
return createMedicalHistory(_that.medicalHistory);case _GetMedicalHistoryById() when getMedicalHistoryById != null:
return getMedicalHistoryById(_that.id);case _GetMedicalHistoryByHealthId() when getMedicalHistoryByHealthId != null:
return getMedicalHistoryByHealthId(_that.healthId);case _GetAllMedicalHistories() when getAllMedicalHistories != null:
return getAllMedicalHistories(_that.page,_that.limit);case _UpdateMedicalHistory() when updateMedicalHistory != null:
return updateMedicalHistory(_that.id,_that.medicalHistory);case _DeleteMedicalHistory() when deleteMedicalHistory != null:
return deleteMedicalHistory(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CreateMedicalHistory implements MedicalHistoryEvent {
  const _CreateMedicalHistory(this.medicalHistory);
  

 final  MedicalHistory medicalHistory;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMedicalHistoryCopyWith<_CreateMedicalHistory> get copyWith => __$CreateMedicalHistoryCopyWithImpl<_CreateMedicalHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMedicalHistory&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory));
}


@override
int get hashCode => Object.hash(runtimeType,medicalHistory);

@override
String toString() {
  return 'MedicalHistoryEvent.createMedicalHistory(medicalHistory: $medicalHistory)';
}


}

/// @nodoc
abstract mixin class _$CreateMedicalHistoryCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$CreateMedicalHistoryCopyWith(_CreateMedicalHistory value, $Res Function(_CreateMedicalHistory) _then) = __$CreateMedicalHistoryCopyWithImpl;
@useResult
$Res call({
 MedicalHistory medicalHistory
});


$MedicalHistoryCopyWith<$Res> get medicalHistory;

}
/// @nodoc
class __$CreateMedicalHistoryCopyWithImpl<$Res>
    implements _$CreateMedicalHistoryCopyWith<$Res> {
  __$CreateMedicalHistoryCopyWithImpl(this._self, this._then);

  final _CreateMedicalHistory _self;
  final $Res Function(_CreateMedicalHistory) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? medicalHistory = null,}) {
  return _then(_CreateMedicalHistory(
null == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as MedicalHistory,
  ));
}

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicalHistoryCopyWith<$Res> get medicalHistory {
  
  return $MedicalHistoryCopyWith<$Res>(_self.medicalHistory, (value) {
    return _then(_self.copyWith(medicalHistory: value));
  });
}
}

/// @nodoc


class _GetMedicalHistoryById implements MedicalHistoryEvent {
  const _GetMedicalHistoryById(this.id);
  

 final  String id;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMedicalHistoryByIdCopyWith<_GetMedicalHistoryById> get copyWith => __$GetMedicalHistoryByIdCopyWithImpl<_GetMedicalHistoryById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMedicalHistoryById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MedicalHistoryEvent.getMedicalHistoryById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetMedicalHistoryByIdCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$GetMedicalHistoryByIdCopyWith(_GetMedicalHistoryById value, $Res Function(_GetMedicalHistoryById) _then) = __$GetMedicalHistoryByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetMedicalHistoryByIdCopyWithImpl<$Res>
    implements _$GetMedicalHistoryByIdCopyWith<$Res> {
  __$GetMedicalHistoryByIdCopyWithImpl(this._self, this._then);

  final _GetMedicalHistoryById _self;
  final $Res Function(_GetMedicalHistoryById) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetMedicalHistoryById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetMedicalHistoryByHealthId implements MedicalHistoryEvent {
  const _GetMedicalHistoryByHealthId(this.healthId);
  

 final  String healthId;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMedicalHistoryByHealthIdCopyWith<_GetMedicalHistoryByHealthId> get copyWith => __$GetMedicalHistoryByHealthIdCopyWithImpl<_GetMedicalHistoryByHealthId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMedicalHistoryByHealthId&&(identical(other.healthId, healthId) || other.healthId == healthId));
}


@override
int get hashCode => Object.hash(runtimeType,healthId);

@override
String toString() {
  return 'MedicalHistoryEvent.getMedicalHistoryByHealthId(healthId: $healthId)';
}


}

/// @nodoc
abstract mixin class _$GetMedicalHistoryByHealthIdCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$GetMedicalHistoryByHealthIdCopyWith(_GetMedicalHistoryByHealthId value, $Res Function(_GetMedicalHistoryByHealthId) _then) = __$GetMedicalHistoryByHealthIdCopyWithImpl;
@useResult
$Res call({
 String healthId
});




}
/// @nodoc
class __$GetMedicalHistoryByHealthIdCopyWithImpl<$Res>
    implements _$GetMedicalHistoryByHealthIdCopyWith<$Res> {
  __$GetMedicalHistoryByHealthIdCopyWithImpl(this._self, this._then);

  final _GetMedicalHistoryByHealthId _self;
  final $Res Function(_GetMedicalHistoryByHealthId) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? healthId = null,}) {
  return _then(_GetMedicalHistoryByHealthId(
null == healthId ? _self.healthId : healthId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllMedicalHistories implements MedicalHistoryEvent {
  const _GetAllMedicalHistories({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllMedicalHistoriesCopyWith<_GetAllMedicalHistories> get copyWith => __$GetAllMedicalHistoriesCopyWithImpl<_GetAllMedicalHistories>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllMedicalHistories&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'MedicalHistoryEvent.getAllMedicalHistories(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllMedicalHistoriesCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$GetAllMedicalHistoriesCopyWith(_GetAllMedicalHistories value, $Res Function(_GetAllMedicalHistories) _then) = __$GetAllMedicalHistoriesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllMedicalHistoriesCopyWithImpl<$Res>
    implements _$GetAllMedicalHistoriesCopyWith<$Res> {
  __$GetAllMedicalHistoriesCopyWithImpl(this._self, this._then);

  final _GetAllMedicalHistories _self;
  final $Res Function(_GetAllMedicalHistories) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllMedicalHistories(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateMedicalHistory implements MedicalHistoryEvent {
  const _UpdateMedicalHistory(this.id, this.medicalHistory);
  

 final  String id;
 final  MedicalHistory medicalHistory;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMedicalHistoryCopyWith<_UpdateMedicalHistory> get copyWith => __$UpdateMedicalHistoryCopyWithImpl<_UpdateMedicalHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMedicalHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory));
}


@override
int get hashCode => Object.hash(runtimeType,id,medicalHistory);

@override
String toString() {
  return 'MedicalHistoryEvent.updateMedicalHistory(id: $id, medicalHistory: $medicalHistory)';
}


}

/// @nodoc
abstract mixin class _$UpdateMedicalHistoryCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$UpdateMedicalHistoryCopyWith(_UpdateMedicalHistory value, $Res Function(_UpdateMedicalHistory) _then) = __$UpdateMedicalHistoryCopyWithImpl;
@useResult
$Res call({
 String id, MedicalHistory medicalHistory
});


$MedicalHistoryCopyWith<$Res> get medicalHistory;

}
/// @nodoc
class __$UpdateMedicalHistoryCopyWithImpl<$Res>
    implements _$UpdateMedicalHistoryCopyWith<$Res> {
  __$UpdateMedicalHistoryCopyWithImpl(this._self, this._then);

  final _UpdateMedicalHistory _self;
  final $Res Function(_UpdateMedicalHistory) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? medicalHistory = null,}) {
  return _then(_UpdateMedicalHistory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as MedicalHistory,
  ));
}

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicalHistoryCopyWith<$Res> get medicalHistory {
  
  return $MedicalHistoryCopyWith<$Res>(_self.medicalHistory, (value) {
    return _then(_self.copyWith(medicalHistory: value));
  });
}
}

/// @nodoc


class _DeleteMedicalHistory implements MedicalHistoryEvent {
  const _DeleteMedicalHistory(this.id);
  

 final  String id;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMedicalHistoryCopyWith<_DeleteMedicalHistory> get copyWith => __$DeleteMedicalHistoryCopyWithImpl<_DeleteMedicalHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMedicalHistory&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MedicalHistoryEvent.deleteMedicalHistory(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteMedicalHistoryCopyWith<$Res> implements $MedicalHistoryEventCopyWith<$Res> {
  factory _$DeleteMedicalHistoryCopyWith(_DeleteMedicalHistory value, $Res Function(_DeleteMedicalHistory) _then) = __$DeleteMedicalHistoryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteMedicalHistoryCopyWithImpl<$Res>
    implements _$DeleteMedicalHistoryCopyWith<$Res> {
  __$DeleteMedicalHistoryCopyWithImpl(this._self, this._then);

  final _DeleteMedicalHistory _self;
  final $Res Function(_DeleteMedicalHistory) _then;

/// Create a copy of MedicalHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteMedicalHistory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MedicalHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicalHistoryState()';
}


}

/// @nodoc
class $MedicalHistoryStateCopyWith<$Res>  {
$MedicalHistoryStateCopyWith(MedicalHistoryState _, $Res Function(MedicalHistoryState) __);
}


/// Adds pattern-matching-related methods to [MedicalHistoryState].
extension MedicalHistoryStatePatterns on MedicalHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MedicalHistory_Initial value)?  initial,TResult Function( MedicalHistory_Loading value)?  loading,TResult Function( LoadedMedicalHistory value)?  loadedMedicalHistory,TResult Function( LoadedMedicalHistories value)?  loadedMedicalHistories,TResult Function( MedicalHistory_Error value)?  error,TResult Function( MedicalHistory_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MedicalHistory_Initial() when initial != null:
return initial(_that);case MedicalHistory_Loading() when loading != null:
return loading(_that);case LoadedMedicalHistory() when loadedMedicalHistory != null:
return loadedMedicalHistory(_that);case LoadedMedicalHistories() when loadedMedicalHistories != null:
return loadedMedicalHistories(_that);case MedicalHistory_Error() when error != null:
return error(_that);case MedicalHistory_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MedicalHistory_Initial value)  initial,required TResult Function( MedicalHistory_Loading value)  loading,required TResult Function( LoadedMedicalHistory value)  loadedMedicalHistory,required TResult Function( LoadedMedicalHistories value)  loadedMedicalHistories,required TResult Function( MedicalHistory_Error value)  error,required TResult Function( MedicalHistory_Success value)  success,}){
final _that = this;
switch (_that) {
case MedicalHistory_Initial():
return initial(_that);case MedicalHistory_Loading():
return loading(_that);case LoadedMedicalHistory():
return loadedMedicalHistory(_that);case LoadedMedicalHistories():
return loadedMedicalHistories(_that);case MedicalHistory_Error():
return error(_that);case MedicalHistory_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MedicalHistory_Initial value)?  initial,TResult? Function( MedicalHistory_Loading value)?  loading,TResult? Function( LoadedMedicalHistory value)?  loadedMedicalHistory,TResult? Function( LoadedMedicalHistories value)?  loadedMedicalHistories,TResult? Function( MedicalHistory_Error value)?  error,TResult? Function( MedicalHistory_Success value)?  success,}){
final _that = this;
switch (_that) {
case MedicalHistory_Initial() when initial != null:
return initial(_that);case MedicalHistory_Loading() when loading != null:
return loading(_that);case LoadedMedicalHistory() when loadedMedicalHistory != null:
return loadedMedicalHistory(_that);case LoadedMedicalHistories() when loadedMedicalHistories != null:
return loadedMedicalHistories(_that);case MedicalHistory_Error() when error != null:
return error(_that);case MedicalHistory_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MedicalHistory medicalHistory)?  loadedMedicalHistory,TResult Function( List<MedicalHistory> medicalHistories,  int currentPage,  int limit,  bool hasMore)?  loadedMedicalHistories,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MedicalHistory_Initial() when initial != null:
return initial();case MedicalHistory_Loading() when loading != null:
return loading();case LoadedMedicalHistory() when loadedMedicalHistory != null:
return loadedMedicalHistory(_that.medicalHistory);case LoadedMedicalHistories() when loadedMedicalHistories != null:
return loadedMedicalHistories(_that.medicalHistories,_that.currentPage,_that.limit,_that.hasMore);case MedicalHistory_Error() when error != null:
return error(_that.message);case MedicalHistory_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MedicalHistory medicalHistory)  loadedMedicalHistory,required TResult Function( List<MedicalHistory> medicalHistories,  int currentPage,  int limit,  bool hasMore)  loadedMedicalHistories,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case MedicalHistory_Initial():
return initial();case MedicalHistory_Loading():
return loading();case LoadedMedicalHistory():
return loadedMedicalHistory(_that.medicalHistory);case LoadedMedicalHistories():
return loadedMedicalHistories(_that.medicalHistories,_that.currentPage,_that.limit,_that.hasMore);case MedicalHistory_Error():
return error(_that.message);case MedicalHistory_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MedicalHistory medicalHistory)?  loadedMedicalHistory,TResult? Function( List<MedicalHistory> medicalHistories,  int currentPage,  int limit,  bool hasMore)?  loadedMedicalHistories,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case MedicalHistory_Initial() when initial != null:
return initial();case MedicalHistory_Loading() when loading != null:
return loading();case LoadedMedicalHistory() when loadedMedicalHistory != null:
return loadedMedicalHistory(_that.medicalHistory);case LoadedMedicalHistories() when loadedMedicalHistories != null:
return loadedMedicalHistories(_that.medicalHistories,_that.currentPage,_that.limit,_that.hasMore);case MedicalHistory_Error() when error != null:
return error(_that.message);case MedicalHistory_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MedicalHistory_Initial implements MedicalHistoryState {
  const MedicalHistory_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistory_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicalHistoryState.initial()';
}


}




/// @nodoc


class MedicalHistory_Loading implements MedicalHistoryState {
  const MedicalHistory_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistory_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicalHistoryState.loading()';
}


}




/// @nodoc


class LoadedMedicalHistory implements MedicalHistoryState {
  const LoadedMedicalHistory(this.medicalHistory);
  

 final  MedicalHistory medicalHistory;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMedicalHistoryCopyWith<LoadedMedicalHistory> get copyWith => _$LoadedMedicalHistoryCopyWithImpl<LoadedMedicalHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMedicalHistory&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory));
}


@override
int get hashCode => Object.hash(runtimeType,medicalHistory);

@override
String toString() {
  return 'MedicalHistoryState.loadedMedicalHistory(medicalHistory: $medicalHistory)';
}


}

/// @nodoc
abstract mixin class $LoadedMedicalHistoryCopyWith<$Res> implements $MedicalHistoryStateCopyWith<$Res> {
  factory $LoadedMedicalHistoryCopyWith(LoadedMedicalHistory value, $Res Function(LoadedMedicalHistory) _then) = _$LoadedMedicalHistoryCopyWithImpl;
@useResult
$Res call({
 MedicalHistory medicalHistory
});


$MedicalHistoryCopyWith<$Res> get medicalHistory;

}
/// @nodoc
class _$LoadedMedicalHistoryCopyWithImpl<$Res>
    implements $LoadedMedicalHistoryCopyWith<$Res> {
  _$LoadedMedicalHistoryCopyWithImpl(this._self, this._then);

  final LoadedMedicalHistory _self;
  final $Res Function(LoadedMedicalHistory) _then;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? medicalHistory = null,}) {
  return _then(LoadedMedicalHistory(
null == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as MedicalHistory,
  ));
}

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicalHistoryCopyWith<$Res> get medicalHistory {
  
  return $MedicalHistoryCopyWith<$Res>(_self.medicalHistory, (value) {
    return _then(_self.copyWith(medicalHistory: value));
  });
}
}

/// @nodoc


class LoadedMedicalHistories implements MedicalHistoryState {
  const LoadedMedicalHistories(final  List<MedicalHistory> medicalHistories, this.currentPage, this.limit, this.hasMore): _medicalHistories = medicalHistories;
  

 final  List<MedicalHistory> _medicalHistories;
 List<MedicalHistory> get medicalHistories {
  if (_medicalHistories is EqualUnmodifiableListView) return _medicalHistories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_medicalHistories);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMedicalHistoriesCopyWith<LoadedMedicalHistories> get copyWith => _$LoadedMedicalHistoriesCopyWithImpl<LoadedMedicalHistories>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMedicalHistories&&const DeepCollectionEquality().equals(other._medicalHistories, _medicalHistories)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_medicalHistories),currentPage,limit,hasMore);

@override
String toString() {
  return 'MedicalHistoryState.loadedMedicalHistories(medicalHistories: $medicalHistories, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedMedicalHistoriesCopyWith<$Res> implements $MedicalHistoryStateCopyWith<$Res> {
  factory $LoadedMedicalHistoriesCopyWith(LoadedMedicalHistories value, $Res Function(LoadedMedicalHistories) _then) = _$LoadedMedicalHistoriesCopyWithImpl;
@useResult
$Res call({
 List<MedicalHistory> medicalHistories, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedMedicalHistoriesCopyWithImpl<$Res>
    implements $LoadedMedicalHistoriesCopyWith<$Res> {
  _$LoadedMedicalHistoriesCopyWithImpl(this._self, this._then);

  final LoadedMedicalHistories _self;
  final $Res Function(LoadedMedicalHistories) _then;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? medicalHistories = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedMedicalHistories(
null == medicalHistories ? _self._medicalHistories : medicalHistories // ignore: cast_nullable_to_non_nullable
as List<MedicalHistory>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class MedicalHistory_Error implements MedicalHistoryState {
  const MedicalHistory_Error(this.message);
  

 final  String message;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalHistory_ErrorCopyWith<MedicalHistory_Error> get copyWith => _$MedicalHistory_ErrorCopyWithImpl<MedicalHistory_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistory_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MedicalHistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MedicalHistory_ErrorCopyWith<$Res> implements $MedicalHistoryStateCopyWith<$Res> {
  factory $MedicalHistory_ErrorCopyWith(MedicalHistory_Error value, $Res Function(MedicalHistory_Error) _then) = _$MedicalHistory_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MedicalHistory_ErrorCopyWithImpl<$Res>
    implements $MedicalHistory_ErrorCopyWith<$Res> {
  _$MedicalHistory_ErrorCopyWithImpl(this._self, this._then);

  final MedicalHistory_Error _self;
  final $Res Function(MedicalHistory_Error) _then;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MedicalHistory_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MedicalHistory_Success implements MedicalHistoryState {
  const MedicalHistory_Success(this.message);
  

 final  String message;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalHistory_SuccessCopyWith<MedicalHistory_Success> get copyWith => _$MedicalHistory_SuccessCopyWithImpl<MedicalHistory_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistory_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MedicalHistoryState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $MedicalHistory_SuccessCopyWith<$Res> implements $MedicalHistoryStateCopyWith<$Res> {
  factory $MedicalHistory_SuccessCopyWith(MedicalHistory_Success value, $Res Function(MedicalHistory_Success) _then) = _$MedicalHistory_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MedicalHistory_SuccessCopyWithImpl<$Res>
    implements $MedicalHistory_SuccessCopyWith<$Res> {
  _$MedicalHistory_SuccessCopyWithImpl(this._self, this._then);

  final MedicalHistory_Success _self;
  final $Res Function(MedicalHistory_Success) _then;

/// Create a copy of MedicalHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MedicalHistory_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
