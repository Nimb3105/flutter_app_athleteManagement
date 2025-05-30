
import 'package:core/models/message_group/group_member.dart';
import 'package:core/repositories/message_group/group_member_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_member_bloc.freezed.dart';

@freezed
sealed class GroupMemberEvent with _$GroupMemberEvent {
  const factory GroupMemberEvent.createGroupMember(GroupMember groupMember) = _CreateGroupMember;
  const factory GroupMemberEvent.getGroupMemberById(String id) = _GetGroupMemberById;
  const factory GroupMemberEvent.getGroupMemberByUserId(String userId) = _GetGroupMemberByUserId;
  const factory GroupMemberEvent.getAllGroupMembers({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllGroupMembers;
  const factory GroupMemberEvent.updateGroupMember(String id, GroupMember groupMember) = _UpdateGroupMember;
  const factory GroupMemberEvent.deleteGroupMember(String id) = _DeleteGroupMember;
}

@freezed
sealed class GroupMemberState with _$GroupMemberState {
  const factory GroupMemberState.initial() = GroupMember_Initial;
  const factory GroupMemberState.loading() = GroupMember_Loading;
  const factory GroupMemberState.loadedGroupMember(GroupMember groupMember) = LoadedGroupMember;
  const factory GroupMemberState.loadedGroupMembers(
    List<GroupMember> groupMembers,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedGroupMembers;
  const factory GroupMemberState.error(String message) = GroupMember_Error;
  const factory GroupMemberState.success(String message) = GroupMember_Success;
}

class GroupMemberBloc extends Bloc<GroupMemberEvent, GroupMemberState> {
  final GroupMemberRepository groupMemberRepository;

  GroupMemberBloc({required this.groupMemberRepository})
      : super(const GroupMemberState.initial()) {
    on<_CreateGroupMember>(_onCreateGroupMember);
    on<_GetGroupMemberById>(_onGetGroupMemberById);
    on<_GetGroupMemberByUserId>(_onGetGroupMemberByUserId);
    on<_GetAllGroupMembers>(_onGetAllGroupMembers);
    on<_UpdateGroupMember>(_onUpdateGroupMember);
    on<_DeleteGroupMember>(_onDeleteGroupMember);
  }

  Future<void> _onCreateGroupMember(
    _CreateGroupMember event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      final createdGroupMember = await groupMemberRepository.createGroupMember(event.groupMember);
      emit(GroupMemberState.loadedGroupMember(createdGroupMember));
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetGroupMemberById(
    _GetGroupMemberById event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      final groupMember = await groupMemberRepository.getGroupMemberById(event.id);
      emit(GroupMemberState.loadedGroupMember(groupMember));
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetGroupMemberByUserId(
    _GetGroupMemberByUserId event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      final groupMember = await groupMemberRepository.getGroupMemberByUserId(event.userId);
      emit(GroupMemberState.loadedGroupMember(groupMember));
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetAllGroupMembers(
    _GetAllGroupMembers event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      final result = await groupMemberRepository.getAllGroupMembers(
        page: event.page,
        limit: event.limit,
      );
      emit(
        GroupMemberState.loadedGroupMembers(
          result['groupMembers'] as List<GroupMember>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }

  Future<void> _onUpdateGroupMember(
    _UpdateGroupMember event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      final updatedGroupMember = await groupMemberRepository.updateGroupMember(
        event.id,
        event.groupMember,
      );
      emit(GroupMemberState.loadedGroupMember(updatedGroupMember));
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }

  Future<void> _onDeleteGroupMember(
    _DeleteGroupMember event,
    Emitter<GroupMemberState> emit,
  ) async {
    emit(const GroupMemberState.loading());
    try {
      await groupMemberRepository.deleteGroupMember(event.id);
      emit(const GroupMemberState.success('Group member deleted successfully'));
    } catch (e) {
      emit(GroupMemberState.error(e.toString()));
    }
  }
}