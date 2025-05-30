// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'injury_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InjuryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjuryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryEvent()';
}


}

/// @nodoc
class $InjuryEventCopyWith<$Res>  {
$InjuryEventCopyWith(InjuryEvent _, $Res Function(InjuryEvent) __);
}


/// @nodoc


class _CreateInjury implements InjuryEvent {
  const _CreateInjury(this.injury);
  

 final  Injury injury;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInjuryCopyWith<_CreateInjury> get copyWith => __$CreateInjuryCopyWithImpl<_CreateInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInjury&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,injury);

@override
String toString() {
  return 'InjuryEvent.createInjury(injury: $injury)';
}


}

/// @nodoc
abstract mixin class _$CreateInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$CreateInjuryCopyWith(_CreateInjury value, $Res Function(_CreateInjury) _then) = __$CreateInjuryCopyWithImpl;
@useResult
$Res call({
 Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class __$CreateInjuryCopyWithImpl<$Res>
    implements _$CreateInjuryCopyWith<$Res> {
  __$CreateInjuryCopyWithImpl(this._self, this._then);

  final _CreateInjury _self;
  final $Res Function(_CreateInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injury = null,}) {
  return _then(_CreateInjury(
null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class _GetInjuryById implements InjuryEvent {
  const _GetInjuryById(this.id);
  

 final  String id;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInjuryByIdCopyWith<_GetInjuryById> get copyWith => __$GetInjuryByIdCopyWithImpl<_GetInjuryById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInjuryById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'InjuryEvent.getInjuryById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetInjuryByIdCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetInjuryByIdCopyWith(_GetInjuryById value, $Res Function(_GetInjuryById) _then) = __$GetInjuryByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetInjuryByIdCopyWithImpl<$Res>
    implements _$GetInjuryByIdCopyWith<$Res> {
  __$GetInjuryByIdCopyWithImpl(this._self, this._then);

  final _GetInjuryById _self;
  final $Res Function(_GetInjuryById) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetInjuryById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetInjuryByUserId implements InjuryEvent {
  const _GetInjuryByUserId(this.userId);
  

 final  String userId;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInjuryByUserIdCopyWith<_GetInjuryByUserId> get copyWith => __$GetInjuryByUserIdCopyWithImpl<_GetInjuryByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInjuryByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'InjuryEvent.getInjuryByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetInjuryByUserIdCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetInjuryByUserIdCopyWith(_GetInjuryByUserId value, $Res Function(_GetInjuryByUserId) _then) = __$GetInjuryByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetInjuryByUserIdCopyWithImpl<$Res>
    implements _$GetInjuryByUserIdCopyWith<$Res> {
  __$GetInjuryByUserIdCopyWithImpl(this._self, this._then);

  final _GetInjuryByUserId _self;
  final $Res Function(_GetInjuryByUserId) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetInjuryByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllInjuries implements InjuryEvent {
  const _GetAllInjuries({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllInjuriesCopyWith<_GetAllInjuries> get copyWith => __$GetAllInjuriesCopyWithImpl<_GetAllInjuries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllInjuries&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'InjuryEvent.getAllInjuries(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllInjuriesCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$GetAllInjuriesCopyWith(_GetAllInjuries value, $Res Function(_GetAllInjuries) _then) = __$GetAllInjuriesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllInjuriesCopyWithImpl<$Res>
    implements _$GetAllInjuriesCopyWith<$Res> {
  __$GetAllInjuriesCopyWithImpl(this._self, this._then);

  final _GetAllInjuries _self;
  final $Res Function(_GetAllInjuries) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllInjuries(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateInjury implements InjuryEvent {
  const _UpdateInjury(this.id, this.injury);
  

 final  String id;
 final  Injury injury;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInjuryCopyWith<_UpdateInjury> get copyWith => __$UpdateInjuryCopyWithImpl<_UpdateInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInjury&&(identical(other.id, id) || other.id == id)&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,id,injury);

@override
String toString() {
  return 'InjuryEvent.updateInjury(id: $id, injury: $injury)';
}


}

/// @nodoc
abstract mixin class _$UpdateInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$UpdateInjuryCopyWith(_UpdateInjury value, $Res Function(_UpdateInjury) _then) = __$UpdateInjuryCopyWithImpl;
@useResult
$Res call({
 String id, Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class __$UpdateInjuryCopyWithImpl<$Res>
    implements _$UpdateInjuryCopyWith<$Res> {
  __$UpdateInjuryCopyWithImpl(this._self, this._then);

  final _UpdateInjury _self;
  final $Res Function(_UpdateInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? injury = null,}) {
  return _then(_UpdateInjury(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class _DeleteInjury implements InjuryEvent {
  const _DeleteInjury(this.id);
  

 final  String id;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteInjuryCopyWith<_DeleteInjury> get copyWith => __$DeleteInjuryCopyWithImpl<_DeleteInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteInjury&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'InjuryEvent.deleteInjury(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteInjuryCopyWith<$Res> implements $InjuryEventCopyWith<$Res> {
  factory _$DeleteInjuryCopyWith(_DeleteInjury value, $Res Function(_DeleteInjury) _then) = __$DeleteInjuryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteInjuryCopyWithImpl<$Res>
    implements _$DeleteInjuryCopyWith<$Res> {
  __$DeleteInjuryCopyWithImpl(this._self, this._then);

  final _DeleteInjury _self;
  final $Res Function(_DeleteInjury) _then;

/// Create a copy of InjuryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteInjury(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$InjuryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjuryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState()';
}


}

/// @nodoc
class $InjuryStateCopyWith<$Res>  {
$InjuryStateCopyWith(InjuryState _, $Res Function(InjuryState) __);
}


/// @nodoc


class Injury_Initial implements InjuryState {
  const Injury_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState.initial()';
}


}




/// @nodoc


class Injury_Loading implements InjuryState {
  const Injury_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InjuryState.loading()';
}


}




/// @nodoc


class LoadedInjury implements InjuryState {
  const LoadedInjury(this.injury);
  

 final  Injury injury;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedInjuryCopyWith<LoadedInjury> get copyWith => _$LoadedInjuryCopyWithImpl<LoadedInjury>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedInjury&&(identical(other.injury, injury) || other.injury == injury));
}


@override
int get hashCode => Object.hash(runtimeType,injury);

@override
String toString() {
  return 'InjuryState.loadedInjury(injury: $injury)';
}


}

/// @nodoc
abstract mixin class $LoadedInjuryCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $LoadedInjuryCopyWith(LoadedInjury value, $Res Function(LoadedInjury) _then) = _$LoadedInjuryCopyWithImpl;
@useResult
$Res call({
 Injury injury
});


$InjuryCopyWith<$Res> get injury;

}
/// @nodoc
class _$LoadedInjuryCopyWithImpl<$Res>
    implements $LoadedInjuryCopyWith<$Res> {
  _$LoadedInjuryCopyWithImpl(this._self, this._then);

  final LoadedInjury _self;
  final $Res Function(LoadedInjury) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injury = null,}) {
  return _then(LoadedInjury(
null == injury ? _self.injury : injury // ignore: cast_nullable_to_non_nullable
as Injury,
  ));
}

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InjuryCopyWith<$Res> get injury {
  
  return $InjuryCopyWith<$Res>(_self.injury, (value) {
    return _then(_self.copyWith(injury: value));
  });
}
}

/// @nodoc


class LoadedInjuries implements InjuryState {
  const LoadedInjuries(final  List<Injury> injuries, this.currentPage, this.limit, this.hasMore): _injuries = injuries;
  

 final  List<Injury> _injuries;
 List<Injury> get injuries {
  if (_injuries is EqualUnmodifiableListView) return _injuries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_injuries);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedInjuriesCopyWith<LoadedInjuries> get copyWith => _$LoadedInjuriesCopyWithImpl<LoadedInjuries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedInjuries&&const DeepCollectionEquality().equals(other._injuries, _injuries)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_injuries),currentPage,limit,hasMore);

@override
String toString() {
  return 'InjuryState.loadedInjuries(injuries: $injuries, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedInjuriesCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $LoadedInjuriesCopyWith(LoadedInjuries value, $Res Function(LoadedInjuries) _then) = _$LoadedInjuriesCopyWithImpl;
@useResult
$Res call({
 List<Injury> injuries, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedInjuriesCopyWithImpl<$Res>
    implements $LoadedInjuriesCopyWith<$Res> {
  _$LoadedInjuriesCopyWithImpl(this._self, this._then);

  final LoadedInjuries _self;
  final $Res Function(LoadedInjuries) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? injuries = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedInjuries(
null == injuries ? _self._injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<Injury>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Injury_Error implements InjuryState {
  const Injury_Error(this.message);
  

 final  String message;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Injury_ErrorCopyWith<Injury_Error> get copyWith => _$Injury_ErrorCopyWithImpl<Injury_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InjuryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Injury_ErrorCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $Injury_ErrorCopyWith(Injury_Error value, $Res Function(Injury_Error) _then) = _$Injury_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Injury_ErrorCopyWithImpl<$Res>
    implements $Injury_ErrorCopyWith<$Res> {
  _$Injury_ErrorCopyWithImpl(this._self, this._then);

  final Injury_Error _self;
  final $Res Function(Injury_Error) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Injury_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Injury_Success implements InjuryState {
  const Injury_Success(this.message);
  

 final  String message;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Injury_SuccessCopyWith<Injury_Success> get copyWith => _$Injury_SuccessCopyWithImpl<Injury_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InjuryState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Injury_SuccessCopyWith<$Res> implements $InjuryStateCopyWith<$Res> {
  factory $Injury_SuccessCopyWith(Injury_Success value, $Res Function(Injury_Success) _then) = _$Injury_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Injury_SuccessCopyWithImpl<$Res>
    implements $Injury_SuccessCopyWith<$Res> {
  _$Injury_SuccessCopyWithImpl(this._self, this._then);

  final Injury_Success _self;
  final $Res Function(Injury_Success) _then;

/// Create a copy of InjuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Injury_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
