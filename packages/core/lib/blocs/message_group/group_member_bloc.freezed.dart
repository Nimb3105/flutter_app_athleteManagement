// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupMemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberEvent()';
}


}

/// @nodoc
class $GroupMemberEventCopyWith<$Res>  {
$GroupMemberEventCopyWith(GroupMemberEvent _, $Res Function(GroupMemberEvent) __);
}


/// @nodoc


class _CreateGroupMember implements GroupMemberEvent {
  const _CreateGroupMember(this.groupMember);
  

 final  GroupMember groupMember;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupMemberCopyWith<_CreateGroupMember> get copyWith => __$CreateGroupMemberCopyWithImpl<_CreateGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupMember&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,groupMember);

@override
String toString() {
  return 'GroupMemberEvent.createGroupMember(groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$CreateGroupMemberCopyWith(_CreateGroupMember value, $Res Function(_CreateGroupMember) _then) = __$CreateGroupMemberCopyWithImpl;
@useResult
$Res call({
 GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class __$CreateGroupMemberCopyWithImpl<$Res>
    implements _$CreateGroupMemberCopyWith<$Res> {
  __$CreateGroupMemberCopyWithImpl(this._self, this._then);

  final _CreateGroupMember _self;
  final $Res Function(_CreateGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMember = null,}) {
  return _then(_CreateGroupMember(
null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class _GetGroupMemberById implements GroupMemberEvent {
  const _GetGroupMemberById(this.id);
  

 final  String id;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupMemberByIdCopyWith<_GetGroupMemberById> get copyWith => __$GetGroupMemberByIdCopyWithImpl<_GetGroupMemberById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupMemberById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupMemberEvent.getGroupMemberById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetGroupMemberByIdCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetGroupMemberByIdCopyWith(_GetGroupMemberById value, $Res Function(_GetGroupMemberById) _then) = __$GetGroupMemberByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetGroupMemberByIdCopyWithImpl<$Res>
    implements _$GetGroupMemberByIdCopyWith<$Res> {
  __$GetGroupMemberByIdCopyWithImpl(this._self, this._then);

  final _GetGroupMemberById _self;
  final $Res Function(_GetGroupMemberById) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetGroupMemberById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGroupMemberByUserId implements GroupMemberEvent {
  const _GetGroupMemberByUserId(this.userId);
  

 final  String userId;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGroupMemberByUserIdCopyWith<_GetGroupMemberByUserId> get copyWith => __$GetGroupMemberByUserIdCopyWithImpl<_GetGroupMemberByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGroupMemberByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GroupMemberEvent.getGroupMemberByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetGroupMemberByUserIdCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetGroupMemberByUserIdCopyWith(_GetGroupMemberByUserId value, $Res Function(_GetGroupMemberByUserId) _then) = __$GetGroupMemberByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetGroupMemberByUserIdCopyWithImpl<$Res>
    implements _$GetGroupMemberByUserIdCopyWith<$Res> {
  __$GetGroupMemberByUserIdCopyWithImpl(this._self, this._then);

  final _GetGroupMemberByUserId _self;
  final $Res Function(_GetGroupMemberByUserId) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetGroupMemberByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllGroupMembers implements GroupMemberEvent {
  const _GetAllGroupMembers({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllGroupMembersCopyWith<_GetAllGroupMembers> get copyWith => __$GetAllGroupMembersCopyWithImpl<_GetAllGroupMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllGroupMembers&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'GroupMemberEvent.getAllGroupMembers(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllGroupMembersCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$GetAllGroupMembersCopyWith(_GetAllGroupMembers value, $Res Function(_GetAllGroupMembers) _then) = __$GetAllGroupMembersCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllGroupMembersCopyWithImpl<$Res>
    implements _$GetAllGroupMembersCopyWith<$Res> {
  __$GetAllGroupMembersCopyWithImpl(this._self, this._then);

  final _GetAllGroupMembers _self;
  final $Res Function(_GetAllGroupMembers) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllGroupMembers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateGroupMember implements GroupMemberEvent {
  const _UpdateGroupMember(this.id, this.groupMember);
  

 final  String id;
 final  GroupMember groupMember;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGroupMemberCopyWith<_UpdateGroupMember> get copyWith => __$UpdateGroupMemberCopyWithImpl<_UpdateGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGroupMember&&(identical(other.id, id) || other.id == id)&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupMember);

@override
String toString() {
  return 'GroupMemberEvent.updateGroupMember(id: $id, groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class _$UpdateGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$UpdateGroupMemberCopyWith(_UpdateGroupMember value, $Res Function(_UpdateGroupMember) _then) = __$UpdateGroupMemberCopyWithImpl;
@useResult
$Res call({
 String id, GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class __$UpdateGroupMemberCopyWithImpl<$Res>
    implements _$UpdateGroupMemberCopyWith<$Res> {
  __$UpdateGroupMemberCopyWithImpl(this._self, this._then);

  final _UpdateGroupMember _self;
  final $Res Function(_UpdateGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupMember = null,}) {
  return _then(_UpdateGroupMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class _DeleteGroupMember implements GroupMemberEvent {
  const _DeleteGroupMember(this.id);
  

 final  String id;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGroupMemberCopyWith<_DeleteGroupMember> get copyWith => __$DeleteGroupMemberCopyWithImpl<_DeleteGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGroupMember&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GroupMemberEvent.deleteGroupMember(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteGroupMemberCopyWith<$Res> implements $GroupMemberEventCopyWith<$Res> {
  factory _$DeleteGroupMemberCopyWith(_DeleteGroupMember value, $Res Function(_DeleteGroupMember) _then) = __$DeleteGroupMemberCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteGroupMemberCopyWithImpl<$Res>
    implements _$DeleteGroupMemberCopyWith<$Res> {
  __$DeleteGroupMemberCopyWithImpl(this._self, this._then);

  final _DeleteGroupMember _self;
  final $Res Function(_DeleteGroupMember) _then;

/// Create a copy of GroupMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteGroupMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GroupMemberState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMemberState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState()';
}


}

/// @nodoc
class $GroupMemberStateCopyWith<$Res>  {
$GroupMemberStateCopyWith(GroupMemberState _, $Res Function(GroupMemberState) __);
}


/// @nodoc


class GroupMember_Initial implements GroupMemberState {
  const GroupMember_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState.initial()';
}


}




/// @nodoc


class GroupMember_Loading implements GroupMemberState {
  const GroupMember_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupMemberState.loading()';
}


}




/// @nodoc


class LoadedGroupMember implements GroupMemberState {
  const LoadedGroupMember(this.groupMember);
  

 final  GroupMember groupMember;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupMemberCopyWith<LoadedGroupMember> get copyWith => _$LoadedGroupMemberCopyWithImpl<LoadedGroupMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroupMember&&(identical(other.groupMember, groupMember) || other.groupMember == groupMember));
}


@override
int get hashCode => Object.hash(runtimeType,groupMember);

@override
String toString() {
  return 'GroupMemberState.loadedGroupMember(groupMember: $groupMember)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupMemberCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $LoadedGroupMemberCopyWith(LoadedGroupMember value, $Res Function(LoadedGroupMember) _then) = _$LoadedGroupMemberCopyWithImpl;
@useResult
$Res call({
 GroupMember groupMember
});


$GroupMemberCopyWith<$Res> get groupMember;

}
/// @nodoc
class _$LoadedGroupMemberCopyWithImpl<$Res>
    implements $LoadedGroupMemberCopyWith<$Res> {
  _$LoadedGroupMemberCopyWithImpl(this._self, this._then);

  final LoadedGroupMember _self;
  final $Res Function(LoadedGroupMember) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMember = null,}) {
  return _then(LoadedGroupMember(
null == groupMember ? _self.groupMember : groupMember // ignore: cast_nullable_to_non_nullable
as GroupMember,
  ));
}

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<$Res> get groupMember {
  
  return $GroupMemberCopyWith<$Res>(_self.groupMember, (value) {
    return _then(_self.copyWith(groupMember: value));
  });
}
}

/// @nodoc


class LoadedGroupMembers implements GroupMemberState {
  const LoadedGroupMembers(final  List<GroupMember> groupMembers, this.currentPage, this.limit, this.hasMore): _groupMembers = groupMembers;
  

 final  List<GroupMember> _groupMembers;
 List<GroupMember> get groupMembers {
  if (_groupMembers is EqualUnmodifiableListView) return _groupMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groupMembers);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedGroupMembersCopyWith<LoadedGroupMembers> get copyWith => _$LoadedGroupMembersCopyWithImpl<LoadedGroupMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedGroupMembers&&const DeepCollectionEquality().equals(other._groupMembers, _groupMembers)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groupMembers),currentPage,limit,hasMore);

@override
String toString() {
  return 'GroupMemberState.loadedGroupMembers(groupMembers: $groupMembers, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedGroupMembersCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $LoadedGroupMembersCopyWith(LoadedGroupMembers value, $Res Function(LoadedGroupMembers) _then) = _$LoadedGroupMembersCopyWithImpl;
@useResult
$Res call({
 List<GroupMember> groupMembers, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedGroupMembersCopyWithImpl<$Res>
    implements $LoadedGroupMembersCopyWith<$Res> {
  _$LoadedGroupMembersCopyWithImpl(this._self, this._then);

  final LoadedGroupMembers _self;
  final $Res Function(LoadedGroupMembers) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupMembers = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedGroupMembers(
null == groupMembers ? _self._groupMembers : groupMembers // ignore: cast_nullable_to_non_nullable
as List<GroupMember>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class GroupMember_Error implements GroupMemberState {
  const GroupMember_Error(this.message);
  

 final  String message;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMember_ErrorCopyWith<GroupMember_Error> get copyWith => _$GroupMember_ErrorCopyWithImpl<GroupMember_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupMemberState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GroupMember_ErrorCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $GroupMember_ErrorCopyWith(GroupMember_Error value, $Res Function(GroupMember_Error) _then) = _$GroupMember_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GroupMember_ErrorCopyWithImpl<$Res>
    implements $GroupMember_ErrorCopyWith<$Res> {
  _$GroupMember_ErrorCopyWithImpl(this._self, this._then);

  final GroupMember_Error _self;
  final $Res Function(GroupMember_Error) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GroupMember_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GroupMember_Success implements GroupMemberState {
  const GroupMember_Success(this.message);
  

 final  String message;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMember_SuccessCopyWith<GroupMember_Success> get copyWith => _$GroupMember_SuccessCopyWithImpl<GroupMember_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GroupMemberState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $GroupMember_SuccessCopyWith<$Res> implements $GroupMemberStateCopyWith<$Res> {
  factory $GroupMember_SuccessCopyWith(GroupMember_Success value, $Res Function(GroupMember_Success) _then) = _$GroupMember_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GroupMember_SuccessCopyWithImpl<$Res>
    implements $GroupMember_SuccessCopyWith<$Res> {
  _$GroupMember_SuccessCopyWithImpl(this._self, this._then);

  final GroupMember_Success _self;
  final $Res Function(GroupMember_Success) _then;

/// Create a copy of GroupMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GroupMember_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
