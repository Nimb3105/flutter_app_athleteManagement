import 'package:core/models/team/team.dart';
import 'package:core/repositories/team/team_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_bloc.freezed.dart';

@freezed
sealed class TeamEvent with _$TeamEvent {
  const factory TeamEvent.createTeam(Team team) = _CreateTeam;
  const factory TeamEvent.getTeamById(String id) = _GetTeamById;
  const factory TeamEvent.getTeamsBySportId(String sportId) = _GetTeamsBySportId;
  const factory TeamEvent.getAllTeams({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllTeams;
  const factory TeamEvent.updateTeam(String id, Team team) = _UpdateTeam;
  const factory TeamEvent.deleteTeam(String id) = _DeleteTeam;
}

@freezed
sealed class TeamState with _$TeamState {
  const factory TeamState.initial() = Team_Initial;
  const factory TeamState.loading() = Team_Loading;
  const factory TeamState.loadedTeam(Team team) = LoadedTeam;
  const factory TeamState.loadedTeams(
    List<Team> teams,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedTeams;
  const factory TeamState.error(String message) = Team_Error;
  const factory TeamState.success(String message) = Team_Success;
}

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final TeamRepository teamRepository;

  TeamBloc({required this.teamRepository})
      : super(const TeamState.initial()) {
    on<_CreateTeam>(_onCreateTeam);
    on<_GetTeamById>(_onGetTeamById);
    on<_GetTeamsBySportId>(_onGetTeamsBySportId);
    on<_GetAllTeams>(_onGetAllTeams);
    on<_UpdateTeam>(_onUpdateTeam);
    on<_DeleteTeam>(_onDeleteTeam);
  }

  Future<void> _onCreateTeam(
    _CreateTeam event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      final createdTeam = await teamRepository.createTeam(event.team);
      emit(TeamState.loadedTeam(createdTeam));
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }

  Future<void> _onGetTeamById(
    _GetTeamById event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      final team = await teamRepository.getTeamById(event.id);
      emit(TeamState.loadedTeam(team));
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }

  Future<void> _onGetTeamsBySportId(
    _GetTeamsBySportId event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      final teams = await teamRepository.getTeamsBySportId(event.sportId);
      emit(TeamState.loadedTeams(teams, 1, teams.length, false));
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTeams(
    _GetAllTeams event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      final result = await teamRepository.getAllTeams(
        page: event.page,
        limit: event.limit,
      );
      emit(
        TeamState.loadedTeams(
          result['teams'] as List<Team>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTeam(
    _UpdateTeam event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      final updatedTeam = await teamRepository.updateTeam(
        event.id,
        event.team,
      );
      emit(TeamState.loadedTeam(updatedTeam));
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTeam(
    _DeleteTeam event,
    Emitter<TeamState> emit,
  ) async {
    emit(const TeamState.loading());
    try {
      await teamRepository.deleteTeam(event.id);
      emit(const TeamState.success('Team deleted successfully'));
    } catch (e) {
      emit(TeamState.error(e.toString()));
    }
  }
}