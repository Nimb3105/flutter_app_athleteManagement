// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainingExerciseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExerciseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingExerciseEvent()';
}


}

/// @nodoc
class $TrainingExerciseEventCopyWith<$Res>  {
$TrainingExerciseEventCopyWith(TrainingExerciseEvent _, $Res Function(TrainingExerciseEvent) __);
}


/// Adds pattern-matching-related methods to [TrainingExerciseEvent].
extension TrainingExerciseEventPatterns on TrainingExerciseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateTrainingExercise value)?  createTrainingExercise,TResult Function( GetTrainingExerciseById value)?  getTrainingExerciseById,TResult Function( GetAllTrainingExercises value)?  getAllTrainingExercises,TResult Function( UpdateTrainingExercise value)?  updateTrainingExercise,TResult Function( DeleteTrainingExercise value)?  deleteTrainingExercise,TResult Function( GetAllTrainingExercisesByScheduleId value)?  getAllTrainingExercisesByScheduleId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateTrainingExercise() when createTrainingExercise != null:
return createTrainingExercise(_that);case GetTrainingExerciseById() when getTrainingExerciseById != null:
return getTrainingExerciseById(_that);case GetAllTrainingExercises() when getAllTrainingExercises != null:
return getAllTrainingExercises(_that);case UpdateTrainingExercise() when updateTrainingExercise != null:
return updateTrainingExercise(_that);case DeleteTrainingExercise() when deleteTrainingExercise != null:
return deleteTrainingExercise(_that);case GetAllTrainingExercisesByScheduleId() when getAllTrainingExercisesByScheduleId != null:
return getAllTrainingExercisesByScheduleId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateTrainingExercise value)  createTrainingExercise,required TResult Function( GetTrainingExerciseById value)  getTrainingExerciseById,required TResult Function( GetAllTrainingExercises value)  getAllTrainingExercises,required TResult Function( UpdateTrainingExercise value)  updateTrainingExercise,required TResult Function( DeleteTrainingExercise value)  deleteTrainingExercise,required TResult Function( GetAllTrainingExercisesByScheduleId value)  getAllTrainingExercisesByScheduleId,}){
final _that = this;
switch (_that) {
case CreateTrainingExercise():
return createTrainingExercise(_that);case GetTrainingExerciseById():
return getTrainingExerciseById(_that);case GetAllTrainingExercises():
return getAllTrainingExercises(_that);case UpdateTrainingExercise():
return updateTrainingExercise(_that);case DeleteTrainingExercise():
return deleteTrainingExercise(_that);case GetAllTrainingExercisesByScheduleId():
return getAllTrainingExercisesByScheduleId(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateTrainingExercise value)?  createTrainingExercise,TResult? Function( GetTrainingExerciseById value)?  getTrainingExerciseById,TResult? Function( GetAllTrainingExercises value)?  getAllTrainingExercises,TResult? Function( UpdateTrainingExercise value)?  updateTrainingExercise,TResult? Function( DeleteTrainingExercise value)?  deleteTrainingExercise,TResult? Function( GetAllTrainingExercisesByScheduleId value)?  getAllTrainingExercisesByScheduleId,}){
final _that = this;
switch (_that) {
case CreateTrainingExercise() when createTrainingExercise != null:
return createTrainingExercise(_that);case GetTrainingExerciseById() when getTrainingExerciseById != null:
return getTrainingExerciseById(_that);case GetAllTrainingExercises() when getAllTrainingExercises != null:
return getAllTrainingExercises(_that);case UpdateTrainingExercise() when updateTrainingExercise != null:
return updateTrainingExercise(_that);case DeleteTrainingExercise() when deleteTrainingExercise != null:
return deleteTrainingExercise(_that);case GetAllTrainingExercisesByScheduleId() when getAllTrainingExercisesByScheduleId != null:
return getAllTrainingExercisesByScheduleId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TrainingExercise trainingExercise)?  createTrainingExercise,TResult Function( String id)?  getTrainingExerciseById,TResult Function()?  getAllTrainingExercises,TResult Function( TrainingExercise trainingExercise)?  updateTrainingExercise,TResult Function( String id)?  deleteTrainingExercise,TResult Function( String scheduleId)?  getAllTrainingExercisesByScheduleId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateTrainingExercise() when createTrainingExercise != null:
return createTrainingExercise(_that.trainingExercise);case GetTrainingExerciseById() when getTrainingExerciseById != null:
return getTrainingExerciseById(_that.id);case GetAllTrainingExercises() when getAllTrainingExercises != null:
return getAllTrainingExercises();case UpdateTrainingExercise() when updateTrainingExercise != null:
return updateTrainingExercise(_that.trainingExercise);case DeleteTrainingExercise() when deleteTrainingExercise != null:
return deleteTrainingExercise(_that.id);case GetAllTrainingExercisesByScheduleId() when getAllTrainingExercisesByScheduleId != null:
return getAllTrainingExercisesByScheduleId(_that.scheduleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TrainingExercise trainingExercise)  createTrainingExercise,required TResult Function( String id)  getTrainingExerciseById,required TResult Function()  getAllTrainingExercises,required TResult Function( TrainingExercise trainingExercise)  updateTrainingExercise,required TResult Function( String id)  deleteTrainingExercise,required TResult Function( String scheduleId)  getAllTrainingExercisesByScheduleId,}) {final _that = this;
switch (_that) {
case CreateTrainingExercise():
return createTrainingExercise(_that.trainingExercise);case GetTrainingExerciseById():
return getTrainingExerciseById(_that.id);case GetAllTrainingExercises():
return getAllTrainingExercises();case UpdateTrainingExercise():
return updateTrainingExercise(_that.trainingExercise);case DeleteTrainingExercise():
return deleteTrainingExercise(_that.id);case GetAllTrainingExercisesByScheduleId():
return getAllTrainingExercisesByScheduleId(_that.scheduleId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TrainingExercise trainingExercise)?  createTrainingExercise,TResult? Function( String id)?  getTrainingExerciseById,TResult? Function()?  getAllTrainingExercises,TResult? Function( TrainingExercise trainingExercise)?  updateTrainingExercise,TResult? Function( String id)?  deleteTrainingExercise,TResult? Function( String scheduleId)?  getAllTrainingExercisesByScheduleId,}) {final _that = this;
switch (_that) {
case CreateTrainingExercise() when createTrainingExercise != null:
return createTrainingExercise(_that.trainingExercise);case GetTrainingExerciseById() when getTrainingExerciseById != null:
return getTrainingExerciseById(_that.id);case GetAllTrainingExercises() when getAllTrainingExercises != null:
return getAllTrainingExercises();case UpdateTrainingExercise() when updateTrainingExercise != null:
return updateTrainingExercise(_that.trainingExercise);case DeleteTrainingExercise() when deleteTrainingExercise != null:
return deleteTrainingExercise(_that.id);case GetAllTrainingExercisesByScheduleId() when getAllTrainingExercisesByScheduleId != null:
return getAllTrainingExercisesByScheduleId(_that.scheduleId);case _:
  return null;

}
}

}

/// @nodoc


class CreateTrainingExercise implements TrainingExerciseEvent {
  const CreateTrainingExercise(this.trainingExercise);
  

 final  TrainingExercise trainingExercise;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTrainingExerciseCopyWith<CreateTrainingExercise> get copyWith => _$CreateTrainingExerciseCopyWithImpl<CreateTrainingExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTrainingExercise&&(identical(other.trainingExercise, trainingExercise) || other.trainingExercise == trainingExercise));
}


@override
int get hashCode => Object.hash(runtimeType,trainingExercise);

@override
String toString() {
  return 'TrainingExerciseEvent.createTrainingExercise(trainingExercise: $trainingExercise)';
}


}

/// @nodoc
abstract mixin class $CreateTrainingExerciseCopyWith<$Res> implements $TrainingExerciseEventCopyWith<$Res> {
  factory $CreateTrainingExerciseCopyWith(CreateTrainingExercise value, $Res Function(CreateTrainingExercise) _then) = _$CreateTrainingExerciseCopyWithImpl;
@useResult
$Res call({
 TrainingExercise trainingExercise
});


$TrainingExerciseCopyWith<$Res> get trainingExercise;

}
/// @nodoc
class _$CreateTrainingExerciseCopyWithImpl<$Res>
    implements $CreateTrainingExerciseCopyWith<$Res> {
  _$CreateTrainingExerciseCopyWithImpl(this._self, this._then);

  final CreateTrainingExercise _self;
  final $Res Function(CreateTrainingExercise) _then;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingExercise = null,}) {
  return _then(CreateTrainingExercise(
null == trainingExercise ? _self.trainingExercise : trainingExercise // ignore: cast_nullable_to_non_nullable
as TrainingExercise,
  ));
}

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingExerciseCopyWith<$Res> get trainingExercise {
  
  return $TrainingExerciseCopyWith<$Res>(_self.trainingExercise, (value) {
    return _then(_self.copyWith(trainingExercise: value));
  });
}
}

/// @nodoc


class GetTrainingExerciseById implements TrainingExerciseEvent {
  const GetTrainingExerciseById(this.id);
  

 final  String id;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTrainingExerciseByIdCopyWith<GetTrainingExerciseById> get copyWith => _$GetTrainingExerciseByIdCopyWithImpl<GetTrainingExerciseById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTrainingExerciseById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingExerciseEvent.getTrainingExerciseById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTrainingExerciseByIdCopyWith<$Res> implements $TrainingExerciseEventCopyWith<$Res> {
  factory $GetTrainingExerciseByIdCopyWith(GetTrainingExerciseById value, $Res Function(GetTrainingExerciseById) _then) = _$GetTrainingExerciseByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTrainingExerciseByIdCopyWithImpl<$Res>
    implements $GetTrainingExerciseByIdCopyWith<$Res> {
  _$GetTrainingExerciseByIdCopyWithImpl(this._self, this._then);

  final GetTrainingExerciseById _self;
  final $Res Function(GetTrainingExerciseById) _then;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTrainingExerciseById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingExercises implements TrainingExerciseEvent {
  const GetAllTrainingExercises();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingExercises);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingExerciseEvent.getAllTrainingExercises()';
}


}




/// @nodoc


class UpdateTrainingExercise implements TrainingExerciseEvent {
  const UpdateTrainingExercise(this.trainingExercise);
  

 final  TrainingExercise trainingExercise;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTrainingExerciseCopyWith<UpdateTrainingExercise> get copyWith => _$UpdateTrainingExerciseCopyWithImpl<UpdateTrainingExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTrainingExercise&&(identical(other.trainingExercise, trainingExercise) || other.trainingExercise == trainingExercise));
}


@override
int get hashCode => Object.hash(runtimeType,trainingExercise);

@override
String toString() {
  return 'TrainingExerciseEvent.updateTrainingExercise(trainingExercise: $trainingExercise)';
}


}

/// @nodoc
abstract mixin class $UpdateTrainingExerciseCopyWith<$Res> implements $TrainingExerciseEventCopyWith<$Res> {
  factory $UpdateTrainingExerciseCopyWith(UpdateTrainingExercise value, $Res Function(UpdateTrainingExercise) _then) = _$UpdateTrainingExerciseCopyWithImpl;
@useResult
$Res call({
 TrainingExercise trainingExercise
});


$TrainingExerciseCopyWith<$Res> get trainingExercise;

}
/// @nodoc
class _$UpdateTrainingExerciseCopyWithImpl<$Res>
    implements $UpdateTrainingExerciseCopyWith<$Res> {
  _$UpdateTrainingExerciseCopyWithImpl(this._self, this._then);

  final UpdateTrainingExercise _self;
  final $Res Function(UpdateTrainingExercise) _then;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingExercise = null,}) {
  return _then(UpdateTrainingExercise(
null == trainingExercise ? _self.trainingExercise : trainingExercise // ignore: cast_nullable_to_non_nullable
as TrainingExercise,
  ));
}

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingExerciseCopyWith<$Res> get trainingExercise {
  
  return $TrainingExerciseCopyWith<$Res>(_self.trainingExercise, (value) {
    return _then(_self.copyWith(trainingExercise: value));
  });
}
}

/// @nodoc


class DeleteTrainingExercise implements TrainingExerciseEvent {
  const DeleteTrainingExercise(this.id);
  

 final  String id;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTrainingExerciseCopyWith<DeleteTrainingExercise> get copyWith => _$DeleteTrainingExerciseCopyWithImpl<DeleteTrainingExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTrainingExercise&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingExerciseEvent.deleteTrainingExercise(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTrainingExerciseCopyWith<$Res> implements $TrainingExerciseEventCopyWith<$Res> {
  factory $DeleteTrainingExerciseCopyWith(DeleteTrainingExercise value, $Res Function(DeleteTrainingExercise) _then) = _$DeleteTrainingExerciseCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTrainingExerciseCopyWithImpl<$Res>
    implements $DeleteTrainingExerciseCopyWith<$Res> {
  _$DeleteTrainingExerciseCopyWithImpl(this._self, this._then);

  final DeleteTrainingExercise _self;
  final $Res Function(DeleteTrainingExercise) _then;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteTrainingExercise(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingExercisesByScheduleId implements TrainingExerciseEvent {
  const GetAllTrainingExercisesByScheduleId(this.scheduleId);
  

 final  String scheduleId;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllTrainingExercisesByScheduleIdCopyWith<GetAllTrainingExercisesByScheduleId> get copyWith => _$GetAllTrainingExercisesByScheduleIdCopyWithImpl<GetAllTrainingExercisesByScheduleId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingExercisesByScheduleId&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleId);

@override
String toString() {
  return 'TrainingExerciseEvent.getAllTrainingExercisesByScheduleId(scheduleId: $scheduleId)';
}


}

/// @nodoc
abstract mixin class $GetAllTrainingExercisesByScheduleIdCopyWith<$Res> implements $TrainingExerciseEventCopyWith<$Res> {
  factory $GetAllTrainingExercisesByScheduleIdCopyWith(GetAllTrainingExercisesByScheduleId value, $Res Function(GetAllTrainingExercisesByScheduleId) _then) = _$GetAllTrainingExercisesByScheduleIdCopyWithImpl;
@useResult
$Res call({
 String scheduleId
});




}
/// @nodoc
class _$GetAllTrainingExercisesByScheduleIdCopyWithImpl<$Res>
    implements $GetAllTrainingExercisesByScheduleIdCopyWith<$Res> {
  _$GetAllTrainingExercisesByScheduleIdCopyWithImpl(this._self, this._then);

  final GetAllTrainingExercisesByScheduleId _self;
  final $Res Function(GetAllTrainingExercisesByScheduleId) _then;

/// Create a copy of TrainingExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scheduleId = null,}) {
  return _then(GetAllTrainingExercisesByScheduleId(
null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TrainingExerciseState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExerciseState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingExerciseState()';
}


}

/// @nodoc
class $TrainingExerciseStateCopyWith<$Res>  {
$TrainingExerciseStateCopyWith(TrainingExerciseState _, $Res Function(TrainingExerciseState) __);
}


/// Adds pattern-matching-related methods to [TrainingExerciseState].
extension TrainingExerciseStatePatterns on TrainingExerciseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TrainingExercise_Initial value)?  initial,TResult Function( TrainingExercise_Loading value)?  loading,TResult Function( LoadedTrainingExercise value)?  loadedTrainingExercise,TResult Function( LoadedTrainingExercises value)?  loadedTrainingExercises,TResult Function( LoadedTrainingExercisesWithExercises value)?  loadedTrainingExercisesWithExercises,TResult Function( TrainingExercise_Error value)?  error,TResult Function( TrainingExercise_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TrainingExercise_Initial() when initial != null:
return initial(_that);case TrainingExercise_Loading() when loading != null:
return loading(_that);case LoadedTrainingExercise() when loadedTrainingExercise != null:
return loadedTrainingExercise(_that);case LoadedTrainingExercises() when loadedTrainingExercises != null:
return loadedTrainingExercises(_that);case LoadedTrainingExercisesWithExercises() when loadedTrainingExercisesWithExercises != null:
return loadedTrainingExercisesWithExercises(_that);case TrainingExercise_Error() when error != null:
return error(_that);case TrainingExercise_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TrainingExercise_Initial value)  initial,required TResult Function( TrainingExercise_Loading value)  loading,required TResult Function( LoadedTrainingExercise value)  loadedTrainingExercise,required TResult Function( LoadedTrainingExercises value)  loadedTrainingExercises,required TResult Function( LoadedTrainingExercisesWithExercises value)  loadedTrainingExercisesWithExercises,required TResult Function( TrainingExercise_Error value)  error,required TResult Function( TrainingExercise_Success value)  success,}){
final _that = this;
switch (_that) {
case TrainingExercise_Initial():
return initial(_that);case TrainingExercise_Loading():
return loading(_that);case LoadedTrainingExercise():
return loadedTrainingExercise(_that);case LoadedTrainingExercises():
return loadedTrainingExercises(_that);case LoadedTrainingExercisesWithExercises():
return loadedTrainingExercisesWithExercises(_that);case TrainingExercise_Error():
return error(_that);case TrainingExercise_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TrainingExercise_Initial value)?  initial,TResult? Function( TrainingExercise_Loading value)?  loading,TResult? Function( LoadedTrainingExercise value)?  loadedTrainingExercise,TResult? Function( LoadedTrainingExercises value)?  loadedTrainingExercises,TResult? Function( LoadedTrainingExercisesWithExercises value)?  loadedTrainingExercisesWithExercises,TResult? Function( TrainingExercise_Error value)?  error,TResult? Function( TrainingExercise_Success value)?  success,}){
final _that = this;
switch (_that) {
case TrainingExercise_Initial() when initial != null:
return initial(_that);case TrainingExercise_Loading() when loading != null:
return loading(_that);case LoadedTrainingExercise() when loadedTrainingExercise != null:
return loadedTrainingExercise(_that);case LoadedTrainingExercises() when loadedTrainingExercises != null:
return loadedTrainingExercises(_that);case LoadedTrainingExercisesWithExercises() when loadedTrainingExercisesWithExercises != null:
return loadedTrainingExercisesWithExercises(_that);case TrainingExercise_Error() when error != null:
return error(_that);case TrainingExercise_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TrainingExercise trainingExercise)?  loadedTrainingExercise,TResult Function( List<TrainingExercise> trainingExercises)?  loadedTrainingExercises,TResult Function( List<TrainingExercise> trainingExercises,  Map<String, TrainingSchedule>? traininngSchedules,  Map<String, Exercise>? exercises)?  loadedTrainingExercisesWithExercises,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TrainingExercise_Initial() when initial != null:
return initial();case TrainingExercise_Loading() when loading != null:
return loading();case LoadedTrainingExercise() when loadedTrainingExercise != null:
return loadedTrainingExercise(_that.trainingExercise);case LoadedTrainingExercises() when loadedTrainingExercises != null:
return loadedTrainingExercises(_that.trainingExercises);case LoadedTrainingExercisesWithExercises() when loadedTrainingExercisesWithExercises != null:
return loadedTrainingExercisesWithExercises(_that.trainingExercises,_that.traininngSchedules,_that.exercises);case TrainingExercise_Error() when error != null:
return error(_that.message);case TrainingExercise_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TrainingExercise trainingExercise)  loadedTrainingExercise,required TResult Function( List<TrainingExercise> trainingExercises)  loadedTrainingExercises,required TResult Function( List<TrainingExercise> trainingExercises,  Map<String, TrainingSchedule>? traininngSchedules,  Map<String, Exercise>? exercises)  loadedTrainingExercisesWithExercises,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case TrainingExercise_Initial():
return initial();case TrainingExercise_Loading():
return loading();case LoadedTrainingExercise():
return loadedTrainingExercise(_that.trainingExercise);case LoadedTrainingExercises():
return loadedTrainingExercises(_that.trainingExercises);case LoadedTrainingExercisesWithExercises():
return loadedTrainingExercisesWithExercises(_that.trainingExercises,_that.traininngSchedules,_that.exercises);case TrainingExercise_Error():
return error(_that.message);case TrainingExercise_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TrainingExercise trainingExercise)?  loadedTrainingExercise,TResult? Function( List<TrainingExercise> trainingExercises)?  loadedTrainingExercises,TResult? Function( List<TrainingExercise> trainingExercises,  Map<String, TrainingSchedule>? traininngSchedules,  Map<String, Exercise>? exercises)?  loadedTrainingExercisesWithExercises,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case TrainingExercise_Initial() when initial != null:
return initial();case TrainingExercise_Loading() when loading != null:
return loading();case LoadedTrainingExercise() when loadedTrainingExercise != null:
return loadedTrainingExercise(_that.trainingExercise);case LoadedTrainingExercises() when loadedTrainingExercises != null:
return loadedTrainingExercises(_that.trainingExercises);case LoadedTrainingExercisesWithExercises() when loadedTrainingExercisesWithExercises != null:
return loadedTrainingExercisesWithExercises(_that.trainingExercises,_that.traininngSchedules,_that.exercises);case TrainingExercise_Error() when error != null:
return error(_that.message);case TrainingExercise_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TrainingExercise_Initial implements TrainingExerciseState {
  const TrainingExercise_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingExerciseState.initial()';
}


}




/// @nodoc


class TrainingExercise_Loading implements TrainingExerciseState {
  const TrainingExercise_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingExerciseState.loading()';
}


}




/// @nodoc


class LoadedTrainingExercise implements TrainingExerciseState {
  const LoadedTrainingExercise(this.trainingExercise);
  

 final  TrainingExercise trainingExercise;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingExerciseCopyWith<LoadedTrainingExercise> get copyWith => _$LoadedTrainingExerciseCopyWithImpl<LoadedTrainingExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingExercise&&(identical(other.trainingExercise, trainingExercise) || other.trainingExercise == trainingExercise));
}


@override
int get hashCode => Object.hash(runtimeType,trainingExercise);

@override
String toString() {
  return 'TrainingExerciseState.loadedTrainingExercise(trainingExercise: $trainingExercise)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingExerciseCopyWith<$Res> implements $TrainingExerciseStateCopyWith<$Res> {
  factory $LoadedTrainingExerciseCopyWith(LoadedTrainingExercise value, $Res Function(LoadedTrainingExercise) _then) = _$LoadedTrainingExerciseCopyWithImpl;
@useResult
$Res call({
 TrainingExercise trainingExercise
});


$TrainingExerciseCopyWith<$Res> get trainingExercise;

}
/// @nodoc
class _$LoadedTrainingExerciseCopyWithImpl<$Res>
    implements $LoadedTrainingExerciseCopyWith<$Res> {
  _$LoadedTrainingExerciseCopyWithImpl(this._self, this._then);

  final LoadedTrainingExercise _self;
  final $Res Function(LoadedTrainingExercise) _then;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingExercise = null,}) {
  return _then(LoadedTrainingExercise(
null == trainingExercise ? _self.trainingExercise : trainingExercise // ignore: cast_nullable_to_non_nullable
as TrainingExercise,
  ));
}

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingExerciseCopyWith<$Res> get trainingExercise {
  
  return $TrainingExerciseCopyWith<$Res>(_self.trainingExercise, (value) {
    return _then(_self.copyWith(trainingExercise: value));
  });
}
}

/// @nodoc


class LoadedTrainingExercises implements TrainingExerciseState {
  const LoadedTrainingExercises(final  List<TrainingExercise> trainingExercises): _trainingExercises = trainingExercises;
  

 final  List<TrainingExercise> _trainingExercises;
 List<TrainingExercise> get trainingExercises {
  if (_trainingExercises is EqualUnmodifiableListView) return _trainingExercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingExercises);
}


/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingExercisesCopyWith<LoadedTrainingExercises> get copyWith => _$LoadedTrainingExercisesCopyWithImpl<LoadedTrainingExercises>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingExercises&&const DeepCollectionEquality().equals(other._trainingExercises, _trainingExercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainingExercises));

@override
String toString() {
  return 'TrainingExerciseState.loadedTrainingExercises(trainingExercises: $trainingExercises)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingExercisesCopyWith<$Res> implements $TrainingExerciseStateCopyWith<$Res> {
  factory $LoadedTrainingExercisesCopyWith(LoadedTrainingExercises value, $Res Function(LoadedTrainingExercises) _then) = _$LoadedTrainingExercisesCopyWithImpl;
@useResult
$Res call({
 List<TrainingExercise> trainingExercises
});




}
/// @nodoc
class _$LoadedTrainingExercisesCopyWithImpl<$Res>
    implements $LoadedTrainingExercisesCopyWith<$Res> {
  _$LoadedTrainingExercisesCopyWithImpl(this._self, this._then);

  final LoadedTrainingExercises _self;
  final $Res Function(LoadedTrainingExercises) _then;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingExercises = null,}) {
  return _then(LoadedTrainingExercises(
null == trainingExercises ? _self._trainingExercises : trainingExercises // ignore: cast_nullable_to_non_nullable
as List<TrainingExercise>,
  ));
}


}

/// @nodoc


class LoadedTrainingExercisesWithExercises implements TrainingExerciseState {
  const LoadedTrainingExercisesWithExercises(final  List<TrainingExercise> trainingExercises, {final  Map<String, TrainingSchedule>? traininngSchedules, final  Map<String, Exercise>? exercises}): _trainingExercises = trainingExercises,_traininngSchedules = traininngSchedules,_exercises = exercises;
  

 final  List<TrainingExercise> _trainingExercises;
 List<TrainingExercise> get trainingExercises {
  if (_trainingExercises is EqualUnmodifiableListView) return _trainingExercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingExercises);
}

 final  Map<String, TrainingSchedule>? _traininngSchedules;
 Map<String, TrainingSchedule>? get traininngSchedules {
  final value = _traininngSchedules;
  if (value == null) return null;
  if (_traininngSchedules is EqualUnmodifiableMapView) return _traininngSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Exercise>? _exercises;
 Map<String, Exercise>? get exercises {
  final value = _exercises;
  if (value == null) return null;
  if (_exercises is EqualUnmodifiableMapView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingExercisesWithExercisesCopyWith<LoadedTrainingExercisesWithExercises> get copyWith => _$LoadedTrainingExercisesWithExercisesCopyWithImpl<LoadedTrainingExercisesWithExercises>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingExercisesWithExercises&&const DeepCollectionEquality().equals(other._trainingExercises, _trainingExercises)&&const DeepCollectionEquality().equals(other._traininngSchedules, _traininngSchedules)&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainingExercises),const DeepCollectionEquality().hash(_traininngSchedules),const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'TrainingExerciseState.loadedTrainingExercisesWithExercises(trainingExercises: $trainingExercises, traininngSchedules: $traininngSchedules, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingExercisesWithExercisesCopyWith<$Res> implements $TrainingExerciseStateCopyWith<$Res> {
  factory $LoadedTrainingExercisesWithExercisesCopyWith(LoadedTrainingExercisesWithExercises value, $Res Function(LoadedTrainingExercisesWithExercises) _then) = _$LoadedTrainingExercisesWithExercisesCopyWithImpl;
@useResult
$Res call({
 List<TrainingExercise> trainingExercises, Map<String, TrainingSchedule>? traininngSchedules, Map<String, Exercise>? exercises
});




}
/// @nodoc
class _$LoadedTrainingExercisesWithExercisesCopyWithImpl<$Res>
    implements $LoadedTrainingExercisesWithExercisesCopyWith<$Res> {
  _$LoadedTrainingExercisesWithExercisesCopyWithImpl(this._self, this._then);

  final LoadedTrainingExercisesWithExercises _self;
  final $Res Function(LoadedTrainingExercisesWithExercises) _then;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingExercises = null,Object? traininngSchedules = freezed,Object? exercises = freezed,}) {
  return _then(LoadedTrainingExercisesWithExercises(
null == trainingExercises ? _self._trainingExercises : trainingExercises // ignore: cast_nullable_to_non_nullable
as List<TrainingExercise>,traininngSchedules: freezed == traininngSchedules ? _self._traininngSchedules : traininngSchedules // ignore: cast_nullable_to_non_nullable
as Map<String, TrainingSchedule>?,exercises: freezed == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as Map<String, Exercise>?,
  ));
}


}

/// @nodoc


class TrainingExercise_Error implements TrainingExerciseState {
  const TrainingExercise_Error(this.message);
  

 final  String message;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingExercise_ErrorCopyWith<TrainingExercise_Error> get copyWith => _$TrainingExercise_ErrorCopyWithImpl<TrainingExercise_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingExerciseState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingExercise_ErrorCopyWith<$Res> implements $TrainingExerciseStateCopyWith<$Res> {
  factory $TrainingExercise_ErrorCopyWith(TrainingExercise_Error value, $Res Function(TrainingExercise_Error) _then) = _$TrainingExercise_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingExercise_ErrorCopyWithImpl<$Res>
    implements $TrainingExercise_ErrorCopyWith<$Res> {
  _$TrainingExercise_ErrorCopyWithImpl(this._self, this._then);

  final TrainingExercise_Error _self;
  final $Res Function(TrainingExercise_Error) _then;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingExercise_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TrainingExercise_Success implements TrainingExerciseState {
  const TrainingExercise_Success(this.message);
  

 final  String message;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingExercise_SuccessCopyWith<TrainingExercise_Success> get copyWith => _$TrainingExercise_SuccessCopyWithImpl<TrainingExercise_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExercise_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingExerciseState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingExercise_SuccessCopyWith<$Res> implements $TrainingExerciseStateCopyWith<$Res> {
  factory $TrainingExercise_SuccessCopyWith(TrainingExercise_Success value, $Res Function(TrainingExercise_Success) _then) = _$TrainingExercise_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingExercise_SuccessCopyWithImpl<$Res>
    implements $TrainingExercise_SuccessCopyWith<$Res> {
  _$TrainingExercise_SuccessCopyWithImpl(this._self, this._then);

  final TrainingExercise_Success _self;
  final $Res Function(TrainingExercise_Success) _then;

/// Create a copy of TrainingExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingExercise_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
