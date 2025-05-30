import 'package:core/models/match_schedule/match_schedule.dart';
import 'package:core/repositories/match_schedule/match_schedule_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_schedule_bloc.freezed.dart';

@freezed
sealed class MatchScheduleEvent with _$MatchScheduleEvent {
  const factory MatchScheduleEvent.createMatchSchedule(MatchSchedule matchSchedule) = _CreateMatchSchedule;
  const factory MatchScheduleEvent.getMatchScheduleById(String id) = _GetMatchScheduleById;
  const factory MatchScheduleEvent.getMatchScheduleByTournamentId(String tournamentId) = _GetMatchScheduleByTournamentId;
  const factory MatchScheduleEvent.getAllMatchSchedules({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllMatchSchedules;
  const factory MatchScheduleEvent.updateMatchSchedule(String id, MatchSchedule matchSchedule) = _UpdateMatchSchedule;
  const factory MatchScheduleEvent.deleteMatchSchedule(String id) = _DeleteMatchSchedule;
}

@freezed
sealed class MatchScheduleState with _$MatchScheduleState {
  const factory MatchScheduleState.initial() = MatchSchedule_Initial;
  const factory MatchScheduleState.loading() = MatchSchedule_Loading;
  const factory MatchScheduleState.loadedMatchSchedule(MatchSchedule matchSchedule) = LoadedMatchSchedule;
  const factory MatchScheduleState.loadedMatchSchedules(
    List<MatchSchedule> matchSchedules,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedMatchSchedules;
  const factory MatchScheduleState.error(String message) = MatchSchedule_Error;
  const factory MatchScheduleState.success(String message) = MatchSchedule_Success;
}

class MatchScheduleBloc extends Bloc<MatchScheduleEvent, MatchScheduleState> {
  final MatchScheduleRepository matchScheduleRepository;

  MatchScheduleBloc({required this.matchScheduleRepository})
      : super(const MatchScheduleState.initial()) {
    on<_CreateMatchSchedule>(_onCreateMatchSchedule);
    on<_GetMatchScheduleById>(_onGetMatchScheduleById);
    on<_GetMatchScheduleByTournamentId>(_onGetMatchScheduleByTournamentId);
    on<_GetAllMatchSchedules>(_onGetAllMatchSchedules);
    on<_UpdateMatchSchedule>(_onUpdateMatchSchedule);
    on<_DeleteMatchSchedule>(_onDeleteMatchSchedule);
  }

  Future<void> _onCreateMatchSchedule(
    _CreateMatchSchedule event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      final createdMatchSchedule = await matchScheduleRepository.createMatchSchedule(event.matchSchedule);
      emit(MatchScheduleState.loadedMatchSchedule(createdMatchSchedule));
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetMatchScheduleById(
    _GetMatchScheduleById event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      final matchSchedule = await matchScheduleRepository.getMatchScheduleById(event.id);
      emit(MatchScheduleState.loadedMatchSchedule(matchSchedule));
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetMatchScheduleByTournamentId(
    _GetMatchScheduleByTournamentId event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      final matchSchedule = await matchScheduleRepository.getMatchScheduleByTournamentId(event.tournamentId);
      emit(MatchScheduleState.loadedMatchSchedule(matchSchedule));
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetAllMatchSchedules(
    _GetAllMatchSchedules event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      final result = await matchScheduleRepository.getAllMatchSchedules(
        page: event.page,
        limit: event.limit,
      );
      emit(
        MatchScheduleState.loadedMatchSchedules(
          result['matchSchedules'] as List<MatchSchedule>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }

  Future<void> _onUpdateMatchSchedule(
    _UpdateMatchSchedule event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      final updatedMatchSchedule = await matchScheduleRepository.updateMatchSchedule(
        event.id,
        event.matchSchedule,
      );
      emit(MatchScheduleState.loadedMatchSchedule(updatedMatchSchedule));
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }

  Future<void> _onDeleteMatchSchedule(
    _DeleteMatchSchedule event,
    Emitter<MatchScheduleState> emit,
  ) async {
    emit(const MatchScheduleState.loading());
    try {
      await matchScheduleRepository.deleteMatchSchedule(event.id);
      emit(const MatchScheduleState.success('Match schedule deleted successfully'));
    } catch (e) {
      emit(MatchScheduleState.error(e.toString()));
    }
  }
}