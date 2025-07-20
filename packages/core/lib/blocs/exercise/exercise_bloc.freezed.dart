// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExerciseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseEvent()';
}


}

/// @nodoc
class $ExerciseEventCopyWith<$Res>  {
$ExerciseEventCopyWith(ExerciseEvent _, $Res Function(ExerciseEvent) __);
}


/// @nodoc


class CreateExercise implements ExerciseEvent {
  const CreateExercise(this.exercise);
  

 final  Exercise exercise;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExerciseCopyWith<CreateExercise> get copyWith => _$CreateExerciseCopyWithImpl<CreateExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExercise&&(identical(other.exercise, exercise) || other.exercise == exercise));
}


@override
int get hashCode => Object.hash(runtimeType,exercise);

@override
String toString() {
  return 'ExerciseEvent.createExercise(exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class $CreateExerciseCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $CreateExerciseCopyWith(CreateExercise value, $Res Function(CreateExercise) _then) = _$CreateExerciseCopyWithImpl;
@useResult
$Res call({
 Exercise exercise
});


$ExerciseCopyWith<$Res> get exercise;

}
/// @nodoc
class _$CreateExerciseCopyWithImpl<$Res>
    implements $CreateExerciseCopyWith<$Res> {
  _$CreateExerciseCopyWithImpl(this._self, this._then);

  final CreateExercise _self;
  final $Res Function(CreateExercise) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercise = null,}) {
  return _then(CreateExercise(
null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as Exercise,
  ));
}

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExerciseCopyWith<$Res> get exercise {
  
  return $ExerciseCopyWith<$Res>(_self.exercise, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}

/// @nodoc


class GetExerciseById implements ExerciseEvent {
  const GetExerciseById(this.id);
  

 final  String id;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetExerciseByIdCopyWith<GetExerciseById> get copyWith => _$GetExerciseByIdCopyWithImpl<GetExerciseById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetExerciseById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ExerciseEvent.getExerciseById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetExerciseByIdCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $GetExerciseByIdCopyWith(GetExerciseById value, $Res Function(GetExerciseById) _then) = _$GetExerciseByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetExerciseByIdCopyWithImpl<$Res>
    implements $GetExerciseByIdCopyWith<$Res> {
  _$GetExerciseByIdCopyWithImpl(this._self, this._then);

  final GetExerciseById _self;
  final $Res Function(GetExerciseById) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetExerciseById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllExercisesByBodyPart implements ExerciseEvent {
  const GetAllExercisesByBodyPart(this.bodyPart, {this.page = 1, this.limit = 10});
  

 final  String bodyPart;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllExercisesByBodyPartCopyWith<GetAllExercisesByBodyPart> get copyWith => _$GetAllExercisesByBodyPartCopyWithImpl<GetAllExercisesByBodyPart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllExercisesByBodyPart&&(identical(other.bodyPart, bodyPart) || other.bodyPart == bodyPart)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,bodyPart,page,limit);

@override
String toString() {
  return 'ExerciseEvent.getAllExercisesByBodyPart(bodyPart: $bodyPart, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllExercisesByBodyPartCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $GetAllExercisesByBodyPartCopyWith(GetAllExercisesByBodyPart value, $Res Function(GetAllExercisesByBodyPart) _then) = _$GetAllExercisesByBodyPartCopyWithImpl;
@useResult
$Res call({
 String bodyPart, int page, int limit
});




}
/// @nodoc
class _$GetAllExercisesByBodyPartCopyWithImpl<$Res>
    implements $GetAllExercisesByBodyPartCopyWith<$Res> {
  _$GetAllExercisesByBodyPartCopyWithImpl(this._self, this._then);

  final GetAllExercisesByBodyPart _self;
  final $Res Function(GetAllExercisesByBodyPart) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bodyPart = null,Object? page = null,Object? limit = null,}) {
  return _then(GetAllExercisesByBodyPart(
null == bodyPart ? _self.bodyPart : bodyPart // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetAllExercisesBySportName implements ExerciseEvent {
  const GetAllExercisesBySportName(this.sportName, {this.page = 1, this.limit = 10});
  

 final  String sportName;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllExercisesBySportNameCopyWith<GetAllExercisesBySportName> get copyWith => _$GetAllExercisesBySportNameCopyWithImpl<GetAllExercisesBySportName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllExercisesBySportName&&(identical(other.sportName, sportName) || other.sportName == sportName)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,sportName,page,limit);

@override
String toString() {
  return 'ExerciseEvent.getAllExercisesBySportName(sportName: $sportName, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllExercisesBySportNameCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $GetAllExercisesBySportNameCopyWith(GetAllExercisesBySportName value, $Res Function(GetAllExercisesBySportName) _then) = _$GetAllExercisesBySportNameCopyWithImpl;
@useResult
$Res call({
 String sportName, int page, int limit
});




}
/// @nodoc
class _$GetAllExercisesBySportNameCopyWithImpl<$Res>
    implements $GetAllExercisesBySportNameCopyWith<$Res> {
  _$GetAllExercisesBySportNameCopyWithImpl(this._self, this._then);

  final GetAllExercisesBySportName _self;
  final $Res Function(GetAllExercisesBySportName) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportName = null,Object? page = null,Object? limit = null,}) {
  return _then(GetAllExercisesBySportName(
null == sportName ? _self.sportName : sportName // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetAllExercises implements ExerciseEvent {
  const GetAllExercises({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllExercisesCopyWith<GetAllExercises> get copyWith => _$GetAllExercisesCopyWithImpl<GetAllExercises>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllExercises&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'ExerciseEvent.getAllExercises(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllExercisesCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $GetAllExercisesCopyWith(GetAllExercises value, $Res Function(GetAllExercises) _then) = _$GetAllExercisesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllExercisesCopyWithImpl<$Res>
    implements $GetAllExercisesCopyWith<$Res> {
  _$GetAllExercisesCopyWithImpl(this._self, this._then);

  final GetAllExercises _self;
  final $Res Function(GetAllExercises) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllExercises(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateExercise implements ExerciseEvent {
  const UpdateExercise(this.id, this.exercise);
  

 final  String id;
 final  Exercise exercise;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExerciseCopyWith<UpdateExercise> get copyWith => _$UpdateExerciseCopyWithImpl<UpdateExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExercise&&(identical(other.id, id) || other.id == id)&&(identical(other.exercise, exercise) || other.exercise == exercise));
}


@override
int get hashCode => Object.hash(runtimeType,id,exercise);

@override
String toString() {
  return 'ExerciseEvent.updateExercise(id: $id, exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class $UpdateExerciseCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $UpdateExerciseCopyWith(UpdateExercise value, $Res Function(UpdateExercise) _then) = _$UpdateExerciseCopyWithImpl;
@useResult
$Res call({
 String id, Exercise exercise
});


$ExerciseCopyWith<$Res> get exercise;

}
/// @nodoc
class _$UpdateExerciseCopyWithImpl<$Res>
    implements $UpdateExerciseCopyWith<$Res> {
  _$UpdateExerciseCopyWithImpl(this._self, this._then);

  final UpdateExercise _self;
  final $Res Function(UpdateExercise) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? exercise = null,}) {
  return _then(UpdateExercise(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as Exercise,
  ));
}

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExerciseCopyWith<$Res> get exercise {
  
  return $ExerciseCopyWith<$Res>(_self.exercise, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}

/// @nodoc


class DeleteExercise implements ExerciseEvent {
  const DeleteExercise(this.id);
  

 final  String id;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteExerciseCopyWith<DeleteExercise> get copyWith => _$DeleteExerciseCopyWithImpl<DeleteExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteExercise&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ExerciseEvent.deleteExercise(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteExerciseCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $DeleteExerciseCopyWith(DeleteExercise value, $Res Function(DeleteExercise) _then) = _$DeleteExerciseCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteExerciseCopyWithImpl<$Res>
    implements $DeleteExerciseCopyWith<$Res> {
  _$DeleteExerciseCopyWithImpl(this._self, this._then);

  final DeleteExercise _self;
  final $Res Function(DeleteExercise) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteExercise(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllExercisesBySportId implements ExerciseEvent {
  const GetAllExercisesBySportId(this.sportId);
  

 final  String sportId;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllExercisesBySportIdCopyWith<GetAllExercisesBySportId> get copyWith => _$GetAllExercisesBySportIdCopyWithImpl<GetAllExercisesBySportId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllExercisesBySportId&&(identical(other.sportId, sportId) || other.sportId == sportId));
}


@override
int get hashCode => Object.hash(runtimeType,sportId);

@override
String toString() {
  return 'ExerciseEvent.getAllExxerciseBySportId(sportId: $sportId)';
}


}

/// @nodoc
abstract mixin class $GetAllExercisesBySportIdCopyWith<$Res> implements $ExerciseEventCopyWith<$Res> {
  factory $GetAllExercisesBySportIdCopyWith(GetAllExercisesBySportId value, $Res Function(GetAllExercisesBySportId) _then) = _$GetAllExercisesBySportIdCopyWithImpl;
@useResult
$Res call({
 String sportId
});




}
/// @nodoc
class _$GetAllExercisesBySportIdCopyWithImpl<$Res>
    implements $GetAllExercisesBySportIdCopyWith<$Res> {
  _$GetAllExercisesBySportIdCopyWithImpl(this._self, this._then);

  final GetAllExercisesBySportId _self;
  final $Res Function(GetAllExercisesBySportId) _then;

/// Create a copy of ExerciseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportId = null,}) {
  return _then(GetAllExercisesBySportId(
null == sportId ? _self.sportId : sportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearExerciseError implements ExerciseEvent {
  const ClearExerciseError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearExerciseError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseEvent.clearError()';
}


}




/// @nodoc
mixin _$ExerciseState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseState()';
}


}

/// @nodoc
class $ExerciseStateCopyWith<$Res>  {
$ExerciseStateCopyWith(ExerciseState _, $Res Function(ExerciseState) __);
}


/// @nodoc


class Exercise_Initial implements ExerciseState {
  const Exercise_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exercise_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseState.initial()';
}


}




/// @nodoc


class Exercise_Loading implements ExerciseState {
  const Exercise_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exercise_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseState.loading()';
}


}




/// @nodoc


class Exercise_LoadingMore implements ExerciseState {
  const Exercise_LoadingMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exercise_LoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseState.loadingMore()';
}


}




/// @nodoc


class LoadedExercise implements ExerciseState {
  const LoadedExercise(this.exercise);
  

 final  Exercise exercise;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedExerciseCopyWith<LoadedExercise> get copyWith => _$LoadedExerciseCopyWithImpl<LoadedExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedExercise&&(identical(other.exercise, exercise) || other.exercise == exercise));
}


@override
int get hashCode => Object.hash(runtimeType,exercise);

@override
String toString() {
  return 'ExerciseState.loadedExercise(exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class $LoadedExerciseCopyWith<$Res> implements $ExerciseStateCopyWith<$Res> {
  factory $LoadedExerciseCopyWith(LoadedExercise value, $Res Function(LoadedExercise) _then) = _$LoadedExerciseCopyWithImpl;
@useResult
$Res call({
 Exercise exercise
});


$ExerciseCopyWith<$Res> get exercise;

}
/// @nodoc
class _$LoadedExerciseCopyWithImpl<$Res>
    implements $LoadedExerciseCopyWith<$Res> {
  _$LoadedExerciseCopyWithImpl(this._self, this._then);

  final LoadedExercise _self;
  final $Res Function(LoadedExercise) _then;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercise = null,}) {
  return _then(LoadedExercise(
null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as Exercise,
  ));
}

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExerciseCopyWith<$Res> get exercise {
  
  return $ExerciseCopyWith<$Res>(_self.exercise, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}

/// @nodoc


class LoadedExercises implements ExerciseState {
  const LoadedExercises(final  List<Exercise> exercises, this.currentPage, this.limit, this.hasMore): _exercises = exercises;
  

 final  List<Exercise> _exercises;
 List<Exercise> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedExercisesCopyWith<LoadedExercises> get copyWith => _$LoadedExercisesCopyWithImpl<LoadedExercises>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedExercises&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exercises),currentPage,limit,hasMore);

@override
String toString() {
  return 'ExerciseState.loadedExercises(exercises: $exercises, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedExercisesCopyWith<$Res> implements $ExerciseStateCopyWith<$Res> {
  factory $LoadedExercisesCopyWith(LoadedExercises value, $Res Function(LoadedExercises) _then) = _$LoadedExercisesCopyWithImpl;
@useResult
$Res call({
 List<Exercise> exercises, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedExercisesCopyWithImpl<$Res>
    implements $LoadedExercisesCopyWith<$Res> {
  _$LoadedExercisesCopyWithImpl(this._self, this._then);

  final LoadedExercises _self;
  final $Res Function(LoadedExercises) _then;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercises = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedExercises(
null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Exercise_Error implements ExerciseState {
  const Exercise_Error(this.message);
  

 final  String message;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Exercise_ErrorCopyWith<Exercise_Error> get copyWith => _$Exercise_ErrorCopyWithImpl<Exercise_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exercise_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ExerciseState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Exercise_ErrorCopyWith<$Res> implements $ExerciseStateCopyWith<$Res> {
  factory $Exercise_ErrorCopyWith(Exercise_Error value, $Res Function(Exercise_Error) _then) = _$Exercise_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Exercise_ErrorCopyWithImpl<$Res>
    implements $Exercise_ErrorCopyWith<$Res> {
  _$Exercise_ErrorCopyWithImpl(this._self, this._then);

  final Exercise_Error _self;
  final $Res Function(Exercise_Error) _then;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Exercise_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Exercise_Success implements ExerciseState {
  const Exercise_Success(this.message);
  

 final  String message;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Exercise_SuccessCopyWith<Exercise_Success> get copyWith => _$Exercise_SuccessCopyWithImpl<Exercise_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exercise_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ExerciseState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Exercise_SuccessCopyWith<$Res> implements $ExerciseStateCopyWith<$Res> {
  factory $Exercise_SuccessCopyWith(Exercise_Success value, $Res Function(Exercise_Success) _then) = _$Exercise_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Exercise_SuccessCopyWithImpl<$Res>
    implements $Exercise_SuccessCopyWith<$Res> {
  _$Exercise_SuccessCopyWithImpl(this._self, this._then);

  final Exercise_Success _self;
  final $Res Function(Exercise_Success) _then;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Exercise_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedExercisesBySportId implements ExerciseState {
  const LoadedExercisesBySportId(final  List<Exercise> exercises): _exercises = exercises;
  

 final  List<Exercise> _exercises;
 List<Exercise> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}


/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedExercisesBySportIdCopyWith<LoadedExercisesBySportId> get copyWith => _$LoadedExercisesBySportIdCopyWithImpl<LoadedExercisesBySportId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedExercisesBySportId&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'ExerciseState.loadedExercisesBySportId(exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $LoadedExercisesBySportIdCopyWith<$Res> implements $ExerciseStateCopyWith<$Res> {
  factory $LoadedExercisesBySportIdCopyWith(LoadedExercisesBySportId value, $Res Function(LoadedExercisesBySportId) _then) = _$LoadedExercisesBySportIdCopyWithImpl;
@useResult
$Res call({
 List<Exercise> exercises
});




}
/// @nodoc
class _$LoadedExercisesBySportIdCopyWithImpl<$Res>
    implements $LoadedExercisesBySportIdCopyWith<$Res> {
  _$LoadedExercisesBySportIdCopyWithImpl(this._self, this._then);

  final LoadedExercisesBySportId _self;
  final $Res Function(LoadedExercisesBySportId) _then;

/// Create a copy of ExerciseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercises = null,}) {
  return _then(LoadedExercisesBySportId(
null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}


}

// dart format on
