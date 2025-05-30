
import 'package:core/models/message_group/message.dart';
import 'package:core/repositories/message_group/message_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_bloc.freezed.dart';

@freezed
sealed class MessageEvent with _$MessageEvent {
  const factory MessageEvent.createMessage(Message message) = _CreateMessage;
  const factory MessageEvent.getMessageById(String id) = _GetMessageById;
  const factory MessageEvent.getMessagesByGroupId(String groupId) = _GetMessagesByGroupId;
  const factory MessageEvent.getAllMessages({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllMessages;
  const factory MessageEvent.updateMessage(String id, Message message) = _UpdateMessage;
  const factory MessageEvent.deleteMessage(String id) = _DeleteMessage;
}

@freezed
sealed class MessageState with _$MessageState {
  const factory MessageState.initial() = Message_Initial;
  const factory MessageState.loading() = Message_Loading;
  const factory MessageState.loadedMessage(Message message) = LoadedMessage;
  const factory MessageState.loadedMessages(
    List<Message> messages,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedMessages;
  const factory MessageState.error(String message) = Message_Error;
  const factory MessageState.success(String message) = Message_Success;
}

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final MessageRepository messageRepository;

  MessageBloc({required this.messageRepository})
      : super(const MessageState.initial()) {
    on<_CreateMessage>(_onCreateMessage);
    on<_GetMessageById>(_onGetMessageById);
    on<_GetMessagesByGroupId>(_onGetMessagesByGroupId);
    on<_GetAllMessages>(_onGetAllMessages);
    on<_UpdateMessage>(_onUpdateMessage);
    on<_DeleteMessage>(_onDeleteMessage);
  }

  Future<void> _onCreateMessage(
    _CreateMessage event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final createdMessage = await messageRepository.createMessage(event.message);
      emit(MessageState.loadedMessage(createdMessage));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  Future<void> _onGetMessageById(
    _GetMessageById event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final message = await messageRepository.getMessageById(event.id);
      emit(MessageState.loadedMessage(message));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  Future<void> _onGetMessagesByGroupId(
    _GetMessagesByGroupId event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final messages = await messageRepository.getMessagesByGroupId(event.groupId);
      emit(MessageState.loadedMessages(messages, 1, messages.length, false));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  Future<void> _onGetAllMessages(
    _GetAllMessages event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final result = await messageRepository.getAllMessages(
        page: event.page,
        limit: event.limit,
      );
      emit(
        MessageState.loadedMessages(
          result['messages'] as List<Message>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  Future<void> _onUpdateMessage(
    _UpdateMessage event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final updatedMessage = await messageRepository.updateMessage(
        event.id,
        event.message,
      );
      emit(MessageState.loadedMessage(updatedMessage));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  Future<void> _onDeleteMessage(
    _DeleteMessage event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      await messageRepository.deleteMessage(event.id);
      emit(const MessageState.success('Message deleted successfully'));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }
}