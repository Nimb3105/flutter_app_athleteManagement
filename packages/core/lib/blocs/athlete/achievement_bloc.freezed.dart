// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AchievementEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AchievementEvent()';
}


}

/// @nodoc
class $AchievementEventCopyWith<$Res>  {
$AchievementEventCopyWith(AchievementEvent _, $Res Function(AchievementEvent) __);
}


/// @nodoc


class _CreateAchievement implements AchievementEvent {
  const _CreateAchievement(this.achievement);
  

 final  Achievement achievement;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAchievementCopyWith<_CreateAchievement> get copyWith => __$CreateAchievementCopyWithImpl<_CreateAchievement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAchievement&&(identical(other.achievement, achievement) || other.achievement == achievement));
}


@override
int get hashCode => Object.hash(runtimeType,achievement);

@override
String toString() {
  return 'AchievementEvent.createAchievement(achievement: $achievement)';
}


}

/// @nodoc
abstract mixin class _$CreateAchievementCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$CreateAchievementCopyWith(_CreateAchievement value, $Res Function(_CreateAchievement) _then) = __$CreateAchievementCopyWithImpl;
@useResult
$Res call({
 Achievement achievement
});


$AchievementCopyWith<$Res> get achievement;

}
/// @nodoc
class __$CreateAchievementCopyWithImpl<$Res>
    implements _$CreateAchievementCopyWith<$Res> {
  __$CreateAchievementCopyWithImpl(this._self, this._then);

  final _CreateAchievement _self;
  final $Res Function(_CreateAchievement) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? achievement = null,}) {
  return _then(_CreateAchievement(
null == achievement ? _self.achievement : achievement // ignore: cast_nullable_to_non_nullable
as Achievement,
  ));
}

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AchievementCopyWith<$Res> get achievement {
  
  return $AchievementCopyWith<$Res>(_self.achievement, (value) {
    return _then(_self.copyWith(achievement: value));
  });
}
}

/// @nodoc


class _GetAchievementById implements AchievementEvent {
  const _GetAchievementById(this.id);
  

 final  String id;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAchievementByIdCopyWith<_GetAchievementById> get copyWith => __$GetAchievementByIdCopyWithImpl<_GetAchievementById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAchievementById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AchievementEvent.getAchievementById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetAchievementByIdCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$GetAchievementByIdCopyWith(_GetAchievementById value, $Res Function(_GetAchievementById) _then) = __$GetAchievementByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetAchievementByIdCopyWithImpl<$Res>
    implements _$GetAchievementByIdCopyWith<$Res> {
  __$GetAchievementByIdCopyWithImpl(this._self, this._then);

  final _GetAchievementById _self;
  final $Res Function(_GetAchievementById) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetAchievementById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAchievementByUserId implements AchievementEvent {
  const _GetAchievementByUserId(this.userId);
  

 final  String userId;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAchievementByUserIdCopyWith<_GetAchievementByUserId> get copyWith => __$GetAchievementByUserIdCopyWithImpl<_GetAchievementByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAchievementByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'AchievementEvent.getAchievementByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetAchievementByUserIdCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$GetAchievementByUserIdCopyWith(_GetAchievementByUserId value, $Res Function(_GetAchievementByUserId) _then) = __$GetAchievementByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetAchievementByUserIdCopyWithImpl<$Res>
    implements _$GetAchievementByUserIdCopyWith<$Res> {
  __$GetAchievementByUserIdCopyWithImpl(this._self, this._then);

  final _GetAchievementByUserId _self;
  final $Res Function(_GetAchievementByUserId) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetAchievementByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllAchievements implements AchievementEvent {
  const _GetAllAchievements({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllAchievementsCopyWith<_GetAllAchievements> get copyWith => __$GetAllAchievementsCopyWithImpl<_GetAllAchievements>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllAchievements&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'AchievementEvent.getAllAchievements(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllAchievementsCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$GetAllAchievementsCopyWith(_GetAllAchievements value, $Res Function(_GetAllAchievements) _then) = __$GetAllAchievementsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllAchievementsCopyWithImpl<$Res>
    implements _$GetAllAchievementsCopyWith<$Res> {
  __$GetAllAchievementsCopyWithImpl(this._self, this._then);

  final _GetAllAchievements _self;
  final $Res Function(_GetAllAchievements) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllAchievements(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateAchievement implements AchievementEvent {
  const _UpdateAchievement(this.id, this.achievement);
  

 final  String id;
 final  Achievement achievement;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAchievementCopyWith<_UpdateAchievement> get copyWith => __$UpdateAchievementCopyWithImpl<_UpdateAchievement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAchievement&&(identical(other.id, id) || other.id == id)&&(identical(other.achievement, achievement) || other.achievement == achievement));
}


@override
int get hashCode => Object.hash(runtimeType,id,achievement);

@override
String toString() {
  return 'AchievementEvent.updateAchievement(id: $id, achievement: $achievement)';
}


}

/// @nodoc
abstract mixin class _$UpdateAchievementCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$UpdateAchievementCopyWith(_UpdateAchievement value, $Res Function(_UpdateAchievement) _then) = __$UpdateAchievementCopyWithImpl;
@useResult
$Res call({
 String id, Achievement achievement
});


$AchievementCopyWith<$Res> get achievement;

}
/// @nodoc
class __$UpdateAchievementCopyWithImpl<$Res>
    implements _$UpdateAchievementCopyWith<$Res> {
  __$UpdateAchievementCopyWithImpl(this._self, this._then);

  final _UpdateAchievement _self;
  final $Res Function(_UpdateAchievement) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? achievement = null,}) {
  return _then(_UpdateAchievement(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == achievement ? _self.achievement : achievement // ignore: cast_nullable_to_non_nullable
as Achievement,
  ));
}

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AchievementCopyWith<$Res> get achievement {
  
  return $AchievementCopyWith<$Res>(_self.achievement, (value) {
    return _then(_self.copyWith(achievement: value));
  });
}
}

/// @nodoc


class _DeleteAchievement implements AchievementEvent {
  const _DeleteAchievement(this.id);
  

 final  String id;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAchievementCopyWith<_DeleteAchievement> get copyWith => __$DeleteAchievementCopyWithImpl<_DeleteAchievement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAchievement&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AchievementEvent.deleteAchievement(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteAchievementCopyWith<$Res> implements $AchievementEventCopyWith<$Res> {
  factory _$DeleteAchievementCopyWith(_DeleteAchievement value, $Res Function(_DeleteAchievement) _then) = __$DeleteAchievementCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteAchievementCopyWithImpl<$Res>
    implements _$DeleteAchievementCopyWith<$Res> {
  __$DeleteAchievementCopyWithImpl(this._self, this._then);

  final _DeleteAchievement _self;
  final $Res Function(_DeleteAchievement) _then;

/// Create a copy of AchievementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteAchievement(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AchievementState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AchievementState()';
}


}

/// @nodoc
class $AchievementStateCopyWith<$Res>  {
$AchievementStateCopyWith(AchievementState _, $Res Function(AchievementState) __);
}


/// @nodoc


class Achievement_Initial implements AchievementState {
  const Achievement_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Achievement_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AchievementState.initial()';
}


}




/// @nodoc


class Achievement_Loading implements AchievementState {
  const Achievement_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Achievement_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AchievementState.loading()';
}


}




/// @nodoc


class LoadedAchievement implements AchievementState {
  const LoadedAchievement(this.achievement);
  

 final  Achievement achievement;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAchievementCopyWith<LoadedAchievement> get copyWith => _$LoadedAchievementCopyWithImpl<LoadedAchievement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAchievement&&(identical(other.achievement, achievement) || other.achievement == achievement));
}


@override
int get hashCode => Object.hash(runtimeType,achievement);

@override
String toString() {
  return 'AchievementState.loadedAchievement(achievement: $achievement)';
}


}

/// @nodoc
abstract mixin class $LoadedAchievementCopyWith<$Res> implements $AchievementStateCopyWith<$Res> {
  factory $LoadedAchievementCopyWith(LoadedAchievement value, $Res Function(LoadedAchievement) _then) = _$LoadedAchievementCopyWithImpl;
@useResult
$Res call({
 Achievement achievement
});


$AchievementCopyWith<$Res> get achievement;

}
/// @nodoc
class _$LoadedAchievementCopyWithImpl<$Res>
    implements $LoadedAchievementCopyWith<$Res> {
  _$LoadedAchievementCopyWithImpl(this._self, this._then);

  final LoadedAchievement _self;
  final $Res Function(LoadedAchievement) _then;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? achievement = null,}) {
  return _then(LoadedAchievement(
null == achievement ? _self.achievement : achievement // ignore: cast_nullable_to_non_nullable
as Achievement,
  ));
}

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AchievementCopyWith<$Res> get achievement {
  
  return $AchievementCopyWith<$Res>(_self.achievement, (value) {
    return _then(_self.copyWith(achievement: value));
  });
}
}

/// @nodoc


class LoadedAchievements implements AchievementState {
  const LoadedAchievements(final  List<Achievement> achievements, this.currentPage, this.limit, this.hasMore): _achievements = achievements;
  

 final  List<Achievement> _achievements;
 List<Achievement> get achievements {
  if (_achievements is EqualUnmodifiableListView) return _achievements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_achievements);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAchievementsCopyWith<LoadedAchievements> get copyWith => _$LoadedAchievementsCopyWithImpl<LoadedAchievements>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAchievements&&const DeepCollectionEquality().equals(other._achievements, _achievements)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_achievements),currentPage,limit,hasMore);

@override
String toString() {
  return 'AchievementState.loadedAchievements(achievements: $achievements, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedAchievementsCopyWith<$Res> implements $AchievementStateCopyWith<$Res> {
  factory $LoadedAchievementsCopyWith(LoadedAchievements value, $Res Function(LoadedAchievements) _then) = _$LoadedAchievementsCopyWithImpl;
@useResult
$Res call({
 List<Achievement> achievements, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedAchievementsCopyWithImpl<$Res>
    implements $LoadedAchievementsCopyWith<$Res> {
  _$LoadedAchievementsCopyWithImpl(this._self, this._then);

  final LoadedAchievements _self;
  final $Res Function(LoadedAchievements) _then;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? achievements = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedAchievements(
null == achievements ? _self._achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<Achievement>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Achievement_Error implements AchievementState {
  const Achievement_Error(this.message);
  

 final  String message;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Achievement_ErrorCopyWith<Achievement_Error> get copyWith => _$Achievement_ErrorCopyWithImpl<Achievement_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Achievement_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AchievementState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Achievement_ErrorCopyWith<$Res> implements $AchievementStateCopyWith<$Res> {
  factory $Achievement_ErrorCopyWith(Achievement_Error value, $Res Function(Achievement_Error) _then) = _$Achievement_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Achievement_ErrorCopyWithImpl<$Res>
    implements $Achievement_ErrorCopyWith<$Res> {
  _$Achievement_ErrorCopyWithImpl(this._self, this._then);

  final Achievement_Error _self;
  final $Res Function(Achievement_Error) _then;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Achievement_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Achievement_Success implements AchievementState {
  const Achievement_Success(this.message);
  

 final  String message;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Achievement_SuccessCopyWith<Achievement_Success> get copyWith => _$Achievement_SuccessCopyWithImpl<Achievement_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Achievement_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AchievementState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Achievement_SuccessCopyWith<$Res> implements $AchievementStateCopyWith<$Res> {
  factory $Achievement_SuccessCopyWith(Achievement_Success value, $Res Function(Achievement_Success) _then) = _$Achievement_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Achievement_SuccessCopyWithImpl<$Res>
    implements $Achievement_SuccessCopyWith<$Res> {
  _$Achievement_SuccessCopyWithImpl(this._self, this._then);

  final Achievement_Success _self;
  final $Res Function(Achievement_Success) _then;

/// Create a copy of AchievementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Achievement_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
