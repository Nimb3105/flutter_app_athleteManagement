import 'package:core/models/match_schedule/match_schedule.dart';
import 'package:core/models/match_schedule/user_match.dart';
import 'package:core/models/tournament/tournament.dart';
import 'package:core/repositories/match_schedule/match_schedule_repository.dart';
import 'package:core/repositories/match_schedule/user_match_repository.dart';
import 'package:core/repositories/tournament/tournament_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_match_bloc.freezed.dart';

@freezed
sealed class UserMatchEvent with _$UserMatchEvent {
  const factory UserMatchEvent.createUserMatch(UserMatch userMatch) =
      _CreateUserMatch;
  const factory UserMatchEvent.getUserMatchById(String id) = _GetUserMatchById;
  const factory UserMatchEvent.getUserMatchByUserId(String userId) =
      _GetUserMatchByUserId;
  const factory UserMatchEvent.getAllUserMatches({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllUserMatches;
  const factory UserMatchEvent.updateUserMatch(String id, UserMatch userMatch) =
      _UpdateUserMatch;
  const factory UserMatchEvent.deleteUserMatch(String id) = _DeleteUserMatch;
}

@freezed
sealed class UserMatchState with _$UserMatchState {
  const factory UserMatchState.initial() = UserMatch_Initial;
  const factory UserMatchState.loading() = UserMatch_Loading;
  const factory UserMatchState.loadedUserMatch(UserMatch userMatch) =
      LoadedUserMatch;
  const factory UserMatchState.loadedUserMatches(
    List<UserMatch> userMatches,
    int currentPage,
    int limit,
    bool hasMore, {
    Map<String, MatchSchedule>? matchSchedules,
    Map<String, Tournament>? tournaments,
  }) = LoadedUserMatches;
  const factory UserMatchState.error(String message) = UserMatch_Error;
  const factory UserMatchState.success(String message) = UserMatch_Success;
}

class UserMatchBloc extends Bloc<UserMatchEvent, UserMatchState> {
  final UserMatchRepository userMatchRepository;
  final MatchScheduleRepository matchScheduleRepository; // Thêm repository
  final TournamentRepository tournamentRepository;

  UserMatchBloc({
    required this.userMatchRepository,
    required this.matchScheduleRepository,
    required this.tournamentRepository,
  }) : super(const UserMatchState.initial()) {
    on<_CreateUserMatch>(_onCreateUserMatch);
    on<_GetUserMatchById>(_onGetUserMatchById);
    on<_GetUserMatchByUserId>(_onGetUserMatchByUserId);
    on<_GetAllUserMatches>(_onGetAllUserMatches);
    on<_UpdateUserMatch>(_onUpdateUserMatch);
    on<_DeleteUserMatch>(_onDeleteUserMatch);
  }

  Future<void> _onCreateUserMatch(
    _CreateUserMatch event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      final createdUserMatch = await userMatchRepository.createUserMatch(
        event.userMatch,
      );
      emit(UserMatchState.loadedUserMatch(createdUserMatch));
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }

  Future<void> _onGetUserMatchById(
    _GetUserMatchById event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      final userMatch = await userMatchRepository.getUserMatchById(event.id);
      emit(UserMatchState.loadedUserMatch(userMatch));
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }

  Future<void> _onGetUserMatchByUserId(
    _GetUserMatchByUserId event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      final result = await userMatchRepository.getUserMatchByUserId(
        event.userId,
      );
      final userMatches = result['userMatches'] as List<UserMatch>? ?? [];
      final matchSchedules = <String, MatchSchedule>{};
      final tournaments = <String, Tournament>{};

      for (var userMatch in userMatches) {
        final matchSchedule = await matchScheduleRepository
            .getMatchScheduleById(userMatch.matchId);
        matchSchedules[userMatch.matchId] = matchSchedule;
        final tournament = await tournamentRepository.getTournamentById(
          matchSchedule.tournamentId,
        );
        tournaments[matchSchedule.tournamentId] = tournament;
      }

      emit(
        UserMatchState.loadedUserMatches(
          userMatches,
          1,
          userMatches.length,
          false,
          matchSchedules: matchSchedules,
          tournaments: tournaments,
        ),
      );
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }

  Future<void> _onGetAllUserMatches(
    _GetAllUserMatches event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      final result = await userMatchRepository.getAllUserMatches(
        page: event.page,
        limit: event.limit,
      );
      final userMatches = result['userMatches'] as List<UserMatch>;
      final matchSchedules = <String, MatchSchedule>{};
      final tournaments = <String, Tournament>{};

      for (var userMatch in userMatches) {
        final matchSchedule = await matchScheduleRepository
            .getMatchScheduleById(userMatch.matchId);
        matchSchedules[userMatch.matchId] = matchSchedule;
        final tournament = await tournamentRepository.getTournamentById(
          matchSchedule.tournamentId,
        );
        tournaments[matchSchedule.tournamentId] = tournament;
      }

      emit(
        UserMatchState.loadedUserMatches(
          userMatches,
          event.page,
          event.limit,
          result['hasMore'] as bool,
          matchSchedules: matchSchedules,
          tournaments: tournaments,
        ),
      );
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }

  Future<void> _onUpdateUserMatch(
    _UpdateUserMatch event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      final updatedUserMatch = await userMatchRepository.updateUserMatch(
        event.id,
        event.userMatch,
      );
      emit(UserMatchState.loadedUserMatch(updatedUserMatch));
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }

  Future<void> _onDeleteUserMatch(
    _DeleteUserMatch event,
    Emitter<UserMatchState> emit,
  ) async {
    emit(const UserMatchState.loading());
    try {
      await userMatchRepository.deleteUserMatch(event.id);
      emit(const UserMatchState.success('User match deleted successfully'));
    } catch (e) {
      emit(UserMatchState.error(e.toString()));
    }
  }
}
