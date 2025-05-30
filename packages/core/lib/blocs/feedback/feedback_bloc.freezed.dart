// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackEvent()';
}


}

/// @nodoc
class $FeedbackEventCopyWith<$Res>  {
$FeedbackEventCopyWith(FeedbackEvent _, $Res Function(FeedbackEvent) __);
}


/// @nodoc


class _CreateFeedback implements FeedbackEvent {
  const _CreateFeedback(this.feedback);
  

 final  Feedback feedback;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFeedbackCopyWith<_CreateFeedback> get copyWith => __$CreateFeedbackCopyWithImpl<_CreateFeedback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFeedback&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'FeedbackEvent.createFeedback(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class _$CreateFeedbackCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$CreateFeedbackCopyWith(_CreateFeedback value, $Res Function(_CreateFeedback) _then) = __$CreateFeedbackCopyWithImpl;
@useResult
$Res call({
 Feedback feedback
});


$FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class __$CreateFeedbackCopyWithImpl<$Res>
    implements _$CreateFeedbackCopyWith<$Res> {
  __$CreateFeedbackCopyWithImpl(this._self, this._then);

  final _CreateFeedback _self;
  final $Res Function(_CreateFeedback) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(_CreateFeedback(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,
  ));
}

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

/// @nodoc


class _GetFeedbackById implements FeedbackEvent {
  const _GetFeedbackById(this.id);
  

 final  String id;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFeedbackByIdCopyWith<_GetFeedbackById> get copyWith => __$GetFeedbackByIdCopyWithImpl<_GetFeedbackById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFeedbackById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FeedbackEvent.getFeedbackById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetFeedbackByIdCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$GetFeedbackByIdCopyWith(_GetFeedbackById value, $Res Function(_GetFeedbackById) _then) = __$GetFeedbackByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetFeedbackByIdCopyWithImpl<$Res>
    implements _$GetFeedbackByIdCopyWith<$Res> {
  __$GetFeedbackByIdCopyWithImpl(this._self, this._then);

  final _GetFeedbackById _self;
  final $Res Function(_GetFeedbackById) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetFeedbackById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetFeedbackByUserId implements FeedbackEvent {
  const _GetFeedbackByUserId(this.userId);
  

 final  String userId;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFeedbackByUserIdCopyWith<_GetFeedbackByUserId> get copyWith => __$GetFeedbackByUserIdCopyWithImpl<_GetFeedbackByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFeedbackByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'FeedbackEvent.getFeedbackByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetFeedbackByUserIdCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$GetFeedbackByUserIdCopyWith(_GetFeedbackByUserId value, $Res Function(_GetFeedbackByUserId) _then) = __$GetFeedbackByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetFeedbackByUserIdCopyWithImpl<$Res>
    implements _$GetFeedbackByUserIdCopyWith<$Res> {
  __$GetFeedbackByUserIdCopyWithImpl(this._self, this._then);

  final _GetFeedbackByUserId _self;
  final $Res Function(_GetFeedbackByUserId) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetFeedbackByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllFeedbacks implements FeedbackEvent {
  const _GetAllFeedbacks({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllFeedbacksCopyWith<_GetAllFeedbacks> get copyWith => __$GetAllFeedbacksCopyWithImpl<_GetAllFeedbacks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllFeedbacks&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'FeedbackEvent.getAllFeedbacks(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllFeedbacksCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$GetAllFeedbacksCopyWith(_GetAllFeedbacks value, $Res Function(_GetAllFeedbacks) _then) = __$GetAllFeedbacksCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllFeedbacksCopyWithImpl<$Res>
    implements _$GetAllFeedbacksCopyWith<$Res> {
  __$GetAllFeedbacksCopyWithImpl(this._self, this._then);

  final _GetAllFeedbacks _self;
  final $Res Function(_GetAllFeedbacks) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllFeedbacks(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateFeedback implements FeedbackEvent {
  const _UpdateFeedback(this.id, this.feedback);
  

 final  String id;
 final  Feedback feedback;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFeedbackCopyWith<_UpdateFeedback> get copyWith => __$UpdateFeedbackCopyWithImpl<_UpdateFeedback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFeedback&&(identical(other.id, id) || other.id == id)&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,id,feedback);

@override
String toString() {
  return 'FeedbackEvent.updateFeedback(id: $id, feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class _$UpdateFeedbackCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$UpdateFeedbackCopyWith(_UpdateFeedback value, $Res Function(_UpdateFeedback) _then) = __$UpdateFeedbackCopyWithImpl;
@useResult
$Res call({
 String id, Feedback feedback
});


$FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class __$UpdateFeedbackCopyWithImpl<$Res>
    implements _$UpdateFeedbackCopyWith<$Res> {
  __$UpdateFeedbackCopyWithImpl(this._self, this._then);

  final _UpdateFeedback _self;
  final $Res Function(_UpdateFeedback) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? feedback = null,}) {
  return _then(_UpdateFeedback(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,
  ));
}

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

/// @nodoc


class _DeleteFeedback implements FeedbackEvent {
  const _DeleteFeedback(this.id);
  

 final  String id;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteFeedbackCopyWith<_DeleteFeedback> get copyWith => __$DeleteFeedbackCopyWithImpl<_DeleteFeedback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteFeedback&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FeedbackEvent.deleteFeedback(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteFeedbackCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$DeleteFeedbackCopyWith(_DeleteFeedback value, $Res Function(_DeleteFeedback) _then) = __$DeleteFeedbackCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteFeedbackCopyWithImpl<$Res>
    implements _$DeleteFeedbackCopyWith<$Res> {
  __$DeleteFeedbackCopyWithImpl(this._self, this._then);

  final _DeleteFeedback _self;
  final $Res Function(_DeleteFeedback) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteFeedback(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FeedbackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackState()';
}


}

/// @nodoc
class $FeedbackStateCopyWith<$Res>  {
$FeedbackStateCopyWith(FeedbackState _, $Res Function(FeedbackState) __);
}


/// @nodoc


class Feedback_Initial implements FeedbackState {
  const Feedback_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackState.initial()';
}


}




/// @nodoc


class Feedback_Loading implements FeedbackState {
  const Feedback_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackState.loading()';
}


}




/// @nodoc


class LoadedFeedback implements FeedbackState {
  const LoadedFeedback(this.feedback);
  

 final  Feedback feedback;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedFeedbackCopyWith<LoadedFeedback> get copyWith => _$LoadedFeedbackCopyWithImpl<LoadedFeedback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedFeedback&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'FeedbackState.loadedFeedback(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $LoadedFeedbackCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory $LoadedFeedbackCopyWith(LoadedFeedback value, $Res Function(LoadedFeedback) _then) = _$LoadedFeedbackCopyWithImpl;
@useResult
$Res call({
 Feedback feedback
});


$FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class _$LoadedFeedbackCopyWithImpl<$Res>
    implements $LoadedFeedbackCopyWith<$Res> {
  _$LoadedFeedbackCopyWithImpl(this._self, this._then);

  final LoadedFeedback _self;
  final $Res Function(LoadedFeedback) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(LoadedFeedback(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,
  ));
}

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

/// @nodoc


class LoadedFeedbacks implements FeedbackState {
  const LoadedFeedbacks(final  List<Feedback> feedbacks, this.currentPage, this.limit, this.hasMore): _feedbacks = feedbacks;
  

 final  List<Feedback> _feedbacks;
 List<Feedback> get feedbacks {
  if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feedbacks);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedFeedbacksCopyWith<LoadedFeedbacks> get copyWith => _$LoadedFeedbacksCopyWithImpl<LoadedFeedbacks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedFeedbacks&&const DeepCollectionEquality().equals(other._feedbacks, _feedbacks)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_feedbacks),currentPage,limit,hasMore);

@override
String toString() {
  return 'FeedbackState.loadedFeedbacks(feedbacks: $feedbacks, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedFeedbacksCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory $LoadedFeedbacksCopyWith(LoadedFeedbacks value, $Res Function(LoadedFeedbacks) _then) = _$LoadedFeedbacksCopyWithImpl;
@useResult
$Res call({
 List<Feedback> feedbacks, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedFeedbacksCopyWithImpl<$Res>
    implements $LoadedFeedbacksCopyWith<$Res> {
  _$LoadedFeedbacksCopyWithImpl(this._self, this._then);

  final LoadedFeedbacks _self;
  final $Res Function(LoadedFeedbacks) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedbacks = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedFeedbacks(
null == feedbacks ? _self._feedbacks : feedbacks // ignore: cast_nullable_to_non_nullable
as List<Feedback>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Feedback_Error implements FeedbackState {
  const Feedback_Error(this.message);
  

 final  String message;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Feedback_ErrorCopyWith<Feedback_Error> get copyWith => _$Feedback_ErrorCopyWithImpl<Feedback_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeedbackState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Feedback_ErrorCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory $Feedback_ErrorCopyWith(Feedback_Error value, $Res Function(Feedback_Error) _then) = _$Feedback_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Feedback_ErrorCopyWithImpl<$Res>
    implements $Feedback_ErrorCopyWith<$Res> {
  _$Feedback_ErrorCopyWithImpl(this._self, this._then);

  final Feedback_Error _self;
  final $Res Function(Feedback_Error) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Feedback_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Feedback_Success implements FeedbackState {
  const Feedback_Success(this.message);
  

 final  String message;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Feedback_SuccessCopyWith<Feedback_Success> get copyWith => _$Feedback_SuccessCopyWithImpl<Feedback_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeedbackState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Feedback_SuccessCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory $Feedback_SuccessCopyWith(Feedback_Success value, $Res Function(Feedback_Success) _then) = _$Feedback_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Feedback_SuccessCopyWithImpl<$Res>
    implements $Feedback_SuccessCopyWith<$Res> {
  _$Feedback_SuccessCopyWithImpl(this._self, this._then);

  final Feedback_Success _self;
  final $Res Function(Feedback_Success) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Feedback_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
