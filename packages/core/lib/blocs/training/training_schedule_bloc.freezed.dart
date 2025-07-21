// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainingScheduleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleEvent()';
}


}

/// @nodoc
class $TrainingScheduleEventCopyWith<$Res>  {
$TrainingScheduleEventCopyWith(TrainingScheduleEvent _, $Res Function(TrainingScheduleEvent) __);
}


/// Adds pattern-matching-related methods to [TrainingScheduleEvent].
extension TrainingScheduleEventPatterns on TrainingScheduleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateTrainingSchedule value)?  createTrainingSchedule,TResult Function( GetTrainingScheduleById value)?  getTrainingScheduleById,TResult Function( GetAllTrainingSchedules value)?  getAllTrainingSchedules,TResult Function( UpdateTrainingSchedule value)?  updateTrainingSchedule,TResult Function( DeleteTrainingSchedule value)?  deleteTrainingSchedule,TResult Function( GetAllTrainingSchedulesByDailyScheduleId value)?  getAllTrainingSchedulesByDailyScheduleId,TResult Function( CreateMultipleTrainingSchedules value)?  createMultipleTrainingSchedules,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateTrainingSchedule() when createTrainingSchedule != null:
return createTrainingSchedule(_that);case GetTrainingScheduleById() when getTrainingScheduleById != null:
return getTrainingScheduleById(_that);case GetAllTrainingSchedules() when getAllTrainingSchedules != null:
return getAllTrainingSchedules(_that);case UpdateTrainingSchedule() when updateTrainingSchedule != null:
return updateTrainingSchedule(_that);case DeleteTrainingSchedule() when deleteTrainingSchedule != null:
return deleteTrainingSchedule(_that);case GetAllTrainingSchedulesByDailyScheduleId() when getAllTrainingSchedulesByDailyScheduleId != null:
return getAllTrainingSchedulesByDailyScheduleId(_that);case CreateMultipleTrainingSchedules() when createMultipleTrainingSchedules != null:
return createMultipleTrainingSchedules(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateTrainingSchedule value)  createTrainingSchedule,required TResult Function( GetTrainingScheduleById value)  getTrainingScheduleById,required TResult Function( GetAllTrainingSchedules value)  getAllTrainingSchedules,required TResult Function( UpdateTrainingSchedule value)  updateTrainingSchedule,required TResult Function( DeleteTrainingSchedule value)  deleteTrainingSchedule,required TResult Function( GetAllTrainingSchedulesByDailyScheduleId value)  getAllTrainingSchedulesByDailyScheduleId,required TResult Function( CreateMultipleTrainingSchedules value)  createMultipleTrainingSchedules,}){
final _that = this;
switch (_that) {
case CreateTrainingSchedule():
return createTrainingSchedule(_that);case GetTrainingScheduleById():
return getTrainingScheduleById(_that);case GetAllTrainingSchedules():
return getAllTrainingSchedules(_that);case UpdateTrainingSchedule():
return updateTrainingSchedule(_that);case DeleteTrainingSchedule():
return deleteTrainingSchedule(_that);case GetAllTrainingSchedulesByDailyScheduleId():
return getAllTrainingSchedulesByDailyScheduleId(_that);case CreateMultipleTrainingSchedules():
return createMultipleTrainingSchedules(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateTrainingSchedule value)?  createTrainingSchedule,TResult? Function( GetTrainingScheduleById value)?  getTrainingScheduleById,TResult? Function( GetAllTrainingSchedules value)?  getAllTrainingSchedules,TResult? Function( UpdateTrainingSchedule value)?  updateTrainingSchedule,TResult? Function( DeleteTrainingSchedule value)?  deleteTrainingSchedule,TResult? Function( GetAllTrainingSchedulesByDailyScheduleId value)?  getAllTrainingSchedulesByDailyScheduleId,TResult? Function( CreateMultipleTrainingSchedules value)?  createMultipleTrainingSchedules,}){
final _that = this;
switch (_that) {
case CreateTrainingSchedule() when createTrainingSchedule != null:
return createTrainingSchedule(_that);case GetTrainingScheduleById() when getTrainingScheduleById != null:
return getTrainingScheduleById(_that);case GetAllTrainingSchedules() when getAllTrainingSchedules != null:
return getAllTrainingSchedules(_that);case UpdateTrainingSchedule() when updateTrainingSchedule != null:
return updateTrainingSchedule(_that);case DeleteTrainingSchedule() when deleteTrainingSchedule != null:
return deleteTrainingSchedule(_that);case GetAllTrainingSchedulesByDailyScheduleId() when getAllTrainingSchedulesByDailyScheduleId != null:
return getAllTrainingSchedulesByDailyScheduleId(_that);case CreateMultipleTrainingSchedules() when createMultipleTrainingSchedules != null:
return createMultipleTrainingSchedules(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TrainingSchedule schedule)?  createTrainingSchedule,TResult Function( String id)?  getTrainingScheduleById,TResult Function()?  getAllTrainingSchedules,TResult Function( TrainingSchedule schedule)?  updateTrainingSchedule,TResult Function( String id)?  deleteTrainingSchedule,TResult Function( String dailyScheduleId,  String date)?  getAllTrainingSchedulesByDailyScheduleId,TResult Function( List<TrainingSchedule> schedules)?  createMultipleTrainingSchedules,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateTrainingSchedule() when createTrainingSchedule != null:
return createTrainingSchedule(_that.schedule);case GetTrainingScheduleById() when getTrainingScheduleById != null:
return getTrainingScheduleById(_that.id);case GetAllTrainingSchedules() when getAllTrainingSchedules != null:
return getAllTrainingSchedules();case UpdateTrainingSchedule() when updateTrainingSchedule != null:
return updateTrainingSchedule(_that.schedule);case DeleteTrainingSchedule() when deleteTrainingSchedule != null:
return deleteTrainingSchedule(_that.id);case GetAllTrainingSchedulesByDailyScheduleId() when getAllTrainingSchedulesByDailyScheduleId != null:
return getAllTrainingSchedulesByDailyScheduleId(_that.dailyScheduleId,_that.date);case CreateMultipleTrainingSchedules() when createMultipleTrainingSchedules != null:
return createMultipleTrainingSchedules(_that.schedules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TrainingSchedule schedule)  createTrainingSchedule,required TResult Function( String id)  getTrainingScheduleById,required TResult Function()  getAllTrainingSchedules,required TResult Function( TrainingSchedule schedule)  updateTrainingSchedule,required TResult Function( String id)  deleteTrainingSchedule,required TResult Function( String dailyScheduleId,  String date)  getAllTrainingSchedulesByDailyScheduleId,required TResult Function( List<TrainingSchedule> schedules)  createMultipleTrainingSchedules,}) {final _that = this;
switch (_that) {
case CreateTrainingSchedule():
return createTrainingSchedule(_that.schedule);case GetTrainingScheduleById():
return getTrainingScheduleById(_that.id);case GetAllTrainingSchedules():
return getAllTrainingSchedules();case UpdateTrainingSchedule():
return updateTrainingSchedule(_that.schedule);case DeleteTrainingSchedule():
return deleteTrainingSchedule(_that.id);case GetAllTrainingSchedulesByDailyScheduleId():
return getAllTrainingSchedulesByDailyScheduleId(_that.dailyScheduleId,_that.date);case CreateMultipleTrainingSchedules():
return createMultipleTrainingSchedules(_that.schedules);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TrainingSchedule schedule)?  createTrainingSchedule,TResult? Function( String id)?  getTrainingScheduleById,TResult? Function()?  getAllTrainingSchedules,TResult? Function( TrainingSchedule schedule)?  updateTrainingSchedule,TResult? Function( String id)?  deleteTrainingSchedule,TResult? Function( String dailyScheduleId,  String date)?  getAllTrainingSchedulesByDailyScheduleId,TResult? Function( List<TrainingSchedule> schedules)?  createMultipleTrainingSchedules,}) {final _that = this;
switch (_that) {
case CreateTrainingSchedule() when createTrainingSchedule != null:
return createTrainingSchedule(_that.schedule);case GetTrainingScheduleById() when getTrainingScheduleById != null:
return getTrainingScheduleById(_that.id);case GetAllTrainingSchedules() when getAllTrainingSchedules != null:
return getAllTrainingSchedules();case UpdateTrainingSchedule() when updateTrainingSchedule != null:
return updateTrainingSchedule(_that.schedule);case DeleteTrainingSchedule() when deleteTrainingSchedule != null:
return deleteTrainingSchedule(_that.id);case GetAllTrainingSchedulesByDailyScheduleId() when getAllTrainingSchedulesByDailyScheduleId != null:
return getAllTrainingSchedulesByDailyScheduleId(_that.dailyScheduleId,_that.date);case CreateMultipleTrainingSchedules() when createMultipleTrainingSchedules != null:
return createMultipleTrainingSchedules(_that.schedules);case _:
  return null;

}
}

}

/// @nodoc


class CreateTrainingSchedule implements TrainingScheduleEvent {
  const CreateTrainingSchedule(this.schedule);
  

 final  TrainingSchedule schedule;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTrainingScheduleCopyWith<CreateTrainingSchedule> get copyWith => _$CreateTrainingScheduleCopyWithImpl<CreateTrainingSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTrainingSchedule&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,schedule);

@override
String toString() {
  return 'TrainingScheduleEvent.createTrainingSchedule(schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $CreateTrainingScheduleCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $CreateTrainingScheduleCopyWith(CreateTrainingSchedule value, $Res Function(CreateTrainingSchedule) _then) = _$CreateTrainingScheduleCopyWithImpl;
@useResult
$Res call({
 TrainingSchedule schedule
});


$TrainingScheduleCopyWith<$Res> get schedule;

}
/// @nodoc
class _$CreateTrainingScheduleCopyWithImpl<$Res>
    implements $CreateTrainingScheduleCopyWith<$Res> {
  _$CreateTrainingScheduleCopyWithImpl(this._self, this._then);

  final CreateTrainingSchedule _self;
  final $Res Function(CreateTrainingSchedule) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedule = null,}) {
  return _then(CreateTrainingSchedule(
null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as TrainingSchedule,
  ));
}

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleCopyWith<$Res> get schedule {
  
  return $TrainingScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}
}

/// @nodoc


class GetTrainingScheduleById implements TrainingScheduleEvent {
  const GetTrainingScheduleById(this.id);
  

 final  String id;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTrainingScheduleByIdCopyWith<GetTrainingScheduleById> get copyWith => _$GetTrainingScheduleByIdCopyWithImpl<GetTrainingScheduleById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTrainingScheduleById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingScheduleEvent.getTrainingScheduleById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTrainingScheduleByIdCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $GetTrainingScheduleByIdCopyWith(GetTrainingScheduleById value, $Res Function(GetTrainingScheduleById) _then) = _$GetTrainingScheduleByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTrainingScheduleByIdCopyWithImpl<$Res>
    implements $GetTrainingScheduleByIdCopyWith<$Res> {
  _$GetTrainingScheduleByIdCopyWithImpl(this._self, this._then);

  final GetTrainingScheduleById _self;
  final $Res Function(GetTrainingScheduleById) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTrainingScheduleById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingSchedules implements TrainingScheduleEvent {
  const GetAllTrainingSchedules();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingSchedules);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleEvent.getAllTrainingSchedules()';
}


}




/// @nodoc


class UpdateTrainingSchedule implements TrainingScheduleEvent {
  const UpdateTrainingSchedule(this.schedule);
  

 final  TrainingSchedule schedule;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTrainingScheduleCopyWith<UpdateTrainingSchedule> get copyWith => _$UpdateTrainingScheduleCopyWithImpl<UpdateTrainingSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTrainingSchedule&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,schedule);

@override
String toString() {
  return 'TrainingScheduleEvent.updateTrainingSchedule(schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $UpdateTrainingScheduleCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $UpdateTrainingScheduleCopyWith(UpdateTrainingSchedule value, $Res Function(UpdateTrainingSchedule) _then) = _$UpdateTrainingScheduleCopyWithImpl;
@useResult
$Res call({
 TrainingSchedule schedule
});


$TrainingScheduleCopyWith<$Res> get schedule;

}
/// @nodoc
class _$UpdateTrainingScheduleCopyWithImpl<$Res>
    implements $UpdateTrainingScheduleCopyWith<$Res> {
  _$UpdateTrainingScheduleCopyWithImpl(this._self, this._then);

  final UpdateTrainingSchedule _self;
  final $Res Function(UpdateTrainingSchedule) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedule = null,}) {
  return _then(UpdateTrainingSchedule(
null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as TrainingSchedule,
  ));
}

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleCopyWith<$Res> get schedule {
  
  return $TrainingScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}
}

/// @nodoc


class DeleteTrainingSchedule implements TrainingScheduleEvent {
  const DeleteTrainingSchedule(this.id);
  

 final  String id;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTrainingScheduleCopyWith<DeleteTrainingSchedule> get copyWith => _$DeleteTrainingScheduleCopyWithImpl<DeleteTrainingSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTrainingSchedule&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingScheduleEvent.deleteTrainingSchedule(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTrainingScheduleCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $DeleteTrainingScheduleCopyWith(DeleteTrainingSchedule value, $Res Function(DeleteTrainingSchedule) _then) = _$DeleteTrainingScheduleCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTrainingScheduleCopyWithImpl<$Res>
    implements $DeleteTrainingScheduleCopyWith<$Res> {
  _$DeleteTrainingScheduleCopyWithImpl(this._self, this._then);

  final DeleteTrainingSchedule _self;
  final $Res Function(DeleteTrainingSchedule) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteTrainingSchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingSchedulesByDailyScheduleId implements TrainingScheduleEvent {
  const GetAllTrainingSchedulesByDailyScheduleId(this.dailyScheduleId, this.date);
  

 final  String dailyScheduleId;
 final  String date;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllTrainingSchedulesByDailyScheduleIdCopyWith<GetAllTrainingSchedulesByDailyScheduleId> get copyWith => _$GetAllTrainingSchedulesByDailyScheduleIdCopyWithImpl<GetAllTrainingSchedulesByDailyScheduleId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingSchedulesByDailyScheduleId&&(identical(other.dailyScheduleId, dailyScheduleId) || other.dailyScheduleId == dailyScheduleId)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,dailyScheduleId,date);

@override
String toString() {
  return 'TrainingScheduleEvent.getAllTrainingSchedulesByDailyScheduleId(dailyScheduleId: $dailyScheduleId, date: $date)';
}


}

/// @nodoc
abstract mixin class $GetAllTrainingSchedulesByDailyScheduleIdCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $GetAllTrainingSchedulesByDailyScheduleIdCopyWith(GetAllTrainingSchedulesByDailyScheduleId value, $Res Function(GetAllTrainingSchedulesByDailyScheduleId) _then) = _$GetAllTrainingSchedulesByDailyScheduleIdCopyWithImpl;
@useResult
$Res call({
 String dailyScheduleId, String date
});




}
/// @nodoc
class _$GetAllTrainingSchedulesByDailyScheduleIdCopyWithImpl<$Res>
    implements $GetAllTrainingSchedulesByDailyScheduleIdCopyWith<$Res> {
  _$GetAllTrainingSchedulesByDailyScheduleIdCopyWithImpl(this._self, this._then);

  final GetAllTrainingSchedulesByDailyScheduleId _self;
  final $Res Function(GetAllTrainingSchedulesByDailyScheduleId) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dailyScheduleId = null,Object? date = null,}) {
  return _then(GetAllTrainingSchedulesByDailyScheduleId(
null == dailyScheduleId ? _self.dailyScheduleId : dailyScheduleId // ignore: cast_nullable_to_non_nullable
as String,null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateMultipleTrainingSchedules implements TrainingScheduleEvent {
  const CreateMultipleTrainingSchedules(final  List<TrainingSchedule> schedules): _schedules = schedules;
  

 final  List<TrainingSchedule> _schedules;
 List<TrainingSchedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}


/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMultipleTrainingSchedulesCopyWith<CreateMultipleTrainingSchedules> get copyWith => _$CreateMultipleTrainingSchedulesCopyWithImpl<CreateMultipleTrainingSchedules>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMultipleTrainingSchedules&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules));

@override
String toString() {
  return 'TrainingScheduleEvent.createMultipleTrainingSchedules(schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $CreateMultipleTrainingSchedulesCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $CreateMultipleTrainingSchedulesCopyWith(CreateMultipleTrainingSchedules value, $Res Function(CreateMultipleTrainingSchedules) _then) = _$CreateMultipleTrainingSchedulesCopyWithImpl;
@useResult
$Res call({
 List<TrainingSchedule> schedules
});




}
/// @nodoc
class _$CreateMultipleTrainingSchedulesCopyWithImpl<$Res>
    implements $CreateMultipleTrainingSchedulesCopyWith<$Res> {
  _$CreateMultipleTrainingSchedulesCopyWithImpl(this._self, this._then);

  final CreateMultipleTrainingSchedules _self;
  final $Res Function(CreateMultipleTrainingSchedules) _then;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedules = null,}) {
  return _then(CreateMultipleTrainingSchedules(
null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<TrainingSchedule>,
  ));
}


}

/// @nodoc
mixin _$TrainingScheduleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleState()';
}


}

/// @nodoc
class $TrainingScheduleStateCopyWith<$Res>  {
$TrainingScheduleStateCopyWith(TrainingScheduleState _, $Res Function(TrainingScheduleState) __);
}


/// Adds pattern-matching-related methods to [TrainingScheduleState].
extension TrainingScheduleStatePatterns on TrainingScheduleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TrainingSchedule_Initial value)?  initial,TResult Function( TrainingSchedule_Loading value)?  loading,TResult Function( LoadedTrainingSchedule value)?  loadedTrainingSchedule,TResult Function( LoadedTrainingSchedules value)?  loadedTrainingSchedules,TResult Function( TrainingSchedule_Error value)?  error,TResult Function( TrainingSchedule_Success value)?  success,TResult Function( LoadedTrainingSchedulesByDailyScheduleId value)?  loadedTrainingSchedulesByDailyScheduleId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TrainingSchedule_Initial() when initial != null:
return initial(_that);case TrainingSchedule_Loading() when loading != null:
return loading(_that);case LoadedTrainingSchedule() when loadedTrainingSchedule != null:
return loadedTrainingSchedule(_that);case LoadedTrainingSchedules() when loadedTrainingSchedules != null:
return loadedTrainingSchedules(_that);case TrainingSchedule_Error() when error != null:
return error(_that);case TrainingSchedule_Success() when success != null:
return success(_that);case LoadedTrainingSchedulesByDailyScheduleId() when loadedTrainingSchedulesByDailyScheduleId != null:
return loadedTrainingSchedulesByDailyScheduleId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TrainingSchedule_Initial value)  initial,required TResult Function( TrainingSchedule_Loading value)  loading,required TResult Function( LoadedTrainingSchedule value)  loadedTrainingSchedule,required TResult Function( LoadedTrainingSchedules value)  loadedTrainingSchedules,required TResult Function( TrainingSchedule_Error value)  error,required TResult Function( TrainingSchedule_Success value)  success,required TResult Function( LoadedTrainingSchedulesByDailyScheduleId value)  loadedTrainingSchedulesByDailyScheduleId,}){
final _that = this;
switch (_that) {
case TrainingSchedule_Initial():
return initial(_that);case TrainingSchedule_Loading():
return loading(_that);case LoadedTrainingSchedule():
return loadedTrainingSchedule(_that);case LoadedTrainingSchedules():
return loadedTrainingSchedules(_that);case TrainingSchedule_Error():
return error(_that);case TrainingSchedule_Success():
return success(_that);case LoadedTrainingSchedulesByDailyScheduleId():
return loadedTrainingSchedulesByDailyScheduleId(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TrainingSchedule_Initial value)?  initial,TResult? Function( TrainingSchedule_Loading value)?  loading,TResult? Function( LoadedTrainingSchedule value)?  loadedTrainingSchedule,TResult? Function( LoadedTrainingSchedules value)?  loadedTrainingSchedules,TResult? Function( TrainingSchedule_Error value)?  error,TResult? Function( TrainingSchedule_Success value)?  success,TResult? Function( LoadedTrainingSchedulesByDailyScheduleId value)?  loadedTrainingSchedulesByDailyScheduleId,}){
final _that = this;
switch (_that) {
case TrainingSchedule_Initial() when initial != null:
return initial(_that);case TrainingSchedule_Loading() when loading != null:
return loading(_that);case LoadedTrainingSchedule() when loadedTrainingSchedule != null:
return loadedTrainingSchedule(_that);case LoadedTrainingSchedules() when loadedTrainingSchedules != null:
return loadedTrainingSchedules(_that);case TrainingSchedule_Error() when error != null:
return error(_that);case TrainingSchedule_Success() when success != null:
return success(_that);case LoadedTrainingSchedulesByDailyScheduleId() when loadedTrainingSchedulesByDailyScheduleId != null:
return loadedTrainingSchedulesByDailyScheduleId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TrainingSchedule schedule)?  loadedTrainingSchedule,TResult Function( List<TrainingSchedule> schedules)?  loadedTrainingSchedules,TResult Function( String message)?  error,TResult Function( String message)?  success,TResult Function( List<TrainingSchedule> trainingSchedules,  Map<String, List<TrainingExercise>> exercisesBySchedule,  Map<String, Exercise> exerciseDetails)?  loadedTrainingSchedulesByDailyScheduleId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TrainingSchedule_Initial() when initial != null:
return initial();case TrainingSchedule_Loading() when loading != null:
return loading();case LoadedTrainingSchedule() when loadedTrainingSchedule != null:
return loadedTrainingSchedule(_that.schedule);case LoadedTrainingSchedules() when loadedTrainingSchedules != null:
return loadedTrainingSchedules(_that.schedules);case TrainingSchedule_Error() when error != null:
return error(_that.message);case TrainingSchedule_Success() when success != null:
return success(_that.message);case LoadedTrainingSchedulesByDailyScheduleId() when loadedTrainingSchedulesByDailyScheduleId != null:
return loadedTrainingSchedulesByDailyScheduleId(_that.trainingSchedules,_that.exercisesBySchedule,_that.exerciseDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TrainingSchedule schedule)  loadedTrainingSchedule,required TResult Function( List<TrainingSchedule> schedules)  loadedTrainingSchedules,required TResult Function( String message)  error,required TResult Function( String message)  success,required TResult Function( List<TrainingSchedule> trainingSchedules,  Map<String, List<TrainingExercise>> exercisesBySchedule,  Map<String, Exercise> exerciseDetails)  loadedTrainingSchedulesByDailyScheduleId,}) {final _that = this;
switch (_that) {
case TrainingSchedule_Initial():
return initial();case TrainingSchedule_Loading():
return loading();case LoadedTrainingSchedule():
return loadedTrainingSchedule(_that.schedule);case LoadedTrainingSchedules():
return loadedTrainingSchedules(_that.schedules);case TrainingSchedule_Error():
return error(_that.message);case TrainingSchedule_Success():
return success(_that.message);case LoadedTrainingSchedulesByDailyScheduleId():
return loadedTrainingSchedulesByDailyScheduleId(_that.trainingSchedules,_that.exercisesBySchedule,_that.exerciseDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TrainingSchedule schedule)?  loadedTrainingSchedule,TResult? Function( List<TrainingSchedule> schedules)?  loadedTrainingSchedules,TResult? Function( String message)?  error,TResult? Function( String message)?  success,TResult? Function( List<TrainingSchedule> trainingSchedules,  Map<String, List<TrainingExercise>> exercisesBySchedule,  Map<String, Exercise> exerciseDetails)?  loadedTrainingSchedulesByDailyScheduleId,}) {final _that = this;
switch (_that) {
case TrainingSchedule_Initial() when initial != null:
return initial();case TrainingSchedule_Loading() when loading != null:
return loading();case LoadedTrainingSchedule() when loadedTrainingSchedule != null:
return loadedTrainingSchedule(_that.schedule);case LoadedTrainingSchedules() when loadedTrainingSchedules != null:
return loadedTrainingSchedules(_that.schedules);case TrainingSchedule_Error() when error != null:
return error(_that.message);case TrainingSchedule_Success() when success != null:
return success(_that.message);case LoadedTrainingSchedulesByDailyScheduleId() when loadedTrainingSchedulesByDailyScheduleId != null:
return loadedTrainingSchedulesByDailyScheduleId(_that.trainingSchedules,_that.exercisesBySchedule,_that.exerciseDetails);case _:
  return null;

}
}

}

/// @nodoc


class TrainingSchedule_Initial implements TrainingScheduleState {
  const TrainingSchedule_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingSchedule_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleState.initial()';
}


}




/// @nodoc


class TrainingSchedule_Loading implements TrainingScheduleState {
  const TrainingSchedule_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingSchedule_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleState.loading()';
}


}




/// @nodoc


class LoadedTrainingSchedule implements TrainingScheduleState {
  const LoadedTrainingSchedule(this.schedule);
  

 final  TrainingSchedule schedule;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingScheduleCopyWith<LoadedTrainingSchedule> get copyWith => _$LoadedTrainingScheduleCopyWithImpl<LoadedTrainingSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingSchedule&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,schedule);

@override
String toString() {
  return 'TrainingScheduleState.loadedTrainingSchedule(schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingScheduleCopyWith<$Res> implements $TrainingScheduleStateCopyWith<$Res> {
  factory $LoadedTrainingScheduleCopyWith(LoadedTrainingSchedule value, $Res Function(LoadedTrainingSchedule) _then) = _$LoadedTrainingScheduleCopyWithImpl;
@useResult
$Res call({
 TrainingSchedule schedule
});


$TrainingScheduleCopyWith<$Res> get schedule;

}
/// @nodoc
class _$LoadedTrainingScheduleCopyWithImpl<$Res>
    implements $LoadedTrainingScheduleCopyWith<$Res> {
  _$LoadedTrainingScheduleCopyWithImpl(this._self, this._then);

  final LoadedTrainingSchedule _self;
  final $Res Function(LoadedTrainingSchedule) _then;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedule = null,}) {
  return _then(LoadedTrainingSchedule(
null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as TrainingSchedule,
  ));
}

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleCopyWith<$Res> get schedule {
  
  return $TrainingScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}
}

/// @nodoc


class LoadedTrainingSchedules implements TrainingScheduleState {
  const LoadedTrainingSchedules(final  List<TrainingSchedule> schedules): _schedules = schedules;
  

 final  List<TrainingSchedule> _schedules;
 List<TrainingSchedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}


/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingSchedulesCopyWith<LoadedTrainingSchedules> get copyWith => _$LoadedTrainingSchedulesCopyWithImpl<LoadedTrainingSchedules>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingSchedules&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules));

@override
String toString() {
  return 'TrainingScheduleState.loadedTrainingSchedules(schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingSchedulesCopyWith<$Res> implements $TrainingScheduleStateCopyWith<$Res> {
  factory $LoadedTrainingSchedulesCopyWith(LoadedTrainingSchedules value, $Res Function(LoadedTrainingSchedules) _then) = _$LoadedTrainingSchedulesCopyWithImpl;
@useResult
$Res call({
 List<TrainingSchedule> schedules
});




}
/// @nodoc
class _$LoadedTrainingSchedulesCopyWithImpl<$Res>
    implements $LoadedTrainingSchedulesCopyWith<$Res> {
  _$LoadedTrainingSchedulesCopyWithImpl(this._self, this._then);

  final LoadedTrainingSchedules _self;
  final $Res Function(LoadedTrainingSchedules) _then;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedules = null,}) {
  return _then(LoadedTrainingSchedules(
null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<TrainingSchedule>,
  ));
}


}

/// @nodoc


class TrainingSchedule_Error implements TrainingScheduleState {
  const TrainingSchedule_Error(this.message);
  

 final  String message;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingSchedule_ErrorCopyWith<TrainingSchedule_Error> get copyWith => _$TrainingSchedule_ErrorCopyWithImpl<TrainingSchedule_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingSchedule_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingScheduleState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingSchedule_ErrorCopyWith<$Res> implements $TrainingScheduleStateCopyWith<$Res> {
  factory $TrainingSchedule_ErrorCopyWith(TrainingSchedule_Error value, $Res Function(TrainingSchedule_Error) _then) = _$TrainingSchedule_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingSchedule_ErrorCopyWithImpl<$Res>
    implements $TrainingSchedule_ErrorCopyWith<$Res> {
  _$TrainingSchedule_ErrorCopyWithImpl(this._self, this._then);

  final TrainingSchedule_Error _self;
  final $Res Function(TrainingSchedule_Error) _then;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingSchedule_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TrainingSchedule_Success implements TrainingScheduleState {
  const TrainingSchedule_Success(this.message);
  

 final  String message;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingSchedule_SuccessCopyWith<TrainingSchedule_Success> get copyWith => _$TrainingSchedule_SuccessCopyWithImpl<TrainingSchedule_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingSchedule_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingScheduleState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingSchedule_SuccessCopyWith<$Res> implements $TrainingScheduleStateCopyWith<$Res> {
  factory $TrainingSchedule_SuccessCopyWith(TrainingSchedule_Success value, $Res Function(TrainingSchedule_Success) _then) = _$TrainingSchedule_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingSchedule_SuccessCopyWithImpl<$Res>
    implements $TrainingSchedule_SuccessCopyWith<$Res> {
  _$TrainingSchedule_SuccessCopyWithImpl(this._self, this._then);

  final TrainingSchedule_Success _self;
  final $Res Function(TrainingSchedule_Success) _then;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingSchedule_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedTrainingSchedulesByDailyScheduleId implements TrainingScheduleState {
  const LoadedTrainingSchedulesByDailyScheduleId(final  List<TrainingSchedule> trainingSchedules, final  Map<String, List<TrainingExercise>> exercisesBySchedule, final  Map<String, Exercise> exerciseDetails): _trainingSchedules = trainingSchedules,_exercisesBySchedule = exercisesBySchedule,_exerciseDetails = exerciseDetails;
  

 final  List<TrainingSchedule> _trainingSchedules;
 List<TrainingSchedule> get trainingSchedules {
  if (_trainingSchedules is EqualUnmodifiableListView) return _trainingSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingSchedules);
}

 final  Map<String, List<TrainingExercise>> _exercisesBySchedule;
 Map<String, List<TrainingExercise>> get exercisesBySchedule {
  if (_exercisesBySchedule is EqualUnmodifiableMapView) return _exercisesBySchedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_exercisesBySchedule);
}

// Map scheduleId -> List<TrainingExercise>
 final  Map<String, Exercise> _exerciseDetails;
// Map scheduleId -> List<TrainingExercise>
 Map<String, Exercise> get exerciseDetails {
  if (_exerciseDetails is EqualUnmodifiableMapView) return _exerciseDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_exerciseDetails);
}


/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingSchedulesByDailyScheduleIdCopyWith<LoadedTrainingSchedulesByDailyScheduleId> get copyWith => _$LoadedTrainingSchedulesByDailyScheduleIdCopyWithImpl<LoadedTrainingSchedulesByDailyScheduleId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingSchedulesByDailyScheduleId&&const DeepCollectionEquality().equals(other._trainingSchedules, _trainingSchedules)&&const DeepCollectionEquality().equals(other._exercisesBySchedule, _exercisesBySchedule)&&const DeepCollectionEquality().equals(other._exerciseDetails, _exerciseDetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainingSchedules),const DeepCollectionEquality().hash(_exercisesBySchedule),const DeepCollectionEquality().hash(_exerciseDetails));

@override
String toString() {
  return 'TrainingScheduleState.loadedTrainingSchedulesByDailyScheduleId(trainingSchedules: $trainingSchedules, exercisesBySchedule: $exercisesBySchedule, exerciseDetails: $exerciseDetails)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingSchedulesByDailyScheduleIdCopyWith<$Res> implements $TrainingScheduleStateCopyWith<$Res> {
  factory $LoadedTrainingSchedulesByDailyScheduleIdCopyWith(LoadedTrainingSchedulesByDailyScheduleId value, $Res Function(LoadedTrainingSchedulesByDailyScheduleId) _then) = _$LoadedTrainingSchedulesByDailyScheduleIdCopyWithImpl;
@useResult
$Res call({
 List<TrainingSchedule> trainingSchedules, Map<String, List<TrainingExercise>> exercisesBySchedule, Map<String, Exercise> exerciseDetails
});




}
/// @nodoc
class _$LoadedTrainingSchedulesByDailyScheduleIdCopyWithImpl<$Res>
    implements $LoadedTrainingSchedulesByDailyScheduleIdCopyWith<$Res> {
  _$LoadedTrainingSchedulesByDailyScheduleIdCopyWithImpl(this._self, this._then);

  final LoadedTrainingSchedulesByDailyScheduleId _self;
  final $Res Function(LoadedTrainingSchedulesByDailyScheduleId) _then;

/// Create a copy of TrainingScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainingSchedules = null,Object? exercisesBySchedule = null,Object? exerciseDetails = null,}) {
  return _then(LoadedTrainingSchedulesByDailyScheduleId(
null == trainingSchedules ? _self._trainingSchedules : trainingSchedules // ignore: cast_nullable_to_non_nullable
as List<TrainingSchedule>,null == exercisesBySchedule ? _self._exercisesBySchedule : exercisesBySchedule // ignore: cast_nullable_to_non_nullable
as Map<String, List<TrainingExercise>>,null == exerciseDetails ? _self._exerciseDetails : exerciseDetails // ignore: cast_nullable_to_non_nullable
as Map<String, Exercise>,
  ));
}


}

// dart format on
