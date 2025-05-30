
import 'package:core/models/message_group/group.dart';
import 'package:core/repositories/message_group/group_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_bloc.freezed.dart';

@freezed
sealed class GroupEvent with _$GroupEvent {
  const factory GroupEvent.createGroup(Group group) = _CreateGroup;
  const factory GroupEvent.getGroupById(String id) = _GetGroupById;
  const factory GroupEvent.getGroupByCreatedBy(String createdBy) = _GetGroupByCreatedBy;
  const factory GroupEvent.getAllGroups({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllGroups;
  const factory GroupEvent.updateGroup(String id, Group group) = _UpdateGroup;
  const factory GroupEvent.deleteGroup(String id) = _DeleteGroup;
}

@freezed
sealed class GroupState with _$GroupState {
  const factory GroupState.initial() = Group_Initial;
  const factory GroupState.loading() = Group_Loading;
  const factory GroupState.loadedGroup(Group group) = LoadedGroup;
  const factory GroupState.loadedGroups(
    List<Group> groups,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedGroups;
  const factory GroupState.error(String message) = Group_Error;
  const factory GroupState.success(String message) = Group_Success;
}

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  final GroupRepository groupRepository;

  GroupBloc({required this.groupRepository})
      : super(const GroupState.initial()) {
    on<_CreateGroup>(_onCreateGroup);
    on<_GetGroupById>(_onGetGroupById);
    on<_GetGroupByCreatedBy>(_onGetGroupByCreatedBy);
    on<_GetAllGroups>(_onGetAllGroups);
    on<_UpdateGroup>(_onUpdateGroup);
    on<_DeleteGroup>(_onDeleteGroup);
  }

  Future<void> _onCreateGroup(
    _CreateGroup event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      final createdGroup = await groupRepository.createGroup(event.group);
      emit(GroupState.loadedGroup(createdGroup));
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }

  Future<void> _onGetGroupById(
    _GetGroupById event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      final group = await groupRepository.getGroupById(event.id);
      emit(GroupState.loadedGroup(group));
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }

  Future<void> _onGetGroupByCreatedBy(
    _GetGroupByCreatedBy event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      final group = await groupRepository.getGroupByCreatedBy(event.createdBy);
      emit(GroupState.loadedGroup(group));
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }

  Future<void> _onGetAllGroups(
    _GetAllGroups event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      final result = await groupRepository.getAllGroups(
        page: event.page,
        limit: event.limit,
      );
      emit(
        GroupState.loadedGroups(
          result['groups'] as List<Group>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }

  Future<void> _onUpdateGroup(
    _UpdateGroup event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      final updatedGroup = await groupRepository.updateGroup(
        event.id,
        event.group,
      );
      emit(GroupState.loadedGroup(updatedGroup));
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }

  Future<void> _onDeleteGroup(
    _DeleteGroup event,
    Emitter<GroupState> emit,
  ) async {
    emit(const GroupState.loading());
    try {
      await groupRepository.deleteGroup(event.id);
      emit(const GroupState.success('Group deleted successfully'));
    } catch (e) {
      emit(GroupState.error(e.toString()));
    }
  }
}