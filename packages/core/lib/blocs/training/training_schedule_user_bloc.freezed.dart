// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_schedule_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainingScheduleUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleUserEvent()';
}


}

/// @nodoc
class $TrainingScheduleUserEventCopyWith<$Res>  {
$TrainingScheduleUserEventCopyWith(TrainingScheduleUserEvent _, $Res Function(TrainingScheduleUserEvent) __);
}


/// @nodoc


class CreateTrainingScheduleUser implements TrainingScheduleUserEvent {
  const CreateTrainingScheduleUser(this.scheduleAthlete);
  

 final  TrainingScheduleUser scheduleAthlete;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTrainingScheduleUserCopyWith<CreateTrainingScheduleUser> get copyWith => _$CreateTrainingScheduleUserCopyWithImpl<CreateTrainingScheduleUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTrainingScheduleUser&&(identical(other.scheduleAthlete, scheduleAthlete) || other.scheduleAthlete == scheduleAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleAthlete);

@override
String toString() {
  return 'TrainingScheduleUserEvent.createTrainingScheduleUser(scheduleAthlete: $scheduleAthlete)';
}


}

/// @nodoc
abstract mixin class $CreateTrainingScheduleUserCopyWith<$Res> implements $TrainingScheduleUserEventCopyWith<$Res> {
  factory $CreateTrainingScheduleUserCopyWith(CreateTrainingScheduleUser value, $Res Function(CreateTrainingScheduleUser) _then) = _$CreateTrainingScheduleUserCopyWithImpl;
@useResult
$Res call({
 TrainingScheduleUser scheduleAthlete
});


$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete;

}
/// @nodoc
class _$CreateTrainingScheduleUserCopyWithImpl<$Res>
    implements $CreateTrainingScheduleUserCopyWith<$Res> {
  _$CreateTrainingScheduleUserCopyWithImpl(this._self, this._then);

  final CreateTrainingScheduleUser _self;
  final $Res Function(CreateTrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scheduleAthlete = null,}) {
  return _then(CreateTrainingScheduleUser(
null == scheduleAthlete ? _self.scheduleAthlete : scheduleAthlete // ignore: cast_nullable_to_non_nullable
as TrainingScheduleUser,
  ));
}

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete {
  
  return $TrainingScheduleUserCopyWith<$Res>(_self.scheduleAthlete, (value) {
    return _then(_self.copyWith(scheduleAthlete: value));
  });
}
}

/// @nodoc


class GetTrainingScheduleUserById implements TrainingScheduleUserEvent {
  const GetTrainingScheduleUserById(this.id);
  

 final  String id;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTrainingScheduleUserByIdCopyWith<GetTrainingScheduleUserById> get copyWith => _$GetTrainingScheduleUserByIdCopyWithImpl<GetTrainingScheduleUserById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTrainingScheduleUserById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingScheduleUserEvent.getTrainingScheduleUserById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTrainingScheduleUserByIdCopyWith<$Res> implements $TrainingScheduleUserEventCopyWith<$Res> {
  factory $GetTrainingScheduleUserByIdCopyWith(GetTrainingScheduleUserById value, $Res Function(GetTrainingScheduleUserById) _then) = _$GetTrainingScheduleUserByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTrainingScheduleUserByIdCopyWithImpl<$Res>
    implements $GetTrainingScheduleUserByIdCopyWith<$Res> {
  _$GetTrainingScheduleUserByIdCopyWithImpl(this._self, this._then);

  final GetTrainingScheduleUserById _self;
  final $Res Function(GetTrainingScheduleUserById) _then;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTrainingScheduleUserById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingScheduleUsers implements TrainingScheduleUserEvent {
  const GetAllTrainingScheduleUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingScheduleUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleUserEvent.getAllTrainingScheduleUsers()';
}


}




/// @nodoc


class UpdateTrainingScheduleUser implements TrainingScheduleUserEvent {
  const UpdateTrainingScheduleUser(this.id, this.scheduleAthlete);
  

 final  String id;
 final  TrainingScheduleUser scheduleAthlete;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTrainingScheduleUserCopyWith<UpdateTrainingScheduleUser> get copyWith => _$UpdateTrainingScheduleUserCopyWithImpl<UpdateTrainingScheduleUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTrainingScheduleUser&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleAthlete, scheduleAthlete) || other.scheduleAthlete == scheduleAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,id,scheduleAthlete);

@override
String toString() {
  return 'TrainingScheduleUserEvent.updateTrainingScheduleUser(id: $id, scheduleAthlete: $scheduleAthlete)';
}


}

/// @nodoc
abstract mixin class $UpdateTrainingScheduleUserCopyWith<$Res> implements $TrainingScheduleUserEventCopyWith<$Res> {
  factory $UpdateTrainingScheduleUserCopyWith(UpdateTrainingScheduleUser value, $Res Function(UpdateTrainingScheduleUser) _then) = _$UpdateTrainingScheduleUserCopyWithImpl;
@useResult
$Res call({
 String id, TrainingScheduleUser scheduleAthlete
});


$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete;

}
/// @nodoc
class _$UpdateTrainingScheduleUserCopyWithImpl<$Res>
    implements $UpdateTrainingScheduleUserCopyWith<$Res> {
  _$UpdateTrainingScheduleUserCopyWithImpl(this._self, this._then);

  final UpdateTrainingScheduleUser _self;
  final $Res Function(UpdateTrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleAthlete = null,}) {
  return _then(UpdateTrainingScheduleUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == scheduleAthlete ? _self.scheduleAthlete : scheduleAthlete // ignore: cast_nullable_to_non_nullable
as TrainingScheduleUser,
  ));
}

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete {
  
  return $TrainingScheduleUserCopyWith<$Res>(_self.scheduleAthlete, (value) {
    return _then(_self.copyWith(scheduleAthlete: value));
  });
}
}

/// @nodoc


class DeleteTrainingScheduleUser implements TrainingScheduleUserEvent {
  const DeleteTrainingScheduleUser(this.id);
  

 final  String id;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTrainingScheduleUserCopyWith<DeleteTrainingScheduleUser> get copyWith => _$DeleteTrainingScheduleUserCopyWithImpl<DeleteTrainingScheduleUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTrainingScheduleUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainingScheduleUserEvent.deleteTrainingScheduleUser(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTrainingScheduleUserCopyWith<$Res> implements $TrainingScheduleUserEventCopyWith<$Res> {
  factory $DeleteTrainingScheduleUserCopyWith(DeleteTrainingScheduleUser value, $Res Function(DeleteTrainingScheduleUser) _then) = _$DeleteTrainingScheduleUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTrainingScheduleUserCopyWithImpl<$Res>
    implements $DeleteTrainingScheduleUserCopyWith<$Res> {
  _$DeleteTrainingScheduleUserCopyWithImpl(this._self, this._then);

  final DeleteTrainingScheduleUser _self;
  final $Res Function(DeleteTrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteTrainingScheduleUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTrainingScheduleUserByUserId implements TrainingScheduleUserEvent {
  const GetAllTrainingScheduleUserByUserId(this.userId);
  

 final  String userId;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllTrainingScheduleUserByUserIdCopyWith<GetAllTrainingScheduleUserByUserId> get copyWith => _$GetAllTrainingScheduleUserByUserIdCopyWithImpl<GetAllTrainingScheduleUserByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTrainingScheduleUserByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'TrainingScheduleUserEvent.getAllTrainingScheduleUserByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetAllTrainingScheduleUserByUserIdCopyWith<$Res> implements $TrainingScheduleUserEventCopyWith<$Res> {
  factory $GetAllTrainingScheduleUserByUserIdCopyWith(GetAllTrainingScheduleUserByUserId value, $Res Function(GetAllTrainingScheduleUserByUserId) _then) = _$GetAllTrainingScheduleUserByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetAllTrainingScheduleUserByUserIdCopyWithImpl<$Res>
    implements $GetAllTrainingScheduleUserByUserIdCopyWith<$Res> {
  _$GetAllTrainingScheduleUserByUserIdCopyWithImpl(this._self, this._then);

  final GetAllTrainingScheduleUserByUserId _self;
  final $Res Function(GetAllTrainingScheduleUserByUserId) _then;

/// Create a copy of TrainingScheduleUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetAllTrainingScheduleUserByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TrainingScheduleUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleUserState()';
}


}

/// @nodoc
class $TrainingScheduleUserStateCopyWith<$Res>  {
$TrainingScheduleUserStateCopyWith(TrainingScheduleUserState _, $Res Function(TrainingScheduleUserState) __);
}


/// @nodoc


class TrainingScheduleUser_Initial implements TrainingScheduleUserState {
  const TrainingScheduleUser_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUser_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleUserState.initial()';
}


}




/// @nodoc


class TrainingScheduleUser_Loading implements TrainingScheduleUserState {
  const TrainingScheduleUser_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUser_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainingScheduleUserState.loading()';
}


}




/// @nodoc


class LoadedTrainingScheduleUser implements TrainingScheduleUserState {
  const LoadedTrainingScheduleUser(this.scheduleAthlete);
  

 final  TrainingScheduleUser scheduleAthlete;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingScheduleUserCopyWith<LoadedTrainingScheduleUser> get copyWith => _$LoadedTrainingScheduleUserCopyWithImpl<LoadedTrainingScheduleUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingScheduleUser&&(identical(other.scheduleAthlete, scheduleAthlete) || other.scheduleAthlete == scheduleAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleAthlete);

@override
String toString() {
  return 'TrainingScheduleUserState.loadedTrainingScheduleUser(scheduleAthlete: $scheduleAthlete)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingScheduleUserCopyWith<$Res> implements $TrainingScheduleUserStateCopyWith<$Res> {
  factory $LoadedTrainingScheduleUserCopyWith(LoadedTrainingScheduleUser value, $Res Function(LoadedTrainingScheduleUser) _then) = _$LoadedTrainingScheduleUserCopyWithImpl;
@useResult
$Res call({
 TrainingScheduleUser scheduleAthlete
});


$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete;

}
/// @nodoc
class _$LoadedTrainingScheduleUserCopyWithImpl<$Res>
    implements $LoadedTrainingScheduleUserCopyWith<$Res> {
  _$LoadedTrainingScheduleUserCopyWithImpl(this._self, this._then);

  final LoadedTrainingScheduleUser _self;
  final $Res Function(LoadedTrainingScheduleUser) _then;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scheduleAthlete = null,}) {
  return _then(LoadedTrainingScheduleUser(
null == scheduleAthlete ? _self.scheduleAthlete : scheduleAthlete // ignore: cast_nullable_to_non_nullable
as TrainingScheduleUser,
  ));
}

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainingScheduleUserCopyWith<$Res> get scheduleAthlete {
  
  return $TrainingScheduleUserCopyWith<$Res>(_self.scheduleAthlete, (value) {
    return _then(_self.copyWith(scheduleAthlete: value));
  });
}
}

/// @nodoc


class LoadedTrainingScheduleUsers implements TrainingScheduleUserState {
  const LoadedTrainingScheduleUsers(final  List<TrainingScheduleUser> scheduleAthletes, final  Map<String, TrainingSchedule> trainingSchedules): _scheduleAthletes = scheduleAthletes,_trainingSchedules = trainingSchedules;
  

 final  List<TrainingScheduleUser> _scheduleAthletes;
 List<TrainingScheduleUser> get scheduleAthletes {
  if (_scheduleAthletes is EqualUnmodifiableListView) return _scheduleAthletes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scheduleAthletes);
}

 final  Map<String, TrainingSchedule> _trainingSchedules;
 Map<String, TrainingSchedule> get trainingSchedules {
  if (_trainingSchedules is EqualUnmodifiableMapView) return _trainingSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_trainingSchedules);
}


/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedTrainingScheduleUsersCopyWith<LoadedTrainingScheduleUsers> get copyWith => _$LoadedTrainingScheduleUsersCopyWithImpl<LoadedTrainingScheduleUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedTrainingScheduleUsers&&const DeepCollectionEquality().equals(other._scheduleAthletes, _scheduleAthletes)&&const DeepCollectionEquality().equals(other._trainingSchedules, _trainingSchedules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scheduleAthletes),const DeepCollectionEquality().hash(_trainingSchedules));

@override
String toString() {
  return 'TrainingScheduleUserState.loadedTrainingScheduleUsers(scheduleAthletes: $scheduleAthletes, trainingSchedules: $trainingSchedules)';
}


}

/// @nodoc
abstract mixin class $LoadedTrainingScheduleUsersCopyWith<$Res> implements $TrainingScheduleUserStateCopyWith<$Res> {
  factory $LoadedTrainingScheduleUsersCopyWith(LoadedTrainingScheduleUsers value, $Res Function(LoadedTrainingScheduleUsers) _then) = _$LoadedTrainingScheduleUsersCopyWithImpl;
@useResult
$Res call({
 List<TrainingScheduleUser> scheduleAthletes, Map<String, TrainingSchedule> trainingSchedules
});




}
/// @nodoc
class _$LoadedTrainingScheduleUsersCopyWithImpl<$Res>
    implements $LoadedTrainingScheduleUsersCopyWith<$Res> {
  _$LoadedTrainingScheduleUsersCopyWithImpl(this._self, this._then);

  final LoadedTrainingScheduleUsers _self;
  final $Res Function(LoadedTrainingScheduleUsers) _then;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scheduleAthletes = null,Object? trainingSchedules = null,}) {
  return _then(LoadedTrainingScheduleUsers(
null == scheduleAthletes ? _self._scheduleAthletes : scheduleAthletes // ignore: cast_nullable_to_non_nullable
as List<TrainingScheduleUser>,null == trainingSchedules ? _self._trainingSchedules : trainingSchedules // ignore: cast_nullable_to_non_nullable
as Map<String, TrainingSchedule>,
  ));
}


}

/// @nodoc


class TrainingScheduleUser_Error implements TrainingScheduleUserState {
  const TrainingScheduleUser_Error(this.message);
  

 final  String message;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingScheduleUser_ErrorCopyWith<TrainingScheduleUser_Error> get copyWith => _$TrainingScheduleUser_ErrorCopyWithImpl<TrainingScheduleUser_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUser_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingScheduleUserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingScheduleUser_ErrorCopyWith<$Res> implements $TrainingScheduleUserStateCopyWith<$Res> {
  factory $TrainingScheduleUser_ErrorCopyWith(TrainingScheduleUser_Error value, $Res Function(TrainingScheduleUser_Error) _then) = _$TrainingScheduleUser_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingScheduleUser_ErrorCopyWithImpl<$Res>
    implements $TrainingScheduleUser_ErrorCopyWith<$Res> {
  _$TrainingScheduleUser_ErrorCopyWithImpl(this._self, this._then);

  final TrainingScheduleUser_Error _self;
  final $Res Function(TrainingScheduleUser_Error) _then;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingScheduleUser_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TrainingScheduleUser_Success implements TrainingScheduleUserState {
  const TrainingScheduleUser_Success(this.message);
  

 final  String message;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingScheduleUser_SuccessCopyWith<TrainingScheduleUser_Success> get copyWith => _$TrainingScheduleUser_SuccessCopyWithImpl<TrainingScheduleUser_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingScheduleUser_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainingScheduleUserState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainingScheduleUser_SuccessCopyWith<$Res> implements $TrainingScheduleUserStateCopyWith<$Res> {
  factory $TrainingScheduleUser_SuccessCopyWith(TrainingScheduleUser_Success value, $Res Function(TrainingScheduleUser_Success) _then) = _$TrainingScheduleUser_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainingScheduleUser_SuccessCopyWithImpl<$Res>
    implements $TrainingScheduleUser_SuccessCopyWith<$Res> {
  _$TrainingScheduleUser_SuccessCopyWithImpl(this._self, this._then);

  final TrainingScheduleUser_Success _self;
  final $Res Function(TrainingScheduleUser_Success) _then;

/// Create a copy of TrainingScheduleUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainingScheduleUser_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
