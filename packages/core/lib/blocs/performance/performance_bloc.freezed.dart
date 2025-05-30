// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PerformanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PerformanceEvent()';
}


}

/// @nodoc
class $PerformanceEventCopyWith<$Res>  {
$PerformanceEventCopyWith(PerformanceEvent _, $Res Function(PerformanceEvent) __);
}


/// @nodoc


class _CreatePerformance implements PerformanceEvent {
  const _CreatePerformance(this.performance);
  

 final  Performance performance;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePerformanceCopyWith<_CreatePerformance> get copyWith => __$CreatePerformanceCopyWithImpl<_CreatePerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePerformance&&(identical(other.performance, performance) || other.performance == performance));
}


@override
int get hashCode => Object.hash(runtimeType,performance);

@override
String toString() {
  return 'PerformanceEvent.createPerformance(performance: $performance)';
}


}

/// @nodoc
abstract mixin class _$CreatePerformanceCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$CreatePerformanceCopyWith(_CreatePerformance value, $Res Function(_CreatePerformance) _then) = __$CreatePerformanceCopyWithImpl;
@useResult
$Res call({
 Performance performance
});


$PerformanceCopyWith<$Res> get performance;

}
/// @nodoc
class __$CreatePerformanceCopyWithImpl<$Res>
    implements _$CreatePerformanceCopyWith<$Res> {
  __$CreatePerformanceCopyWithImpl(this._self, this._then);

  final _CreatePerformance _self;
  final $Res Function(_CreatePerformance) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? performance = null,}) {
  return _then(_CreatePerformance(
null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as Performance,
  ));
}

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceCopyWith<$Res> get performance {
  
  return $PerformanceCopyWith<$Res>(_self.performance, (value) {
    return _then(_self.copyWith(performance: value));
  });
}
}

/// @nodoc


class _GetPerformanceById implements PerformanceEvent {
  const _GetPerformanceById(this.id);
  

 final  String id;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPerformanceByIdCopyWith<_GetPerformanceById> get copyWith => __$GetPerformanceByIdCopyWithImpl<_GetPerformanceById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPerformanceById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PerformanceEvent.getPerformanceById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetPerformanceByIdCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$GetPerformanceByIdCopyWith(_GetPerformanceById value, $Res Function(_GetPerformanceById) _then) = __$GetPerformanceByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetPerformanceByIdCopyWithImpl<$Res>
    implements _$GetPerformanceByIdCopyWith<$Res> {
  __$GetPerformanceByIdCopyWithImpl(this._self, this._then);

  final _GetPerformanceById _self;
  final $Res Function(_GetPerformanceById) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetPerformanceById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetPerformancesByUserId implements PerformanceEvent {
  const _GetPerformancesByUserId(this.userId);
  

 final  String userId;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPerformancesByUserIdCopyWith<_GetPerformancesByUserId> get copyWith => __$GetPerformancesByUserIdCopyWithImpl<_GetPerformancesByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPerformancesByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'PerformanceEvent.getPerformancesByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetPerformancesByUserIdCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$GetPerformancesByUserIdCopyWith(_GetPerformancesByUserId value, $Res Function(_GetPerformancesByUserId) _then) = __$GetPerformancesByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetPerformancesByUserIdCopyWithImpl<$Res>
    implements _$GetPerformancesByUserIdCopyWith<$Res> {
  __$GetPerformancesByUserIdCopyWithImpl(this._self, this._then);

  final _GetPerformancesByUserId _self;
  final $Res Function(_GetPerformancesByUserId) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetPerformancesByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllPerformances implements PerformanceEvent {
  const _GetAllPerformances({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllPerformancesCopyWith<_GetAllPerformances> get copyWith => __$GetAllPerformancesCopyWithImpl<_GetAllPerformances>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllPerformances&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'PerformanceEvent.getAllPerformances(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllPerformancesCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$GetAllPerformancesCopyWith(_GetAllPerformances value, $Res Function(_GetAllPerformances) _then) = __$GetAllPerformancesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllPerformancesCopyWithImpl<$Res>
    implements _$GetAllPerformancesCopyWith<$Res> {
  __$GetAllPerformancesCopyWithImpl(this._self, this._then);

  final _GetAllPerformances _self;
  final $Res Function(_GetAllPerformances) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllPerformances(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdatePerformance implements PerformanceEvent {
  const _UpdatePerformance(this.id, this.performance);
  

 final  String id;
 final  Performance performance;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePerformanceCopyWith<_UpdatePerformance> get copyWith => __$UpdatePerformanceCopyWithImpl<_UpdatePerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePerformance&&(identical(other.id, id) || other.id == id)&&(identical(other.performance, performance) || other.performance == performance));
}


@override
int get hashCode => Object.hash(runtimeType,id,performance);

@override
String toString() {
  return 'PerformanceEvent.updatePerformance(id: $id, performance: $performance)';
}


}

/// @nodoc
abstract mixin class _$UpdatePerformanceCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$UpdatePerformanceCopyWith(_UpdatePerformance value, $Res Function(_UpdatePerformance) _then) = __$UpdatePerformanceCopyWithImpl;
@useResult
$Res call({
 String id, Performance performance
});


$PerformanceCopyWith<$Res> get performance;

}
/// @nodoc
class __$UpdatePerformanceCopyWithImpl<$Res>
    implements _$UpdatePerformanceCopyWith<$Res> {
  __$UpdatePerformanceCopyWithImpl(this._self, this._then);

  final _UpdatePerformance _self;
  final $Res Function(_UpdatePerformance) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? performance = null,}) {
  return _then(_UpdatePerformance(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as Performance,
  ));
}

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceCopyWith<$Res> get performance {
  
  return $PerformanceCopyWith<$Res>(_self.performance, (value) {
    return _then(_self.copyWith(performance: value));
  });
}
}

/// @nodoc


class _DeletePerformance implements PerformanceEvent {
  const _DeletePerformance(this.id);
  

 final  String id;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePerformanceCopyWith<_DeletePerformance> get copyWith => __$DeletePerformanceCopyWithImpl<_DeletePerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePerformance&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PerformanceEvent.deletePerformance(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletePerformanceCopyWith<$Res> implements $PerformanceEventCopyWith<$Res> {
  factory _$DeletePerformanceCopyWith(_DeletePerformance value, $Res Function(_DeletePerformance) _then) = __$DeletePerformanceCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeletePerformanceCopyWithImpl<$Res>
    implements _$DeletePerformanceCopyWith<$Res> {
  __$DeletePerformanceCopyWithImpl(this._self, this._then);

  final _DeletePerformance _self;
  final $Res Function(_DeletePerformance) _then;

/// Create a copy of PerformanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletePerformance(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PerformanceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PerformanceState()';
}


}

/// @nodoc
class $PerformanceStateCopyWith<$Res>  {
$PerformanceStateCopyWith(PerformanceState _, $Res Function(PerformanceState) __);
}


/// @nodoc


class Performance_Initial implements PerformanceState {
  const Performance_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PerformanceState.initial()';
}


}




/// @nodoc


class Performance_Loading implements PerformanceState {
  const Performance_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PerformanceState.loading()';
}


}




/// @nodoc


class LoadedPerformance implements PerformanceState {
  const LoadedPerformance(this.performance);
  

 final  Performance performance;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedPerformanceCopyWith<LoadedPerformance> get copyWith => _$LoadedPerformanceCopyWithImpl<LoadedPerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedPerformance&&(identical(other.performance, performance) || other.performance == performance));
}


@override
int get hashCode => Object.hash(runtimeType,performance);

@override
String toString() {
  return 'PerformanceState.loadedPerformance(performance: $performance)';
}


}

/// @nodoc
abstract mixin class $LoadedPerformanceCopyWith<$Res> implements $PerformanceStateCopyWith<$Res> {
  factory $LoadedPerformanceCopyWith(LoadedPerformance value, $Res Function(LoadedPerformance) _then) = _$LoadedPerformanceCopyWithImpl;
@useResult
$Res call({
 Performance performance
});


$PerformanceCopyWith<$Res> get performance;

}
/// @nodoc
class _$LoadedPerformanceCopyWithImpl<$Res>
    implements $LoadedPerformanceCopyWith<$Res> {
  _$LoadedPerformanceCopyWithImpl(this._self, this._then);

  final LoadedPerformance _self;
  final $Res Function(LoadedPerformance) _then;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? performance = null,}) {
  return _then(LoadedPerformance(
null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as Performance,
  ));
}

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceCopyWith<$Res> get performance {
  
  return $PerformanceCopyWith<$Res>(_self.performance, (value) {
    return _then(_self.copyWith(performance: value));
  });
}
}

/// @nodoc


class LoadedPerformances implements PerformanceState {
  const LoadedPerformances(final  List<Performance> performances, this.currentPage, this.limit, this.hasMore): _performances = performances;
  

 final  List<Performance> _performances;
 List<Performance> get performances {
  if (_performances is EqualUnmodifiableListView) return _performances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performances);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedPerformancesCopyWith<LoadedPerformances> get copyWith => _$LoadedPerformancesCopyWithImpl<LoadedPerformances>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedPerformances&&const DeepCollectionEquality().equals(other._performances, _performances)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_performances),currentPage,limit,hasMore);

@override
String toString() {
  return 'PerformanceState.loadedPerformances(performances: $performances, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedPerformancesCopyWith<$Res> implements $PerformanceStateCopyWith<$Res> {
  factory $LoadedPerformancesCopyWith(LoadedPerformances value, $Res Function(LoadedPerformances) _then) = _$LoadedPerformancesCopyWithImpl;
@useResult
$Res call({
 List<Performance> performances, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedPerformancesCopyWithImpl<$Res>
    implements $LoadedPerformancesCopyWith<$Res> {
  _$LoadedPerformancesCopyWithImpl(this._self, this._then);

  final LoadedPerformances _self;
  final $Res Function(LoadedPerformances) _then;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? performances = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedPerformances(
null == performances ? _self._performances : performances // ignore: cast_nullable_to_non_nullable
as List<Performance>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Performance_Error implements PerformanceState {
  const Performance_Error(this.message);
  

 final  String message;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Performance_ErrorCopyWith<Performance_Error> get copyWith => _$Performance_ErrorCopyWithImpl<Performance_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PerformanceState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Performance_ErrorCopyWith<$Res> implements $PerformanceStateCopyWith<$Res> {
  factory $Performance_ErrorCopyWith(Performance_Error value, $Res Function(Performance_Error) _then) = _$Performance_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Performance_ErrorCopyWithImpl<$Res>
    implements $Performance_ErrorCopyWith<$Res> {
  _$Performance_ErrorCopyWithImpl(this._self, this._then);

  final Performance_Error _self;
  final $Res Function(Performance_Error) _then;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Performance_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Performance_Success implements PerformanceState {
  const Performance_Success(this.message);
  

 final  String message;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Performance_SuccessCopyWith<Performance_Success> get copyWith => _$Performance_SuccessCopyWithImpl<Performance_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PerformanceState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Performance_SuccessCopyWith<$Res> implements $PerformanceStateCopyWith<$Res> {
  factory $Performance_SuccessCopyWith(Performance_Success value, $Res Function(Performance_Success) _then) = _$Performance_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Performance_SuccessCopyWithImpl<$Res>
    implements $Performance_SuccessCopyWith<$Res> {
  _$Performance_SuccessCopyWithImpl(this._self, this._then);

  final Performance_Success _self;
  final $Res Function(Performance_Success) _then;

/// Create a copy of PerformanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Performance_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
