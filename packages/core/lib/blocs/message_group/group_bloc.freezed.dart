// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupEvent()';
}


}

/// @nodoc
class $GroupEventCopyWith<$Res>  {
$GroupEventCopyWith(GroupEvent _, $Res Function(GroupEvent) __);
}


/// @nodoc


class _CreateGroup implements GroupEvent {
  const _CreateGroup(this.group);
  

 final  Group group;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupCopyWith<_CreateGroup> get copyWith => __$CreateGroupCopyWithImpl<_CreateGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroup&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode => Object.hash(runtimeType,group);

@override
String toString() {
  return 'GroupEvent.createGroup(group: $group)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$CreateGroupCopyWith(_CreateGroup value, $Res Function(_CreateGroup) _then) = __$CreateGroupCopyWithImpl;
@useResult
$Res call({
 Group group
});


$GroupCopyWith<$Res> get group;

}
/// @nodoc
class __$CreateGroupCopyWithImpl<$Res>
    implements _$CreateGroupCopyWith<$Res> {
  __$CreateGroupCopyWithImpl(this._self, this._then);

  final _CreateGroup _self;
  final $Res Function(_CreateGroup) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? group = null,}) {
  return _then(_CreateGroup(
null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group,
  ));
}

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res> get group {
  
  return $GroupCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}

/// @nodoc


class _GetGroupById implements GroupEvent {
  const _GetGroupById(this.id);
  

 final  String id;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupByIdCopyWith<_GetGroupById> get copyWith => __$GetGroupByIdCopyWithImpl<_GetGroupById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupEvent.getGroupById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetGroupByIdCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$GetGroupByIdCopyWith(_GetGroupById value, $Res Function(_GetGroupById) _then) = __$GetGroupByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetGroupByIdCopyWithImpl<$Res>
    implements _$GetGroupByIdCopyWith<$Res> {
  __$GetGroupByIdCopyWithImpl(this._self, this._then);

  final _GetGroupById _self;
  final $Res Function(_GetGroupById) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetGroupById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGroupByCreatedBy implements GroupEvent {
  const _GetGroupByCreatedBy(this.createdBy);
  

 final  String createdBy;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupByCreatedByCopyWith<_GetGroupByCreatedBy> get copyWith => __$GetGroupByCreatedByCopyWithImpl<_GetGroupByCreatedBy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupByCreatedBy&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,createdBy);

@override
String toString() {
  return 'GroupEvent.getGroupByCreatedBy(createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$GetGroupByCreatedByCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$GetGroupByCreatedByCopyWith(_GetGroupByCreatedBy value, $Res Function(_GetGroupByCreatedBy) _then) = __$GetGroupByCreatedByCopyWithImpl;
@useResult
$Res call({
 String createdBy
});




}
/// @nodoc
class __$GetGroupByCreatedByCopyWithImpl<$Res>
    implements _$GetGroupByCreatedByCopyWith<$Res> {
  __$GetGroupByCreatedByCopyWithImpl(this._self, this._then);

  final _GetGroupByCreatedBy _self;
  final $Res Function(_GetGroupByCreatedBy) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createdBy = null,}) {
  return _then(_GetGroupByCreatedBy(
null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllGroups implements GroupEvent {
  const _GetAllGroups({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllGroupsCopyWith<_GetAllGroups> get copyWith => __$GetAllGroupsCopyWithImpl<_GetAllGroups>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllGroups&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'GroupEvent.getAllGroups(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllGroupsCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$GetAllGroupsCopyWith(_GetAllGroups value, $Res Function(_GetAllGroups) _then) = __$GetAllGroupsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllGroupsCopyWithImpl<$Res>
    implements _$GetAllGroupsCopyWith<$Res> {
  __$GetAllGroupsCopyWithImpl(this._self, this._then);

  final _GetAllGroups _self;
  final $Res Function(_GetAllGroups) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllGroups(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateGroup implements GroupEvent {
  const _UpdateGroup(this.id, this.group);
  

 final  String id;
 final  Group group;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGroupCopyWith<_UpdateGroup> get copyWith => __$UpdateGroupCopyWithImpl<_UpdateGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode => Object.hash(runtimeType,id,group);

@override
String toString() {
  return 'GroupEvent.updateGroup(id: $id, group: $group)';
}


}

/// @nodoc
abstract mixin class _$UpdateGroupCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$UpdateGroupCopyWith(_UpdateGroup value, $Res Function(_UpdateGroup) _then) = __$UpdateGroupCopyWithImpl;
@useResult
$Res call({
 String id, Group group
});


$GroupCopyWith<$Res> get group;

}
/// @nodoc
class __$UpdateGroupCopyWithImpl<$Res>
    implements _$UpdateGroupCopyWith<$Res> {
  __$UpdateGroupCopyWithImpl(this._self, this._then);

  final _UpdateGroup _self;
  final $Res Function(_UpdateGroup) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? group = null,}) {
  return _then(_UpdateGroup(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group,
  ));
}

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res> get group {
  
  return $GroupCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}

/// @nodoc


class _DeleteGroup implements GroupEvent {
  const _DeleteGroup(this.id);
  

 final  String id;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGroupCopyWith<_DeleteGroup> get copyWith => __$DeleteGroupCopyWithImpl<_DeleteGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGroup&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupEvent.deleteGroup(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteGroupCopyWith<$Res> implements $GroupEventCopyWith<$Res> {
  factory _$DeleteGroupCopyWith(_DeleteGroup value, $Res Function(_DeleteGroup) _then) = __$DeleteGroupCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteGroupCopyWithImpl<$Res>
    implements _$DeleteGroupCopyWith<$Res> {
  __$DeleteGroupCopyWithImpl(this._self, this._then);

  final _DeleteGroup _self;
  final $Res Function(_DeleteGroup) _then;

/// Create a copy of GroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteGroup(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GroupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupState()';
}


}

/// @nodoc
class $GroupStateCopyWith<$Res>  {
$GroupStateCopyWith(GroupState _, $Res Function(GroupState) __);
}


/// @nodoc


class Group_Initial implements GroupState {
  const Group_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupState.initial()';
}


}




/// @nodoc


class Group_Loading implements GroupState {
  const Group_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupState.loading()';
}


}




/// @nodoc


class LoadedGroup implements GroupState {
  const LoadedGroup(this.group);
  

 final  Group group;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupCopyWith<LoadedGroup> get copyWith => _$LoadedGroupCopyWithImpl<LoadedGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroup&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode => Object.hash(runtimeType,group);

@override
String toString() {
  return 'GroupState.loadedGroup(group: $group)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory $LoadedGroupCopyWith(LoadedGroup value, $Res Function(LoadedGroup) _then) = _$LoadedGroupCopyWithImpl;
@useResult
$Res call({
 Group group
});


$GroupCopyWith<$Res> get group;

}
/// @nodoc
class _$LoadedGroupCopyWithImpl<$Res>
    implements $LoadedGroupCopyWith<$Res> {
  _$LoadedGroupCopyWithImpl(this._self, this._then);

  final LoadedGroup _self;
  final $Res Function(LoadedGroup) _then;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? group = null,}) {
  return _then(LoadedGroup(
null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group,
  ));
}

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res> get group {
  
  return $GroupCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}

/// @nodoc


class LoadedGroups implements GroupState {
  const LoadedGroups(final  List<Group> groups, this.currentPage, this.limit, this.hasMore): _groups = groups;
  

 final  List<Group> _groups;
 List<Group> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupsCopyWith<LoadedGroups> get copyWith => _$LoadedGroupsCopyWithImpl<LoadedGroups>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroups&&const DeepCollectionEquality().equals(other._groups, _groups)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groups),currentPage,limit,hasMore);

@override
String toString() {
  return 'GroupState.loadedGroups(groups: $groups, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupsCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory $LoadedGroupsCopyWith(LoadedGroups value, $Res Function(LoadedGroups) _then) = _$LoadedGroupsCopyWithImpl;
@useResult
$Res call({
 List<Group> groups, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedGroupsCopyWithImpl<$Res>
    implements $LoadedGroupsCopyWith<$Res> {
  _$LoadedGroupsCopyWithImpl(this._self, this._then);

  final LoadedGroups _self;
  final $Res Function(LoadedGroups) _then;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groups = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedGroups(
null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<Group>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Group_Error implements GroupState {
  const Group_Error(this.message);
  

 final  String message;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Group_ErrorCopyWith<Group_Error> get copyWith => _$Group_ErrorCopyWithImpl<Group_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Group_ErrorCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory $Group_ErrorCopyWith(Group_Error value, $Res Function(Group_Error) _then) = _$Group_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Group_ErrorCopyWithImpl<$Res>
    implements $Group_ErrorCopyWith<$Res> {
  _$Group_ErrorCopyWithImpl(this._self, this._then);

  final Group_Error _self;
  final $Res Function(Group_Error) _then;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Group_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Group_Success implements GroupState {
  const Group_Success(this.message);
  

 final  String message;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Group_SuccessCopyWith<Group_Success> get copyWith => _$Group_SuccessCopyWithImpl<Group_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Group_SuccessCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory $Group_SuccessCopyWith(Group_Success value, $Res Function(Group_Success) _then) = _$Group_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Group_SuccessCopyWithImpl<$Res>
    implements $Group_SuccessCopyWith<$Res> {
  _$Group_SuccessCopyWithImpl(this._self, this._then);

  final Group_Success _self;
  final $Res Function(Group_Success) _then;

/// Create a copy of GroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Group_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
