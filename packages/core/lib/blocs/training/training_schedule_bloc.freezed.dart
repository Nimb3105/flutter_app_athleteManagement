// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const UpdateTrainingSchedule(this.id, this.schedule);
  

 final  String id;
 final  TrainingSchedule schedule;

/// Create a copy of TrainingScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTrainingScheduleCopyWith<UpdateTrainingSchedule> get copyWith => _$UpdateTrainingScheduleCopyWithImpl<UpdateTrainingSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTrainingSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,id,schedule);

@override
String toString() {
  return 'TrainingScheduleEvent.updateTrainingSchedule(id: $id, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $UpdateTrainingScheduleCopyWith<$Res> implements $TrainingScheduleEventCopyWith<$Res> {
  factory $UpdateTrainingScheduleCopyWith(UpdateTrainingSchedule value, $Res Function(UpdateTrainingSchedule) _then) = _$UpdateTrainingScheduleCopyWithImpl;
@useResult
$Res call({
 String id, TrainingSchedule schedule
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
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schedule = null,}) {
  return _then(UpdateTrainingSchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
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

// dart format on
