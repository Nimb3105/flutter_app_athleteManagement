// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProgressEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressEvent()';
}


}

/// @nodoc
class $ProgressEventCopyWith<$Res>  {
$ProgressEventCopyWith(ProgressEvent _, $Res Function(ProgressEvent) __);
}


/// @nodoc


class _CreateProgress implements ProgressEvent {
  const _CreateProgress(this.progress);
  

 final  Progress progress;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProgressCopyWith<_CreateProgress> get copyWith => __$CreateProgressCopyWithImpl<_CreateProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProgress&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'ProgressEvent.createProgress(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$CreateProgressCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$CreateProgressCopyWith(_CreateProgress value, $Res Function(_CreateProgress) _then) = __$CreateProgressCopyWithImpl;
@useResult
$Res call({
 Progress progress
});


$ProgressCopyWith<$Res> get progress;

}
/// @nodoc
class __$CreateProgressCopyWithImpl<$Res>
    implements _$CreateProgressCopyWith<$Res> {
  __$CreateProgressCopyWithImpl(this._self, this._then);

  final _CreateProgress _self;
  final $Res Function(_CreateProgress) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_CreateProgress(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as Progress,
  ));
}

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgressCopyWith<$Res> get progress {
  
  return $ProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

/// @nodoc


class _GetProgressById implements ProgressEvent {
  const _GetProgressById(this.id);
  

 final  String id;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProgressByIdCopyWith<_GetProgressById> get copyWith => __$GetProgressByIdCopyWithImpl<_GetProgressById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProgressById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProgressEvent.getProgressById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetProgressByIdCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$GetProgressByIdCopyWith(_GetProgressById value, $Res Function(_GetProgressById) _then) = __$GetProgressByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetProgressByIdCopyWithImpl<$Res>
    implements _$GetProgressByIdCopyWith<$Res> {
  __$GetProgressByIdCopyWithImpl(this._self, this._then);

  final _GetProgressById _self;
  final $Res Function(_GetProgressById) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetProgressById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetProgressesByUserId implements ProgressEvent {
  const _GetProgressesByUserId(this.userId);
  

 final  String userId;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProgressesByUserIdCopyWith<_GetProgressesByUserId> get copyWith => __$GetProgressesByUserIdCopyWithImpl<_GetProgressesByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProgressesByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProgressEvent.getProgressesByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetProgressesByUserIdCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$GetProgressesByUserIdCopyWith(_GetProgressesByUserId value, $Res Function(_GetProgressesByUserId) _then) = __$GetProgressesByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetProgressesByUserIdCopyWithImpl<$Res>
    implements _$GetProgressesByUserIdCopyWith<$Res> {
  __$GetProgressesByUserIdCopyWithImpl(this._self, this._then);

  final _GetProgressesByUserId _self;
  final $Res Function(_GetProgressesByUserId) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetProgressesByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllProgresses implements ProgressEvent {
  const _GetAllProgresses({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllProgressesCopyWith<_GetAllProgresses> get copyWith => __$GetAllProgressesCopyWithImpl<_GetAllProgresses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllProgresses&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'ProgressEvent.getAllProgresses(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllProgressesCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$GetAllProgressesCopyWith(_GetAllProgresses value, $Res Function(_GetAllProgresses) _then) = __$GetAllProgressesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllProgressesCopyWithImpl<$Res>
    implements _$GetAllProgressesCopyWith<$Res> {
  __$GetAllProgressesCopyWithImpl(this._self, this._then);

  final _GetAllProgresses _self;
  final $Res Function(_GetAllProgresses) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllProgresses(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateProgress implements ProgressEvent {
  const _UpdateProgress(this.id, this.progress);
  

 final  String id;
 final  Progress progress;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProgressCopyWith<_UpdateProgress> get copyWith => __$UpdateProgressCopyWithImpl<_UpdateProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProgress&&(identical(other.id, id) || other.id == id)&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,id,progress);

@override
String toString() {
  return 'ProgressEvent.updateProgress(id: $id, progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$UpdateProgressCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$UpdateProgressCopyWith(_UpdateProgress value, $Res Function(_UpdateProgress) _then) = __$UpdateProgressCopyWithImpl;
@useResult
$Res call({
 String id, Progress progress
});


$ProgressCopyWith<$Res> get progress;

}
/// @nodoc
class __$UpdateProgressCopyWithImpl<$Res>
    implements _$UpdateProgressCopyWith<$Res> {
  __$UpdateProgressCopyWithImpl(this._self, this._then);

  final _UpdateProgress _self;
  final $Res Function(_UpdateProgress) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? progress = null,}) {
  return _then(_UpdateProgress(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as Progress,
  ));
}

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgressCopyWith<$Res> get progress {
  
  return $ProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

/// @nodoc


class _DeleteProgress implements ProgressEvent {
  const _DeleteProgress(this.id);
  

 final  String id;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteProgressCopyWith<_DeleteProgress> get copyWith => __$DeleteProgressCopyWithImpl<_DeleteProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteProgress&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProgressEvent.deleteProgress(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteProgressCopyWith<$Res> implements $ProgressEventCopyWith<$Res> {
  factory _$DeleteProgressCopyWith(_DeleteProgress value, $Res Function(_DeleteProgress) _then) = __$DeleteProgressCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteProgressCopyWithImpl<$Res>
    implements _$DeleteProgressCopyWith<$Res> {
  __$DeleteProgressCopyWithImpl(this._self, this._then);

  final _DeleteProgress _self;
  final $Res Function(_DeleteProgress) _then;

/// Create a copy of ProgressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteProgress(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProgressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressState()';
}


}

/// @nodoc
class $ProgressStateCopyWith<$Res>  {
$ProgressStateCopyWith(ProgressState _, $Res Function(ProgressState) __);
}


/// @nodoc


class Progress_Initial implements ProgressState {
  const Progress_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressState.initial()';
}


}




/// @nodoc


class Progress_Loading implements ProgressState {
  const Progress_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressState.loading()';
}


}




/// @nodoc


class LoadedProgress implements ProgressState {
  const LoadedProgress(this.progress);
  

 final  Progress progress;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedProgressCopyWith<LoadedProgress> get copyWith => _$LoadedProgressCopyWithImpl<LoadedProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedProgress&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'ProgressState.loadedProgress(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $LoadedProgressCopyWith<$Res> implements $ProgressStateCopyWith<$Res> {
  factory $LoadedProgressCopyWith(LoadedProgress value, $Res Function(LoadedProgress) _then) = _$LoadedProgressCopyWithImpl;
@useResult
$Res call({
 Progress progress
});


$ProgressCopyWith<$Res> get progress;

}
/// @nodoc
class _$LoadedProgressCopyWithImpl<$Res>
    implements $LoadedProgressCopyWith<$Res> {
  _$LoadedProgressCopyWithImpl(this._self, this._then);

  final LoadedProgress _self;
  final $Res Function(LoadedProgress) _then;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(LoadedProgress(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as Progress,
  ));
}

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgressCopyWith<$Res> get progress {
  
  return $ProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

/// @nodoc


class LoadedProgresses implements ProgressState {
  const LoadedProgresses(final  List<Progress> progresses, this.currentPage, this.limit, this.hasMore): _progresses = progresses;
  

 final  List<Progress> _progresses;
 List<Progress> get progresses {
  if (_progresses is EqualUnmodifiableListView) return _progresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_progresses);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedProgressesCopyWith<LoadedProgresses> get copyWith => _$LoadedProgressesCopyWithImpl<LoadedProgresses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedProgresses&&const DeepCollectionEquality().equals(other._progresses, _progresses)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_progresses),currentPage,limit,hasMore);

@override
String toString() {
  return 'ProgressState.loadedProgresses(progresses: $progresses, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedProgressesCopyWith<$Res> implements $ProgressStateCopyWith<$Res> {
  factory $LoadedProgressesCopyWith(LoadedProgresses value, $Res Function(LoadedProgresses) _then) = _$LoadedProgressesCopyWithImpl;
@useResult
$Res call({
 List<Progress> progresses, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedProgressesCopyWithImpl<$Res>
    implements $LoadedProgressesCopyWith<$Res> {
  _$LoadedProgressesCopyWithImpl(this._self, this._then);

  final LoadedProgresses _self;
  final $Res Function(LoadedProgresses) _then;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progresses = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedProgresses(
null == progresses ? _self._progresses : progresses // ignore: cast_nullable_to_non_nullable
as List<Progress>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Progress_Error implements ProgressState {
  const Progress_Error(this.message);
  

 final  String message;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Progress_ErrorCopyWith<Progress_Error> get copyWith => _$Progress_ErrorCopyWithImpl<Progress_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProgressState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Progress_ErrorCopyWith<$Res> implements $ProgressStateCopyWith<$Res> {
  factory $Progress_ErrorCopyWith(Progress_Error value, $Res Function(Progress_Error) _then) = _$Progress_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Progress_ErrorCopyWithImpl<$Res>
    implements $Progress_ErrorCopyWith<$Res> {
  _$Progress_ErrorCopyWithImpl(this._self, this._then);

  final Progress_Error _self;
  final $Res Function(Progress_Error) _then;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Progress_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Progress_Success implements ProgressState {
  const Progress_Success(this.message);
  

 final  String message;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Progress_SuccessCopyWith<Progress_Success> get copyWith => _$Progress_SuccessCopyWithImpl<Progress_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProgressState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Progress_SuccessCopyWith<$Res> implements $ProgressStateCopyWith<$Res> {
  factory $Progress_SuccessCopyWith(Progress_Success value, $Res Function(Progress_Success) _then) = _$Progress_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Progress_SuccessCopyWithImpl<$Res>
    implements $Progress_SuccessCopyWith<$Res> {
  _$Progress_SuccessCopyWithImpl(this._self, this._then);

  final Progress_Success _self;
  final $Res Function(Progress_Success) _then;

/// Create a copy of ProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Progress_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
