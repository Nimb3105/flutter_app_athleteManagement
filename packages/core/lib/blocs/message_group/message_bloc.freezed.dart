// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent()';
}


}

/// @nodoc
class $MessageEventCopyWith<$Res>  {
$MessageEventCopyWith(MessageEvent _, $Res Function(MessageEvent) __);
}


/// @nodoc


class _CreateMessage implements MessageEvent {
  const _CreateMessage(this.message);
  

 final  Message message;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMessageCopyWith<_CreateMessage> get copyWith => __$CreateMessageCopyWithImpl<_CreateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageEvent.createMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$CreateMessageCopyWith(_CreateMessage value, $Res Function(_CreateMessage) _then) = __$CreateMessageCopyWithImpl;
@useResult
$Res call({
 Message message
});


$MessageCopyWith<$Res> get message;

}
/// @nodoc
class __$CreateMessageCopyWithImpl<$Res>
    implements _$CreateMessageCopyWith<$Res> {
  __$CreateMessageCopyWithImpl(this._self, this._then);

  final _CreateMessage _self;
  final $Res Function(_CreateMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreateMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class _GetMessageById implements MessageEvent {
  const _GetMessageById(this.id);
  

 final  String id;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMessageByIdCopyWith<_GetMessageById> get copyWith => __$GetMessageByIdCopyWithImpl<_GetMessageById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMessageById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MessageEvent.getMessageById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetMessageByIdCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$GetMessageByIdCopyWith(_GetMessageById value, $Res Function(_GetMessageById) _then) = __$GetMessageByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetMessageByIdCopyWithImpl<$Res>
    implements _$GetMessageByIdCopyWith<$Res> {
  __$GetMessageByIdCopyWithImpl(this._self, this._then);

  final _GetMessageById _self;
  final $Res Function(_GetMessageById) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetMessageById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetMessagesByGroupId implements MessageEvent {
  const _GetMessagesByGroupId(this.groupId);
  

 final  String groupId;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMessagesByGroupIdCopyWith<_GetMessagesByGroupId> get copyWith => __$GetMessagesByGroupIdCopyWithImpl<_GetMessagesByGroupId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMessagesByGroupId&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'MessageEvent.getMessagesByGroupId(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$GetMessagesByGroupIdCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$GetMessagesByGroupIdCopyWith(_GetMessagesByGroupId value, $Res Function(_GetMessagesByGroupId) _then) = __$GetMessagesByGroupIdCopyWithImpl;
@useResult
$Res call({
 String groupId
});




}
/// @nodoc
class __$GetMessagesByGroupIdCopyWithImpl<$Res>
    implements _$GetMessagesByGroupIdCopyWith<$Res> {
  __$GetMessagesByGroupIdCopyWithImpl(this._self, this._then);

  final _GetMessagesByGroupId _self;
  final $Res Function(_GetMessagesByGroupId) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupId = null,}) {
  return _then(_GetMessagesByGroupId(
null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAllMessages implements MessageEvent {
  const _GetAllMessages({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllMessagesCopyWith<_GetAllMessages> get copyWith => __$GetAllMessagesCopyWithImpl<_GetAllMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllMessages&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'MessageEvent.getAllMessages(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetAllMessagesCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$GetAllMessagesCopyWith(_GetAllMessages value, $Res Function(_GetAllMessages) _then) = __$GetAllMessagesCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$GetAllMessagesCopyWithImpl<$Res>
    implements _$GetAllMessagesCopyWith<$Res> {
  __$GetAllMessagesCopyWithImpl(this._self, this._then);

  final _GetAllMessages _self;
  final $Res Function(_GetAllMessages) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_GetAllMessages(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateMessage implements MessageEvent {
  const _UpdateMessage(this.id, this.message);
  

 final  String id;
 final  Message message;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMessageCopyWith<_UpdateMessage> get copyWith => __$UpdateMessageCopyWithImpl<_UpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,id,message);

@override
String toString() {
  return 'MessageEvent.updateMessage(id: $id, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UpdateMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$UpdateMessageCopyWith(_UpdateMessage value, $Res Function(_UpdateMessage) _then) = __$UpdateMessageCopyWithImpl;
@useResult
$Res call({
 String id, Message message
});


$MessageCopyWith<$Res> get message;

}
/// @nodoc
class __$UpdateMessageCopyWithImpl<$Res>
    implements _$UpdateMessageCopyWith<$Res> {
  __$UpdateMessageCopyWithImpl(this._self, this._then);

  final _UpdateMessage _self;
  final $Res Function(_UpdateMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? message = null,}) {
  return _then(_UpdateMessage(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class _DeleteMessage implements MessageEvent {
  const _DeleteMessage(this.id);
  

 final  String id;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMessageCopyWith<_DeleteMessage> get copyWith => __$DeleteMessageCopyWithImpl<_DeleteMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMessage&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MessageEvent.deleteMessage(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$DeleteMessageCopyWith(_DeleteMessage value, $Res Function(_DeleteMessage) _then) = __$DeleteMessageCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteMessageCopyWithImpl<$Res>
    implements _$DeleteMessageCopyWith<$Res> {
  __$DeleteMessageCopyWithImpl(this._self, this._then);

  final _DeleteMessage _self;
  final $Res Function(_DeleteMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteMessage(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MessageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState()';
}


}

/// @nodoc
class $MessageStateCopyWith<$Res>  {
$MessageStateCopyWith(MessageState _, $Res Function(MessageState) __);
}


/// @nodoc


class Message_Initial implements MessageState {
  const Message_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.initial()';
}


}




/// @nodoc


class Message_Loading implements MessageState {
  const Message_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.loading()';
}


}




/// @nodoc


class LoadedMessage implements MessageState {
  const LoadedMessage(this.message);
  

 final  Message message;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMessageCopyWith<LoadedMessage> get copyWith => _$LoadedMessageCopyWithImpl<LoadedMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageState.loadedMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoadedMessageCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $LoadedMessageCopyWith(LoadedMessage value, $Res Function(LoadedMessage) _then) = _$LoadedMessageCopyWithImpl;
@useResult
$Res call({
 Message message
});


$MessageCopyWith<$Res> get message;

}
/// @nodoc
class _$LoadedMessageCopyWithImpl<$Res>
    implements $LoadedMessageCopyWith<$Res> {
  _$LoadedMessageCopyWithImpl(this._self, this._then);

  final LoadedMessage _self;
  final $Res Function(LoadedMessage) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LoadedMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class LoadedMessages implements MessageState {
  const LoadedMessages(final  List<Message> messages, this.currentPage, this.limit, this.hasMore): _messages = messages;
  

 final  List<Message> _messages;
 List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMessagesCopyWith<LoadedMessages> get copyWith => _$LoadedMessagesCopyWithImpl<LoadedMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMessages&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),currentPage,limit,hasMore);

@override
String toString() {
  return 'MessageState.loadedMessages(messages: $messages, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedMessagesCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $LoadedMessagesCopyWith(LoadedMessages value, $Res Function(LoadedMessages) _then) = _$LoadedMessagesCopyWithImpl;
@useResult
$Res call({
 List<Message> messages, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedMessagesCopyWithImpl<$Res>
    implements $LoadedMessagesCopyWith<$Res> {
  _$LoadedMessagesCopyWithImpl(this._self, this._then);

  final LoadedMessages _self;
  final $Res Function(LoadedMessages) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedMessages(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Message_Error implements MessageState {
  const Message_Error(this.message);
  

 final  String message;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Message_ErrorCopyWith<Message_Error> get copyWith => _$Message_ErrorCopyWithImpl<Message_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Message_ErrorCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $Message_ErrorCopyWith(Message_Error value, $Res Function(Message_Error) _then) = _$Message_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Message_ErrorCopyWithImpl<$Res>
    implements $Message_ErrorCopyWith<$Res> {
  _$Message_ErrorCopyWithImpl(this._self, this._then);

  final Message_Error _self;
  final $Res Function(Message_Error) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Message_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Message_Success implements MessageState {
  const Message_Success(this.message);
  

 final  String message;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Message_SuccessCopyWith<Message_Success> get copyWith => _$Message_SuccessCopyWithImpl<Message_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Message_SuccessCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $Message_SuccessCopyWith(Message_Success value, $Res Function(Message_Success) _then) = _$Message_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Message_SuccessCopyWithImpl<$Res>
    implements $Message_SuccessCopyWith<$Res> {
  _$Message_SuccessCopyWithImpl(this._self, this._then);

  final Message_Success _self;
  final $Res Function(Message_Success) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Message_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
