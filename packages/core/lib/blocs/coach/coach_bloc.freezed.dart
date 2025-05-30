// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoachEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachEvent()';
}


}

/// @nodoc
class $CoachEventCopyWith<$Res>  {
$CoachEventCopyWith(CoachEvent _, $Res Function(CoachEvent) __);
}


/// @nodoc


class _CreateCoach implements CoachEvent {
  const _CreateCoach(this.coach);
  

 final  Coach coach;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCoachCopyWith<_CreateCoach> get copyWith => __$CreateCoachCopyWithImpl<_CreateCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCoach&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,coach);

@override
String toString() {
  return 'CoachEvent.createCoach(coach: $coach)';
}


}

/// @nodoc
abstract mixin class _$CreateCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$CreateCoachCopyWith(_CreateCoach value, $Res Function(_CreateCoach) _then) = __$CreateCoachCopyWithImpl;
@useResult
$Res call({
 Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class __$CreateCoachCopyWithImpl<$Res>
    implements _$CreateCoachCopyWith<$Res> {
  __$CreateCoachCopyWithImpl(this._self, this._then);

  final _CreateCoach _self;
  final $Res Function(_CreateCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coach = null,}) {
  return _then(_CreateCoach(
null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class _GetCoachById implements CoachEvent {
  const _GetCoachById(this.id);
  

 final  String id;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachByIdCopyWith<_GetCoachById> get copyWith => __$GetCoachByIdCopyWithImpl<_GetCoachById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachEvent.getCoachById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetCoachByIdCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$GetCoachByIdCopyWith(_GetCoachById value, $Res Function(_GetCoachById) _then) = __$GetCoachByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetCoachByIdCopyWithImpl<$Res>
    implements _$GetCoachByIdCopyWith<$Res> {
  __$GetCoachByIdCopyWithImpl(this._self, this._then);

  final _GetCoachById _self;
  final $Res Function(_GetCoachById) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetCoachById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetCoachByUserId implements CoachEvent {
  const _GetCoachByUserId(this.userId);
  

 final  String userId;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCoachByUserIdCopyWith<_GetCoachByUserId> get copyWith => __$GetCoachByUserIdCopyWithImpl<_GetCoachByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCoachByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CoachEvent.getCoachByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetCoachByUserIdCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$GetCoachByUserIdCopyWith(_GetCoachByUserId value, $Res Function(_GetCoachByUserId) _then) = __$GetCoachByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetCoachByUserIdCopyWithImpl<$Res>
    implements _$GetCoachByUserIdCopyWith<$Res> {
  __$GetCoachByUserIdCopyWithImpl(this._self, this._then);

  final _GetCoachByUserId _self;
  final $Res Function(_GetCoachByUserId) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetCoachByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllCoaches implements CoachEvent {
  const GetAllCoaches({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCoachesCopyWith<GetAllCoaches> get copyWith => _$GetAllCoachesCopyWithImpl<GetAllCoaches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCoaches&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'CoachEvent.getAllCoaches(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllCoachesCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory $GetAllCoachesCopyWith(GetAllCoaches value, $Res Function(GetAllCoaches) _then) = _$GetAllCoachesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllCoachesCopyWithImpl<$Res>
    implements $GetAllCoachesCopyWith<$Res> {
  _$GetAllCoachesCopyWithImpl(this._self, this._then);

  final GetAllCoaches _self;
  final $Res Function(GetAllCoaches) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllCoaches(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateCoach implements CoachEvent {
  const _UpdateCoach(this.id, this.coach);
  

 final  String id;
 final  Coach coach;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCoachCopyWith<_UpdateCoach> get copyWith => __$UpdateCoachCopyWithImpl<_UpdateCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCoach&&(identical(other.id, id) || other.id == id)&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,id,coach);

@override
String toString() {
  return 'CoachEvent.updateCoach(id: $id, coach: $coach)';
}


}

/// @nodoc
abstract mixin class _$UpdateCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$UpdateCoachCopyWith(_UpdateCoach value, $Res Function(_UpdateCoach) _then) = __$UpdateCoachCopyWithImpl;
@useResult
$Res call({
 String id, Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class __$UpdateCoachCopyWithImpl<$Res>
    implements _$UpdateCoachCopyWith<$Res> {
  __$UpdateCoachCopyWithImpl(this._self, this._then);

  final _UpdateCoach _self;
  final $Res Function(_UpdateCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? coach = null,}) {
  return _then(_UpdateCoach(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class _DeleteCoach implements CoachEvent {
  const _DeleteCoach(this.id);
  

 final  String id;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCoachCopyWith<_DeleteCoach> get copyWith => __$DeleteCoachCopyWithImpl<_DeleteCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCoach&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachEvent.deleteCoach(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCoachCopyWith<$Res> implements $CoachEventCopyWith<$Res> {
  factory _$DeleteCoachCopyWith(_DeleteCoach value, $Res Function(_DeleteCoach) _then) = __$DeleteCoachCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCoachCopyWithImpl<$Res>
    implements _$DeleteCoachCopyWith<$Res> {
  __$DeleteCoachCopyWithImpl(this._self, this._then);

  final _DeleteCoach _self;
  final $Res Function(_DeleteCoach) _then;

/// Create a copy of CoachEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCoach(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CoachState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState()';
}


}

/// @nodoc
class $CoachStateCopyWith<$Res>  {
$CoachStateCopyWith(CoachState _, $Res Function(CoachState) __);
}


/// @nodoc


class Coach_Initial implements CoachState {
  const Coach_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState.initial()';
}


}




/// @nodoc


class Coach_Loading implements CoachState {
  const Coach_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachState.loading()';
}


}




/// @nodoc


class LoadedCoach implements CoachState {
  const LoadedCoach(this.coach);
  

 final  Coach coach;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachCopyWith<LoadedCoach> get copyWith => _$LoadedCoachCopyWithImpl<LoadedCoach>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoach&&(identical(other.coach, coach) || other.coach == coach));
}


@override
int get hashCode => Object.hash(runtimeType,coach);

@override
String toString() {
  return 'CoachState.loadedCoach(coach: $coach)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $LoadedCoachCopyWith(LoadedCoach value, $Res Function(LoadedCoach) _then) = _$LoadedCoachCopyWithImpl;
@useResult
$Res call({
 Coach coach
});


$CoachCopyWith<$Res> get coach;

}
/// @nodoc
class _$LoadedCoachCopyWithImpl<$Res>
    implements $LoadedCoachCopyWith<$Res> {
  _$LoadedCoachCopyWithImpl(this._self, this._then);

  final LoadedCoach _self;
  final $Res Function(LoadedCoach) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coach = null,}) {
  return _then(LoadedCoach(
null == coach ? _self.coach : coach // ignore: cast_nullable_to_non_nullable
as Coach,
  ));
}

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachCopyWith<$Res> get coach {
  
  return $CoachCopyWith<$Res>(_self.coach, (value) {
    return _then(_self.copyWith(coach: value));
  });
}
}

/// @nodoc


class LoadedCoaches implements CoachState {
  const LoadedCoaches(final  List<Coach> coaches, this.currentPage, this.limit, this.hasMore): _coaches = coaches;
  

 final  List<Coach> _coaches;
 List<Coach> get coaches {
  if (_coaches is EqualUnmodifiableListView) return _coaches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coaches);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachesCopyWith<LoadedCoaches> get copyWith => _$LoadedCoachesCopyWithImpl<LoadedCoaches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoaches&&const DeepCollectionEquality().equals(other._coaches, _coaches)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coaches),currentPage,limit,hasMore);

@override
String toString() {
  return 'CoachState.loadedCoaches(coaches: $coaches, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachesCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $LoadedCoachesCopyWith(LoadedCoaches value, $Res Function(LoadedCoaches) _then) = _$LoadedCoachesCopyWithImpl;
@useResult
$Res call({
 List<Coach> coaches, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedCoachesCopyWithImpl<$Res>
    implements $LoadedCoachesCopyWith<$Res> {
  _$LoadedCoachesCopyWithImpl(this._self, this._then);

  final LoadedCoaches _self;
  final $Res Function(LoadedCoaches) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coaches = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedCoaches(
null == coaches ? _self._coaches : coaches // ignore: cast_nullable_to_non_nullable
as List<Coach>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Coach_Error implements CoachState {
  const Coach_Error(this.message);
  

 final  String message;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Coach_ErrorCopyWith<Coach_Error> get copyWith => _$Coach_ErrorCopyWithImpl<Coach_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Coach_ErrorCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $Coach_ErrorCopyWith(Coach_Error value, $Res Function(Coach_Error) _then) = _$Coach_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Coach_ErrorCopyWithImpl<$Res>
    implements $Coach_ErrorCopyWith<$Res> {
  _$Coach_ErrorCopyWithImpl(this._self, this._then);

  final Coach_Error _self;
  final $Res Function(Coach_Error) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Coach_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Coach_Success implements CoachState {
  const Coach_Success(this.message);
  

 final  String message;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Coach_SuccessCopyWith<Coach_Success> get copyWith => _$Coach_SuccessCopyWithImpl<Coach_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coach_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Coach_SuccessCopyWith<$Res> implements $CoachStateCopyWith<$Res> {
  factory $Coach_SuccessCopyWith(Coach_Success value, $Res Function(Coach_Success) _then) = _$Coach_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Coach_SuccessCopyWithImpl<$Res>
    implements $Coach_SuccessCopyWith<$Res> {
  _$Coach_SuccessCopyWithImpl(this._self, this._then);

  final Coach_Success _self;
  final $Res Function(Coach_Success) _then;

/// Create a copy of CoachState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Coach_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
