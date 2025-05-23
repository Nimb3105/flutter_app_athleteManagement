// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_athlete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SportAthleteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportAthleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportAthleteEvent()';
}


}

/// @nodoc
class $SportAthleteEventCopyWith<$Res>  {
$SportAthleteEventCopyWith(SportAthleteEvent _, $Res Function(SportAthleteEvent) __);
}


/// @nodoc


class _CreateSportAthlete implements SportAthleteEvent {
  const _CreateSportAthlete(this.sportAthlete);
  

 final  SportAthlete sportAthlete;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSportAthleteCopyWith<_CreateSportAthlete> get copyWith => __$CreateSportAthleteCopyWithImpl<_CreateSportAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSportAthlete&&(identical(other.sportAthlete, sportAthlete) || other.sportAthlete == sportAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,sportAthlete);

@override
String toString() {
  return 'SportAthleteEvent.createSportAthlete(sportAthlete: $sportAthlete)';
}


}

/// @nodoc
abstract mixin class _$CreateSportAthleteCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$CreateSportAthleteCopyWith(_CreateSportAthlete value, $Res Function(_CreateSportAthlete) _then) = __$CreateSportAthleteCopyWithImpl;
@useResult
$Res call({
 SportAthlete sportAthlete
});


$SportAthleteCopyWith<$Res> get sportAthlete;

}
/// @nodoc
class __$CreateSportAthleteCopyWithImpl<$Res>
    implements _$CreateSportAthleteCopyWith<$Res> {
  __$CreateSportAthleteCopyWithImpl(this._self, this._then);

  final _CreateSportAthlete _self;
  final $Res Function(_CreateSportAthlete) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportAthlete = null,}) {
  return _then(_CreateSportAthlete(
null == sportAthlete ? _self.sportAthlete : sportAthlete // ignore: cast_nullable_to_non_nullable
as SportAthlete,
  ));
}

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportAthleteCopyWith<$Res> get sportAthlete {
  
  return $SportAthleteCopyWith<$Res>(_self.sportAthlete, (value) {
    return _then(_self.copyWith(sportAthlete: value));
  });
}
}

/// @nodoc


class _GetSportAthleteById implements SportAthleteEvent {
  const _GetSportAthleteById(this.id);
  

 final  String id;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportAthleteByIdCopyWith<_GetSportAthleteById> get copyWith => __$GetSportAthleteByIdCopyWithImpl<_GetSportAthleteById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportAthleteById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportAthleteEvent.getSportAthleteById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetSportAthleteByIdCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$GetSportAthleteByIdCopyWith(_GetSportAthleteById value, $Res Function(_GetSportAthleteById) _then) = __$GetSportAthleteByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetSportAthleteByIdCopyWithImpl<$Res>
    implements _$GetSportAthleteByIdCopyWith<$Res> {
  __$GetSportAthleteByIdCopyWithImpl(this._self, this._then);

  final _GetSportAthleteById _self;
  final $Res Function(_GetSportAthleteById) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetSportAthleteById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSportAthleteByUserId implements SportAthleteEvent {
  const _GetSportAthleteByUserId(this.userId);
  

 final  String userId;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportAthleteByUserIdCopyWith<_GetSportAthleteByUserId> get copyWith => __$GetSportAthleteByUserIdCopyWithImpl<_GetSportAthleteByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportAthleteByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SportAthleteEvent.getSportAthleteByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetSportAthleteByUserIdCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$GetSportAthleteByUserIdCopyWith(_GetSportAthleteByUserId value, $Res Function(_GetSportAthleteByUserId) _then) = __$GetSportAthleteByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetSportAthleteByUserIdCopyWithImpl<$Res>
    implements _$GetSportAthleteByUserIdCopyWith<$Res> {
  __$GetSportAthleteByUserIdCopyWithImpl(this._self, this._then);

  final _GetSportAthleteByUserId _self;
  final $Res Function(_GetSportAthleteByUserId) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetSportAthleteByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllSportAthleteByUserId implements SportAthleteEvent {
  const _GetAllSportAthleteByUserId(this.userId);
  

 final  String userId;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllSportAthleteByUserIdCopyWith<_GetAllSportAthleteByUserId> get copyWith => __$GetAllSportAthleteByUserIdCopyWithImpl<_GetAllSportAthleteByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllSportAthleteByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SportAthleteEvent.getAllSportAthleteByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetAllSportAthleteByUserIdCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$GetAllSportAthleteByUserIdCopyWith(_GetAllSportAthleteByUserId value, $Res Function(_GetAllSportAthleteByUserId) _then) = __$GetAllSportAthleteByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetAllSportAthleteByUserIdCopyWithImpl<$Res>
    implements _$GetAllSportAthleteByUserIdCopyWith<$Res> {
  __$GetAllSportAthleteByUserIdCopyWithImpl(this._self, this._then);

  final _GetAllSportAthleteByUserId _self;
  final $Res Function(_GetAllSportAthleteByUserId) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetAllSportAthleteByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSportAthleteBySportId implements SportAthleteEvent {
  const _GetSportAthleteBySportId(this.sportId);
  

 final  String sportId;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSportAthleteBySportIdCopyWith<_GetSportAthleteBySportId> get copyWith => __$GetSportAthleteBySportIdCopyWithImpl<_GetSportAthleteBySportId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSportAthleteBySportId&&(identical(other.sportId, sportId) || other.sportId == sportId));
}


@override
int get hashCode => Object.hash(runtimeType,sportId);

@override
String toString() {
  return 'SportAthleteEvent.getSportAthleteBySportId(sportId: $sportId)';
}


}

/// @nodoc
abstract mixin class _$GetSportAthleteBySportIdCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$GetSportAthleteBySportIdCopyWith(_GetSportAthleteBySportId value, $Res Function(_GetSportAthleteBySportId) _then) = __$GetSportAthleteBySportIdCopyWithImpl;
@useResult
$Res call({
 String sportId
});




}
/// @nodoc
class __$GetSportAthleteBySportIdCopyWithImpl<$Res>
    implements _$GetSportAthleteBySportIdCopyWith<$Res> {
  __$GetSportAthleteBySportIdCopyWithImpl(this._self, this._then);

  final _GetSportAthleteBySportId _self;
  final $Res Function(_GetSportAthleteBySportId) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,}) {
  return _then(_GetSportAthleteBySportId(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllSportAthletes implements SportAthleteEvent {
  const _GetAllSportAthletes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllSportAthletes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportAthleteEvent.getAllSportAthletes()';
}


}




/// @nodoc


class _UpdateSportAthlete implements SportAthleteEvent {
  const _UpdateSportAthlete(this.id, this.sportAthlete);
  

 final  String id;
 final  SportAthlete sportAthlete;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSportAthleteCopyWith<_UpdateSportAthlete> get copyWith => __$UpdateSportAthleteCopyWithImpl<_UpdateSportAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSportAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.sportAthlete, sportAthlete) || other.sportAthlete == sportAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,id,sportAthlete);

@override
String toString() {
  return 'SportAthleteEvent.updateSportAthlete(id: $id, sportAthlete: $sportAthlete)';
}


}

/// @nodoc
abstract mixin class _$UpdateSportAthleteCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$UpdateSportAthleteCopyWith(_UpdateSportAthlete value, $Res Function(_UpdateSportAthlete) _then) = __$UpdateSportAthleteCopyWithImpl;
@useResult
$Res call({
 String id, SportAthlete sportAthlete
});


$SportAthleteCopyWith<$Res> get sportAthlete;

}
/// @nodoc
class __$UpdateSportAthleteCopyWithImpl<$Res>
    implements _$UpdateSportAthleteCopyWith<$Res> {
  __$UpdateSportAthleteCopyWithImpl(this._self, this._then);

  final _UpdateSportAthlete _self;
  final $Res Function(_UpdateSportAthlete) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sportAthlete = null,}) {
  return _then(_UpdateSportAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == sportAthlete ? _self.sportAthlete : sportAthlete // ignore: cast_nullable_to_non_nullable
as SportAthlete,
  ));
}

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportAthleteCopyWith<$Res> get sportAthlete {
  
  return $SportAthleteCopyWith<$Res>(_self.sportAthlete, (value) {
    return _then(_self.copyWith(sportAthlete: value));
  });
}
}

/// @nodoc


class _DeleteSportAthlete implements SportAthleteEvent {
  const _DeleteSportAthlete(this.id);
  

 final  String id;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSportAthleteCopyWith<_DeleteSportAthlete> get copyWith => __$DeleteSportAthleteCopyWithImpl<_DeleteSportAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSportAthlete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportAthleteEvent.deleteSportAthlete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteSportAthleteCopyWith<$Res> implements $SportAthleteEventCopyWith<$Res> {
  factory _$DeleteSportAthleteCopyWith(_DeleteSportAthlete value, $Res Function(_DeleteSportAthlete) _then) = __$DeleteSportAthleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteSportAthleteCopyWithImpl<$Res>
    implements _$DeleteSportAthleteCopyWith<$Res> {
  __$DeleteSportAthleteCopyWithImpl(this._self, this._then);

  final _DeleteSportAthlete _self;
  final $Res Function(_DeleteSportAthlete) _then;

/// Create a copy of SportAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteSportAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SportAthleteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportAthleteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportAthleteState()';
}


}

/// @nodoc
class $SportAthleteStateCopyWith<$Res>  {
$SportAthleteStateCopyWith(SportAthleteState _, $Res Function(SportAthleteState) __);
}


/// @nodoc


class Sport_Athlete_Initial implements SportAthleteState {
  const Sport_Athlete_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Athlete_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportAthleteState.initial()';
}


}




/// @nodoc


class Sport_Athlete_Loading implements SportAthleteState {
  const Sport_Athlete_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Athlete_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportAthleteState.loading()';
}


}




/// @nodoc


class LoadedSportAthlete implements SportAthleteState {
  const LoadedSportAthlete(this.sportAthlete);
  

 final  SportAthlete sportAthlete;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportAthleteCopyWith<LoadedSportAthlete> get copyWith => _$LoadedSportAthleteCopyWithImpl<LoadedSportAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSportAthlete&&(identical(other.sportAthlete, sportAthlete) || other.sportAthlete == sportAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,sportAthlete);

@override
String toString() {
  return 'SportAthleteState.loadedSportAthlete(sportAthlete: $sportAthlete)';
}


}

/// @nodoc
abstract mixin class $LoadedSportAthleteCopyWith<$Res> implements $SportAthleteStateCopyWith<$Res> {
  factory $LoadedSportAthleteCopyWith(LoadedSportAthlete value, $Res Function(LoadedSportAthlete) _then) = _$LoadedSportAthleteCopyWithImpl;
@useResult
$Res call({
 SportAthlete sportAthlete
});


$SportAthleteCopyWith<$Res> get sportAthlete;

}
/// @nodoc
class _$LoadedSportAthleteCopyWithImpl<$Res>
    implements $LoadedSportAthleteCopyWith<$Res> {
  _$LoadedSportAthleteCopyWithImpl(this._self, this._then);

  final LoadedSportAthlete _self;
  final $Res Function(LoadedSportAthlete) _then;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportAthlete = null,}) {
  return _then(LoadedSportAthlete(
null == sportAthlete ? _self.sportAthlete : sportAthlete // ignore: cast_nullable_to_non_nullable
as SportAthlete,
  ));
}

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportAthleteCopyWith<$Res> get sportAthlete {
  
  return $SportAthleteCopyWith<$Res>(_self.sportAthlete, (value) {
    return _then(_self.copyWith(sportAthlete: value));
  });
}
}

/// @nodoc


class LoadedSportAthletes implements SportAthleteState {
  const LoadedSportAthletes(final  List<SportAthlete> sportAthletes, final  Map<String, Sport> sports): _sportAthletes = sportAthletes,_sports = sports;
  

 final  List<SportAthlete> _sportAthletes;
 List<SportAthlete> get sportAthletes {
  if (_sportAthletes is EqualUnmodifiableListView) return _sportAthletes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sportAthletes);
}

 final  Map<String, Sport> _sports;
 Map<String, Sport> get sports {
  if (_sports is EqualUnmodifiableMapView) return _sports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sports);
}


/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportAthletesCopyWith<LoadedSportAthletes> get copyWith => _$LoadedSportAthletesCopyWithImpl<LoadedSportAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSportAthletes&&const DeepCollectionEquality().equals(other._sportAthletes, _sportAthletes)&&const DeepCollectionEquality().equals(other._sports, _sports));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sportAthletes),const DeepCollectionEquality().hash(_sports));

@override
String toString() {
  return 'SportAthleteState.loadedSportAthletes(sportAthletes: $sportAthletes, sports: $sports)';
}


}

/// @nodoc
abstract mixin class $LoadedSportAthletesCopyWith<$Res> implements $SportAthleteStateCopyWith<$Res> {
  factory $LoadedSportAthletesCopyWith(LoadedSportAthletes value, $Res Function(LoadedSportAthletes) _then) = _$LoadedSportAthletesCopyWithImpl;
@useResult
$Res call({
 List<SportAthlete> sportAthletes, Map<String, Sport> sports
});




}
/// @nodoc
class _$LoadedSportAthletesCopyWithImpl<$Res>
    implements $LoadedSportAthletesCopyWith<$Res> {
  _$LoadedSportAthletesCopyWithImpl(this._self, this._then);

  final LoadedSportAthletes _self;
  final $Res Function(LoadedSportAthletes) _then;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportAthletes = null,Object? sports = null,}) {
  return _then(LoadedSportAthletes(
null == sportAthletes ? _self._sportAthletes : sportAthletes // ignore: cast_nullable_to_non_nullable
as List<SportAthlete>,null == sports ? _self._sports : sports // ignore: cast_nullable_to_non_nullable
as Map<String, Sport>,
  ));
}


}

/// @nodoc


class Sport_Athlete_Error implements SportAthleteState {
  const Sport_Athlete_Error(this.message);
  

 final  String message;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_Athlete_ErrorCopyWith<Sport_Athlete_Error> get copyWith => _$Sport_Athlete_ErrorCopyWithImpl<Sport_Athlete_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Athlete_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportAthleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_Athlete_ErrorCopyWith<$Res> implements $SportAthleteStateCopyWith<$Res> {
  factory $Sport_Athlete_ErrorCopyWith(Sport_Athlete_Error value, $Res Function(Sport_Athlete_Error) _then) = _$Sport_Athlete_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_Athlete_ErrorCopyWithImpl<$Res>
    implements $Sport_Athlete_ErrorCopyWith<$Res> {
  _$Sport_Athlete_ErrorCopyWithImpl(this._self, this._then);

  final Sport_Athlete_Error _self;
  final $Res Function(Sport_Athlete_Error) _then;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_Athlete_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Sport_Athlete_Success implements SportAthleteState {
  const Sport_Athlete_Success(this.message);
  

 final  String message;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_Athlete_SuccessCopyWith<Sport_Athlete_Success> get copyWith => _$Sport_Athlete_SuccessCopyWithImpl<Sport_Athlete_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Athlete_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportAthleteState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_Athlete_SuccessCopyWith<$Res> implements $SportAthleteStateCopyWith<$Res> {
  factory $Sport_Athlete_SuccessCopyWith(Sport_Athlete_Success value, $Res Function(Sport_Athlete_Success) _then) = _$Sport_Athlete_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_Athlete_SuccessCopyWithImpl<$Res>
    implements $Sport_Athlete_SuccessCopyWith<$Res> {
  _$Sport_Athlete_SuccessCopyWithImpl(this._self, this._then);

  final Sport_Athlete_Success _self;
  final $Res Function(Sport_Athlete_Success) _then;

/// Create a copy of SportAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_Athlete_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
