// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AthleteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AthleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteEvent()';
}


}

/// @nodoc
class $AthleteEventCopyWith<$Res>  {
$AthleteEventCopyWith(AthleteEvent _, $Res Function(AthleteEvent) __);
}


/// @nodoc


class _CreateAthlete implements AthleteEvent {
  const _CreateAthlete(this.athlete);
  

 final  Athlete athlete;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAthleteCopyWith<_CreateAthlete> get copyWith => __$CreateAthleteCopyWithImpl<_CreateAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAthlete&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,athlete);

@override
String toString() {
  return 'AthleteEvent.createAthlete(athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class _$CreateAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$CreateAthleteCopyWith(_CreateAthlete value, $Res Function(_CreateAthlete) _then) = __$CreateAthleteCopyWithImpl;
@useResult
$Res call({
 Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class __$CreateAthleteCopyWithImpl<$Res>
    implements _$CreateAthleteCopyWith<$Res> {
  __$CreateAthleteCopyWithImpl(this._self, this._then);

  final _CreateAthlete _self;
  final $Res Function(_CreateAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athlete = null,}) {
  return _then(_CreateAthlete(
null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class _GetAthleteById implements AthleteEvent {
  const _GetAthleteById(this.id);
  

 final  String id;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAthleteByIdCopyWith<_GetAthleteById> get copyWith => __$GetAthleteByIdCopyWithImpl<_GetAthleteById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAthleteById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AthleteEvent.getAthleteById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetAthleteByIdCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAthleteByIdCopyWith(_GetAthleteById value, $Res Function(_GetAthleteById) _then) = __$GetAthleteByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetAthleteByIdCopyWithImpl<$Res>
    implements _$GetAthleteByIdCopyWith<$Res> {
  __$GetAthleteByIdCopyWithImpl(this._self, this._then);

  final _GetAthleteById _self;
  final $Res Function(_GetAthleteById) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetAthleteById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAthleteByUserId implements AthleteEvent {
  const _GetAthleteByUserId(this.userId);
  

 final  String userId;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAthleteByUserIdCopyWith<_GetAthleteByUserId> get copyWith => __$GetAthleteByUserIdCopyWithImpl<_GetAthleteByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAthleteByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'AthleteEvent.getAthleteByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetAthleteByUserIdCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAthleteByUserIdCopyWith(_GetAthleteByUserId value, $Res Function(_GetAthleteByUserId) _then) = __$GetAthleteByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetAthleteByUserIdCopyWithImpl<$Res>
    implements _$GetAthleteByUserIdCopyWith<$Res> {
  __$GetAthleteByUserIdCopyWithImpl(this._self, this._then);

  final _GetAthleteByUserId _self;
  final $Res Function(_GetAthleteByUserId) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetAthleteByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllAthletes implements AthleteEvent {
  const _GetAllAthletes({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllAthletesCopyWith<_GetAllAthletes> get copyWith => __$GetAllAthletesCopyWithImpl<_GetAllAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllAthletes&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'AthleteEvent.getAllAthletes(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllAthletesCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$GetAllAthletesCopyWith(_GetAllAthletes value, $Res Function(_GetAllAthletes) _then) = __$GetAllAthletesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllAthletesCopyWithImpl<$Res>
    implements _$GetAllAthletesCopyWith<$Res> {
  __$GetAllAthletesCopyWithImpl(this._self, this._then);

  final _GetAllAthletes _self;
  final $Res Function(_GetAllAthletes) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllAthletes(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateAthlete implements AthleteEvent {
  const _UpdateAthlete(this.id, this.athlete);
  

 final  String id;
 final  Athlete athlete;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAthleteCopyWith<_UpdateAthlete> get copyWith => __$UpdateAthleteCopyWithImpl<_UpdateAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,id,athlete);

@override
String toString() {
  return 'AthleteEvent.updateAthlete(id: $id, athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class _$UpdateAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$UpdateAthleteCopyWith(_UpdateAthlete value, $Res Function(_UpdateAthlete) _then) = __$UpdateAthleteCopyWithImpl;
@useResult
$Res call({
 String id, Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class __$UpdateAthleteCopyWithImpl<$Res>
    implements _$UpdateAthleteCopyWith<$Res> {
  __$UpdateAthleteCopyWithImpl(this._self, this._then);

  final _UpdateAthlete _self;
  final $Res Function(_UpdateAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? athlete = null,}) {
  return _then(_UpdateAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class _DeleteAthlete implements AthleteEvent {
  const _DeleteAthlete(this.id);
  

 final  String id;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAthleteCopyWith<_DeleteAthlete> get copyWith => __$DeleteAthleteCopyWithImpl<_DeleteAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAthlete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AthleteEvent.deleteAthlete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteAthleteCopyWith<$Res> implements $AthleteEventCopyWith<$Res> {
  factory _$DeleteAthleteCopyWith(_DeleteAthlete value, $Res Function(_DeleteAthlete) _then) = __$DeleteAthleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteAthleteCopyWithImpl<$Res>
    implements _$DeleteAthleteCopyWith<$Res> {
  __$DeleteAthleteCopyWithImpl(this._self, this._then);

  final _DeleteAthlete _self;
  final $Res Function(_DeleteAthlete) _then;

/// Create a copy of AthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AthleteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AthleteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState()';
}


}

/// @nodoc
class $AthleteStateCopyWith<$Res>  {
$AthleteStateCopyWith(AthleteState _, $Res Function(AthleteState) __);
}


/// @nodoc


class Athlete_Initial implements AthleteState {
  const Athlete_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState.initial()';
}


}




/// @nodoc


class Athlete_Loading implements AthleteState {
  const Athlete_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AthleteState.loading()';
}


}




/// @nodoc


class LoadedAthlete implements AthleteState {
  const LoadedAthlete(this.athlete);
  

 final  Athlete athlete;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAthleteCopyWith<LoadedAthlete> get copyWith => _$LoadedAthleteCopyWithImpl<LoadedAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAthlete&&(identical(other.athlete, athlete) || other.athlete == athlete));
}


@override
int get hashCode => Object.hash(runtimeType,athlete);

@override
String toString() {
  return 'AthleteState.loadedAthlete(athlete: $athlete)';
}


}

/// @nodoc
abstract mixin class $LoadedAthleteCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $LoadedAthleteCopyWith(LoadedAthlete value, $Res Function(LoadedAthlete) _then) = _$LoadedAthleteCopyWithImpl;
@useResult
$Res call({
 Athlete athlete
});


$AthleteCopyWith<$Res> get athlete;

}
/// @nodoc
class _$LoadedAthleteCopyWithImpl<$Res>
    implements $LoadedAthleteCopyWith<$Res> {
  _$LoadedAthleteCopyWithImpl(this._self, this._then);

  final LoadedAthlete _self;
  final $Res Function(LoadedAthlete) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athlete = null,}) {
  return _then(LoadedAthlete(
null == athlete ? _self.athlete : athlete // ignore: cast_nullable_to_non_nullable
as Athlete,
  ));
}

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AthleteCopyWith<$Res> get athlete {
  
  return $AthleteCopyWith<$Res>(_self.athlete, (value) {
    return _then(_self.copyWith(athlete: value));
  });
}
}

/// @nodoc


class LoadedAthletes implements AthleteState {
  const LoadedAthletes(final  List<Athlete> athletes, this.currentPage, this.limit, this.hasMore): _athletes = athletes;
  

 final  List<Athlete> _athletes;
 List<Athlete> get athletes {
  if (_athletes is EqualUnmodifiableListView) return _athletes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_athletes);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAthletesCopyWith<LoadedAthletes> get copyWith => _$LoadedAthletesCopyWithImpl<LoadedAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAthletes&&const DeepCollectionEquality().equals(other._athletes, _athletes)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_athletes),currentPage,limit,hasMore);

@override
String toString() {
  return 'AthleteState.loadedAthletes(athletes: $athletes, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedAthletesCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $LoadedAthletesCopyWith(LoadedAthletes value, $Res Function(LoadedAthletes) _then) = _$LoadedAthletesCopyWithImpl;
@useResult
$Res call({
 List<Athlete> athletes, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedAthletesCopyWithImpl<$Res>
    implements $LoadedAthletesCopyWith<$Res> {
  _$LoadedAthletesCopyWithImpl(this._self, this._then);

  final LoadedAthletes _self;
  final $Res Function(LoadedAthletes) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athletes = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedAthletes(
null == athletes ? _self._athletes : athletes // ignore: cast_nullable_to_non_nullable
as List<Athlete>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Athlete_Error implements AthleteState {
  const Athlete_Error(this.message);
  

 final  String message;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Athlete_ErrorCopyWith<Athlete_Error> get copyWith => _$Athlete_ErrorCopyWithImpl<Athlete_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AthleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Athlete_ErrorCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $Athlete_ErrorCopyWith(Athlete_Error value, $Res Function(Athlete_Error) _then) = _$Athlete_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Athlete_ErrorCopyWithImpl<$Res>
    implements $Athlete_ErrorCopyWith<$Res> {
  _$Athlete_ErrorCopyWithImpl(this._self, this._then);

  final Athlete_Error _self;
  final $Res Function(Athlete_Error) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Athlete_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Athlete_Success implements AthleteState {
  const Athlete_Success(this.message);
  

 final  String message;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Athlete_SuccessCopyWith<Athlete_Success> get copyWith => _$Athlete_SuccessCopyWithImpl<Athlete_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Athlete_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AthleteState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Athlete_SuccessCopyWith<$Res> implements $AthleteStateCopyWith<$Res> {
  factory $Athlete_SuccessCopyWith(Athlete_Success value, $Res Function(Athlete_Success) _then) = _$Athlete_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Athlete_SuccessCopyWithImpl<$Res>
    implements $Athlete_SuccessCopyWith<$Res> {
  _$Athlete_SuccessCopyWithImpl(this._self, this._then);

  final Athlete_Success _self;
  final $Res Function(Athlete_Success) _then;

/// Create a copy of AthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Athlete_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
