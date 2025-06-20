// team_member_bloc.dart
import 'package:core/models/sport/sport.dart';
import 'package:core/models/team/team_member.dart';
import 'package:core/models/team/team.dart';
import 'package:core/repositories/sport/sport_repository.dart';
import 'package:core/repositories/team/team_member_repository.dart';
import 'package:core/repositories/team/team_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_member_bloc.freezed.dart';

@freezed
sealed class TeamMemberEvent with _$TeamMemberEvent {
  const factory TeamMemberEvent.createTeamMember(TeamMember teamMember) =
      _CreateTeamMember;
  const factory TeamMemberEvent.getTeamMemberById(String id) =
      _GetTeamMemberById;
  const factory TeamMemberEvent.getTeamMembersByTeamId(String teamId) =
      _GetTeamMembersByTeamId;
  const factory TeamMemberEvent.getTeamMembersByUserId(String userId) =
      _GetTeamMembersByUserId;
  const factory TeamMemberEvent.getAllTeamMembers({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllTeamMembers;
  const factory TeamMemberEvent.updateTeamMember(
    String id,
    TeamMember teamMember,
  ) = _UpdateTeamMember;
  const factory TeamMemberEvent.deleteTeamMember(String id) = _DeleteTeamMember;
}

@freezed
sealed class TeamMemberState with _$TeamMemberState {
  const factory TeamMemberState.initial() = TeamMember_Initial;
  const factory TeamMemberState.loading() = TeamMember_Loading;
  const factory TeamMemberState.loadedTeamMember(TeamMember teamMember) =
      LoadedTeamMember;
  const factory TeamMemberState.loadedTeamMembers(
    List<TeamMember> teamMembers,
    int currentPage,
    int limit,
    bool hasMore, {
    Map<String, Team>? teams,
    Map<String, Sport>? sports,
  }) = LoadedTeamMembers;
  const factory TeamMemberState.error(String message) = TeamMember_Error;
  const factory TeamMemberState.success(String message) = TeamMember_Success;
}

class TeamMemberBloc extends Bloc<TeamMemberEvent, TeamMemberState> {
  final TeamMemberRepository teamMemberRepository;
  final TeamRepository teamRepository;
  final SportRepository sportRepository;

  TeamMemberBloc({
    required this.teamMemberRepository,
    required this.teamRepository,
    required this.sportRepository,
  }) : super(const TeamMemberState.initial()) {
    on<_CreateTeamMember>(_onCreateTeamMember);
    on<_GetTeamMemberById>(_onGetTeamMemberById);
    on<_GetTeamMembersByTeamId>(_onGetTeamMembersByTeamId);
    on<_GetTeamMembersByUserId>(_onGetTeamMembersByUserId);
    on<_GetAllTeamMembers>(_onGetAllTeamMembers);
    on<_UpdateTeamMember>(_onUpdateTeamMember);
    on<_DeleteTeamMember>(_onDeleteTeamMember);
  }

  Future<void> _onCreateTeamMember(
    _CreateTeamMember event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final createdTeamMember = await teamMemberRepository.createTeamMember(
        event.teamMember,
      );
      emit(TeamMemberState.loadedTeamMember(createdTeamMember));
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetTeamMemberById(
    _GetTeamMemberById event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final teamMember = await teamMemberRepository.getTeamMemberById(event.id);
      emit(TeamMemberState.loadedTeamMember(teamMember));
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetTeamMembersByTeamId(
    _GetTeamMembersByTeamId event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final teamMembers = await teamMemberRepository.getTeamMembersByTeamId(
        event.teamId,
      );
      emit(
        TeamMemberState.loadedTeamMembers(
          teamMembers,
          1,
          teamMembers.length,
          false,
        ),
      );
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetTeamMembersByUserId(
    _GetTeamMembersByUserId event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final teamMembers = await teamMemberRepository.getTeamMembersByUserId(
        event.userId,
      );
      final teams = <String, Team>{};
      final sports = <String, Sport>{};
      for (var teamMember in teamMembers) {
        final team = await teamRepository.getTeamById(teamMember.teamId);
        teams[teamMember.teamId] = team;
        final sport = await sportRepository.getSportById(team.sportId);
        sports[team.sportId] = sport!;
      }
      emit(
        TeamMemberState.loadedTeamMembers(
          teamMembers,
          1,
          teamMembers.length,
          false,
          teams: teams,
          sports: sports,
        ),
      );
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTeamMembers(
    _GetAllTeamMembers event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final result = await teamMemberRepository.getAllTeamMembers(
        page: event.page,
        limit: event.limit,
      );
      final teamMembers = result['teamMembers'] as List<TeamMember>;
      final teams = <String, Team>{};
      final sports = <String, Sport>{};
      for (var teamMember in teamMembers) {
        final team = await teamRepository.getTeamById(teamMember.teamId);
        teams[teamMember.teamId] = team;
        final sport = await sportRepository.getSportById(team.sportId);
        sports[team.sportId] = sport!;
      }
      emit(
        TeamMemberState.loadedTeamMembers(
          teamMembers,
          event.page,
          event.limit,
          result['hasMore'] as bool,
          teams: teams,
          sports: sports,
        ),
      );
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTeamMember(
    _UpdateTeamMember event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      final updatedTeamMember = await teamMemberRepository.updateTeamMember(
        event.id,
        event.teamMember,
      );
      emit(TeamMemberState.loadedTeamMember(updatedTeamMember));
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTeamMember(
    _DeleteTeamMember event,
    Emitter<TeamMemberState> emit,
  ) async {
    emit(const TeamMemberState.loading());
    try {
      await teamMemberRepository.deleteTeamMember(event.id);
      emit(const TeamMemberState.success('Team member deleted successfully'));
    } catch (e) {
      emit(TeamMemberState.error(e.toString()));
    }
  }
}
