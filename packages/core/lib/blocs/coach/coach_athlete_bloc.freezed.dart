// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_athlete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoachAthleteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachAthleteEvent()';
}


}

/// @nodoc
class $CoachAthleteEventCopyWith<$Res>  {
$CoachAthleteEventCopyWith(CoachAthleteEvent _, $Res Function(CoachAthleteEvent) __);
}


/// @nodoc


class CreateCoachAthlete implements CoachAthleteEvent {
  const CreateCoachAthlete(this.coachAthlete);
  

 final  CoachAthlete coachAthlete;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCoachAthleteCopyWith<CreateCoachAthlete> get copyWith => _$CreateCoachAthleteCopyWithImpl<CreateCoachAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCoachAthlete&&(identical(other.coachAthlete, coachAthlete) || other.coachAthlete == coachAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,coachAthlete);

@override
String toString() {
  return 'CoachAthleteEvent.createCoachAthlete(coachAthlete: $coachAthlete)';
}


}

/// @nodoc
abstract mixin class $CreateCoachAthleteCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $CreateCoachAthleteCopyWith(CreateCoachAthlete value, $Res Function(CreateCoachAthlete) _then) = _$CreateCoachAthleteCopyWithImpl;
@useResult
$Res call({
 CoachAthlete coachAthlete
});


$CoachAthleteCopyWith<$Res> get coachAthlete;

}
/// @nodoc
class _$CreateCoachAthleteCopyWithImpl<$Res>
    implements $CreateCoachAthleteCopyWith<$Res> {
  _$CreateCoachAthleteCopyWithImpl(this._self, this._then);

  final CreateCoachAthlete _self;
  final $Res Function(CreateCoachAthlete) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coachAthlete = null,}) {
  return _then(CreateCoachAthlete(
null == coachAthlete ? _self.coachAthlete : coachAthlete // ignore: cast_nullable_to_non_nullable
as CoachAthlete,
  ));
}

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachAthleteCopyWith<$Res> get coachAthlete {
  
  return $CoachAthleteCopyWith<$Res>(_self.coachAthlete, (value) {
    return _then(_self.copyWith(coachAthlete: value));
  });
}
}

/// @nodoc


class GetCoachAthleteById implements CoachAthleteEvent {
  const GetCoachAthleteById(this.id);
  

 final  String id;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCoachAthleteByIdCopyWith<GetCoachAthleteById> get copyWith => _$GetCoachAthleteByIdCopyWithImpl<GetCoachAthleteById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCoachAthleteById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachAthleteEvent.getCoachAthleteById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetCoachAthleteByIdCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $GetCoachAthleteByIdCopyWith(GetCoachAthleteById value, $Res Function(GetCoachAthleteById) _then) = _$GetCoachAthleteByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetCoachAthleteByIdCopyWithImpl<$Res>
    implements $GetCoachAthleteByIdCopyWith<$Res> {
  _$GetCoachAthleteByIdCopyWithImpl(this._self, this._then);

  final GetCoachAthleteById _self;
  final $Res Function(GetCoachAthleteById) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetCoachAthleteById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetByAthleteId implements CoachAthleteEvent {
  const GetByAthleteId(this.athleteId);
  

 final  String athleteId;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetByAthleteIdCopyWith<GetByAthleteId> get copyWith => _$GetByAthleteIdCopyWithImpl<GetByAthleteId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetByAthleteId&&(identical(other.athleteId, athleteId) || other.athleteId == athleteId));
}


@override
int get hashCode => Object.hash(runtimeType,athleteId);

@override
String toString() {
  return 'CoachAthleteEvent.getByAthleteId(athleteId: $athleteId)';
}


}

/// @nodoc
abstract mixin class $GetByAthleteIdCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $GetByAthleteIdCopyWith(GetByAthleteId value, $Res Function(GetByAthleteId) _then) = _$GetByAthleteIdCopyWithImpl;
@useResult
$Res call({
 String athleteId
});




}
/// @nodoc
class _$GetByAthleteIdCopyWithImpl<$Res>
    implements $GetByAthleteIdCopyWith<$Res> {
  _$GetByAthleteIdCopyWithImpl(this._self, this._then);

  final GetByAthleteId _self;
  final $Res Function(GetByAthleteId) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? athleteId = null,}) {
  return _then(GetByAthleteId(
null == athleteId ? _self.athleteId : athleteId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllCoachAthletes implements CoachAthleteEvent {
  const GetAllCoachAthletes({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCoachAthletesCopyWith<GetAllCoachAthletes> get copyWith => _$GetAllCoachAthletesCopyWithImpl<GetAllCoachAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCoachAthletes&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'CoachAthleteEvent.getAllCoachAthletes(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllCoachAthletesCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $GetAllCoachAthletesCopyWith(GetAllCoachAthletes value, $Res Function(GetAllCoachAthletes) _then) = _$GetAllCoachAthletesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllCoachAthletesCopyWithImpl<$Res>
    implements $GetAllCoachAthletesCopyWith<$Res> {
  _$GetAllCoachAthletesCopyWithImpl(this._self, this._then);

  final GetAllCoachAthletes _self;
  final $Res Function(GetAllCoachAthletes) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllCoachAthletes(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateCoachAthlete implements CoachAthleteEvent {
  const UpdateCoachAthlete(this.id, this.coachAthlete);
  

 final  String id;
 final  CoachAthlete coachAthlete;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCoachAthleteCopyWith<UpdateCoachAthlete> get copyWith => _$UpdateCoachAthleteCopyWithImpl<UpdateCoachAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCoachAthlete&&(identical(other.id, id) || other.id == id)&&(identical(other.coachAthlete, coachAthlete) || other.coachAthlete == coachAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,id,coachAthlete);

@override
String toString() {
  return 'CoachAthleteEvent.updateCoachAthlete(id: $id, coachAthlete: $coachAthlete)';
}


}

/// @nodoc
abstract mixin class $UpdateCoachAthleteCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $UpdateCoachAthleteCopyWith(UpdateCoachAthlete value, $Res Function(UpdateCoachAthlete) _then) = _$UpdateCoachAthleteCopyWithImpl;
@useResult
$Res call({
 String id, CoachAthlete coachAthlete
});


$CoachAthleteCopyWith<$Res> get coachAthlete;

}
/// @nodoc
class _$UpdateCoachAthleteCopyWithImpl<$Res>
    implements $UpdateCoachAthleteCopyWith<$Res> {
  _$UpdateCoachAthleteCopyWithImpl(this._self, this._then);

  final UpdateCoachAthlete _self;
  final $Res Function(UpdateCoachAthlete) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? coachAthlete = null,}) {
  return _then(UpdateCoachAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == coachAthlete ? _self.coachAthlete : coachAthlete // ignore: cast_nullable_to_non_nullable
as CoachAthlete,
  ));
}

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachAthleteCopyWith<$Res> get coachAthlete {
  
  return $CoachAthleteCopyWith<$Res>(_self.coachAthlete, (value) {
    return _then(_self.copyWith(coachAthlete: value));
  });
}
}

/// @nodoc


class DeleteCoachAthlete implements CoachAthleteEvent {
  const DeleteCoachAthlete(this.id);
  

 final  String id;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCoachAthleteCopyWith<DeleteCoachAthlete> get copyWith => _$DeleteCoachAthleteCopyWithImpl<DeleteCoachAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCoachAthlete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CoachAthleteEvent.deleteCoachAthlete(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteCoachAthleteCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $DeleteCoachAthleteCopyWith(DeleteCoachAthlete value, $Res Function(DeleteCoachAthlete) _then) = _$DeleteCoachAthleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteCoachAthleteCopyWithImpl<$Res>
    implements $DeleteCoachAthleteCopyWith<$Res> {
  _$DeleteCoachAthleteCopyWithImpl(this._self, this._then);

  final DeleteCoachAthlete _self;
  final $Res Function(DeleteCoachAthlete) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteCoachAthlete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllByCoachId implements CoachAthleteEvent {
  const GetAllByCoachId(this.coachId, {this.page = 1, this.limit = 10});
  

 final  String coachId;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllByCoachIdCopyWith<GetAllByCoachId> get copyWith => _$GetAllByCoachIdCopyWithImpl<GetAllByCoachId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllByCoachId&&(identical(other.coachId, coachId) || other.coachId == coachId)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,coachId,page,limit);

@override
String toString() {
  return 'CoachAthleteEvent.getAllByCoachId(coachId: $coachId, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllByCoachIdCopyWith<$Res> implements $CoachAthleteEventCopyWith<$Res> {
  factory $GetAllByCoachIdCopyWith(GetAllByCoachId value, $Res Function(GetAllByCoachId) _then) = _$GetAllByCoachIdCopyWithImpl;
@useResult
$Res call({
 String coachId, int page, int limit
});




}
/// @nodoc
class _$GetAllByCoachIdCopyWithImpl<$Res>
    implements $GetAllByCoachIdCopyWith<$Res> {
  _$GetAllByCoachIdCopyWithImpl(this._self, this._then);

  final GetAllByCoachId _self;
  final $Res Function(GetAllByCoachId) _then;

/// Create a copy of CoachAthleteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coachId = null,Object? page = null,Object? limit = null,}) {
  return _then(GetAllByCoachId(
null == coachId ? _self.coachId : coachId // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CoachAthleteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthleteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachAthleteState()';
}


}

/// @nodoc
class $CoachAthleteStateCopyWith<$Res>  {
$CoachAthleteStateCopyWith(CoachAthleteState _, $Res Function(CoachAthleteState) __);
}


/// @nodoc


class CoachAthlete_Initial implements CoachAthleteState {
  const CoachAthlete_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachAthleteState.initial()';
}


}




/// @nodoc


class CoachAthlete_Loading implements CoachAthleteState {
  const CoachAthlete_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachAthleteState.loading()';
}


}




/// @nodoc


class CoachAthlete_LoadingMore implements CoachAthleteState {
  const CoachAthlete_LoadingMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete_LoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoachAthleteState.loadingMore()';
}


}




/// @nodoc


class LoadedCoachAthlete implements CoachAthleteState {
  const LoadedCoachAthlete(this.coachAthlete);
  

 final  CoachAthlete? coachAthlete;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachAthleteCopyWith<LoadedCoachAthlete> get copyWith => _$LoadedCoachAthleteCopyWithImpl<LoadedCoachAthlete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoachAthlete&&(identical(other.coachAthlete, coachAthlete) || other.coachAthlete == coachAthlete));
}


@override
int get hashCode => Object.hash(runtimeType,coachAthlete);

@override
String toString() {
  return 'CoachAthleteState.loadedCoachAthlete(coachAthlete: $coachAthlete)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachAthleteCopyWith<$Res> implements $CoachAthleteStateCopyWith<$Res> {
  factory $LoadedCoachAthleteCopyWith(LoadedCoachAthlete value, $Res Function(LoadedCoachAthlete) _then) = _$LoadedCoachAthleteCopyWithImpl;
@useResult
$Res call({
 CoachAthlete? coachAthlete
});


$CoachAthleteCopyWith<$Res>? get coachAthlete;

}
/// @nodoc
class _$LoadedCoachAthleteCopyWithImpl<$Res>
    implements $LoadedCoachAthleteCopyWith<$Res> {
  _$LoadedCoachAthleteCopyWithImpl(this._self, this._then);

  final LoadedCoachAthlete _self;
  final $Res Function(LoadedCoachAthlete) _then;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coachAthlete = freezed,}) {
  return _then(LoadedCoachAthlete(
freezed == coachAthlete ? _self.coachAthlete : coachAthlete // ignore: cast_nullable_to_non_nullable
as CoachAthlete?,
  ));
}

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoachAthleteCopyWith<$Res>? get coachAthlete {
    if (_self.coachAthlete == null) {
    return null;
  }

  return $CoachAthleteCopyWith<$Res>(_self.coachAthlete!, (value) {
    return _then(_self.copyWith(coachAthlete: value));
  });
}
}

/// @nodoc


class LoadedCoachAthletes implements CoachAthleteState {
  const LoadedCoachAthletes({required final  List<CoachAthlete> coachAthletes, required this.currentPage, required this.limit, required this.hasMore, required final  Map<String, Athlete> athleteMap, required final  Map<String, User?> userMap, required final  Map<String, Sport> sportMap}): _coachAthletes = coachAthletes,_athleteMap = athleteMap,_userMap = userMap,_sportMap = sportMap;
  

 final  List<CoachAthlete> _coachAthletes;
 List<CoachAthlete> get coachAthletes {
  if (_coachAthletes is EqualUnmodifiableListView) return _coachAthletes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coachAthletes);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;
 final  Map<String, Athlete> _athleteMap;
 Map<String, Athlete> get athleteMap {
  if (_athleteMap is EqualUnmodifiableMapView) return _athleteMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_athleteMap);
}

 final  Map<String, User?> _userMap;
 Map<String, User?> get userMap {
  if (_userMap is EqualUnmodifiableMapView) return _userMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_userMap);
}

 final  Map<String, Sport> _sportMap;
 Map<String, Sport> get sportMap {
  if (_sportMap is EqualUnmodifiableMapView) return _sportMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sportMap);
}


/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCoachAthletesCopyWith<LoadedCoachAthletes> get copyWith => _$LoadedCoachAthletesCopyWithImpl<LoadedCoachAthletes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedCoachAthletes&&const DeepCollectionEquality().equals(other._coachAthletes, _coachAthletes)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._athleteMap, _athleteMap)&&const DeepCollectionEquality().equals(other._userMap, _userMap)&&const DeepCollectionEquality().equals(other._sportMap, _sportMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coachAthletes),currentPage,limit,hasMore,const DeepCollectionEquality().hash(_athleteMap),const DeepCollectionEquality().hash(_userMap),const DeepCollectionEquality().hash(_sportMap));

@override
String toString() {
  return 'CoachAthleteState.loadedCoachAthletes(coachAthletes: $coachAthletes, currentPage: $currentPage, limit: $limit, hasMore: $hasMore, athleteMap: $athleteMap, userMap: $userMap, sportMap: $sportMap)';
}


}

/// @nodoc
abstract mixin class $LoadedCoachAthletesCopyWith<$Res> implements $CoachAthleteStateCopyWith<$Res> {
  factory $LoadedCoachAthletesCopyWith(LoadedCoachAthletes value, $Res Function(LoadedCoachAthletes) _then) = _$LoadedCoachAthletesCopyWithImpl;
@useResult
$Res call({
 List<CoachAthlete> coachAthletes, int currentPage, int limit, bool hasMore, Map<String, Athlete> athleteMap, Map<String, User?> userMap, Map<String, Sport> sportMap
});




}
/// @nodoc
class _$LoadedCoachAthletesCopyWithImpl<$Res>
    implements $LoadedCoachAthletesCopyWith<$Res> {
  _$LoadedCoachAthletesCopyWithImpl(this._self, this._then);

  final LoadedCoachAthletes _self;
  final $Res Function(LoadedCoachAthletes) _then;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coachAthletes = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,Object? athleteMap = null,Object? userMap = null,Object? sportMap = null,}) {
  return _then(LoadedCoachAthletes(
coachAthletes: null == coachAthletes ? _self._coachAthletes : coachAthletes // ignore: cast_nullable_to_non_nullable
as List<CoachAthlete>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,athleteMap: null == athleteMap ? _self._athleteMap : athleteMap // ignore: cast_nullable_to_non_nullable
as Map<String, Athlete>,userMap: null == userMap ? _self._userMap : userMap // ignore: cast_nullable_to_non_nullable
as Map<String, User?>,sportMap: null == sportMap ? _self._sportMap : sportMap // ignore: cast_nullable_to_non_nullable
as Map<String, Sport>,
  ));
}


}

/// @nodoc


class CoachAthlete_Error implements CoachAthleteState {
  const CoachAthlete_Error(this.message);
  

 final  String message;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachAthlete_ErrorCopyWith<CoachAthlete_Error> get copyWith => _$CoachAthlete_ErrorCopyWithImpl<CoachAthlete_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachAthleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoachAthlete_ErrorCopyWith<$Res> implements $CoachAthleteStateCopyWith<$Res> {
  factory $CoachAthlete_ErrorCopyWith(CoachAthlete_Error value, $Res Function(CoachAthlete_Error) _then) = _$CoachAthlete_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoachAthlete_ErrorCopyWithImpl<$Res>
    implements $CoachAthlete_ErrorCopyWith<$Res> {
  _$CoachAthlete_ErrorCopyWithImpl(this._self, this._then);

  final CoachAthlete_Error _self;
  final $Res Function(CoachAthlete_Error) _then;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoachAthlete_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CoachAthlete_Success implements CoachAthleteState {
  const CoachAthlete_Success(this.message);
  

 final  String message;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachAthlete_SuccessCopyWith<CoachAthlete_Success> get copyWith => _$CoachAthlete_SuccessCopyWithImpl<CoachAthlete_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachAthlete_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoachAthleteState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoachAthlete_SuccessCopyWith<$Res> implements $CoachAthleteStateCopyWith<$Res> {
  factory $CoachAthlete_SuccessCopyWith(CoachAthlete_Success value, $Res Function(CoachAthlete_Success) _then) = _$CoachAthlete_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoachAthlete_SuccessCopyWithImpl<$Res>
    implements $CoachAthlete_SuccessCopyWith<$Res> {
  _$CoachAthlete_SuccessCopyWithImpl(this._self, this._then);

  final CoachAthlete_Success _self;
  final $Res Function(CoachAthlete_Success) _then;

/// Create a copy of CoachAthleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoachAthlete_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
