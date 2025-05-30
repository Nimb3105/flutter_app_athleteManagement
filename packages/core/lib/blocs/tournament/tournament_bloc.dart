import 'package:core/models/tournament/tournament.dart';
import 'package:core/repositories/tournament/tournament_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament_bloc.freezed.dart';

@freezed
sealed class TournamentEvent with _$TournamentEvent {
  const factory TournamentEvent.createTournament(Tournament tournament) = _CreateTournament;
  const factory TournamentEvent.getTournamentById(String id) = _GetTournamentById;
  const factory TournamentEvent.getAllTournaments({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllTournaments;
  const factory TournamentEvent.updateTournament(String id, Tournament tournament) = _UpdateTournament;
  const factory TournamentEvent.deleteTournament(String id) = _DeleteTournament;
}

@freezed
sealed class TournamentState with _$TournamentState {
  const factory TournamentState.initial() = Tournament_Initial;
  const factory TournamentState.loading() = Tournament_Loading;
  const factory TournamentState.loadedTournament(Tournament tournament) = LoadedTournament;
  const factory TournamentState.loadedTournaments(
    List<Tournament> tournaments,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedTournaments;
  const factory TournamentState.error(String message) = Tournament_Error;
  const factory TournamentState.success(String message) = Tournament_Success;
}

class TournamentBloc extends Bloc<TournamentEvent, TournamentState> {
  final TournamentRepository tournamentRepository;

  TournamentBloc({required this.tournamentRepository})
      : super(const TournamentState.initial()) {
    on<_CreateTournament>(_onCreateTournament);
    on<_GetTournamentById>(_onGetTournamentById);
    on<_GetAllTournaments>(_onGetAllTournaments);
    on<_UpdateTournament>(_onUpdateTournament);
    on<_DeleteTournament>(_onDeleteTournament);
  }

  Future<void> _onCreateTournament(
    _CreateTournament event,
    Emitter<TournamentState> emit,
  ) async {
    emit(const TournamentState.loading());
    try {
      final createdTournament = await tournamentRepository.createTournament(event.tournament);
      emit(TournamentState.loadedTournament(createdTournament));
    } catch (e) {
      emit(TournamentState.error(e.toString()));
    }
  }

  Future<void> _onGetTournamentById(
    _GetTournamentById event,
    Emitter<TournamentState> emit,
  ) async {
    emit(const TournamentState.loading());
    try {
      final tournament = await tournamentRepository.getTournamentById(event.id);
      emit(TournamentState.loadedTournament(tournament));
    } catch (e) {
      emit(TournamentState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTournaments(
    _GetAllTournaments event,
    Emitter<TournamentState> emit,
  ) async {
    emit(const TournamentState.loading());
    try {
      final result = await tournamentRepository.getAllTournaments(
        page: event.page,
        limit: event.limit,
      );
      emit(
        TournamentState.loadedTournaments(
          result['tournaments'] as List<Tournament>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(TournamentState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTournament(
    _UpdateTournament event,
    Emitter<TournamentState> emit,
  ) async {
    emit(const TournamentState.loading());
    try {
      final updatedTournament = await tournamentRepository.updateTournament(
        event.id,
        event.tournament,
      );
      emit(TournamentState.loadedTournament(updatedTournament));
    } catch (e) {
      emit(TournamentState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTournament(
    _DeleteTournament event,
    Emitter<TournamentState> emit,
  ) async {
    emit(const TournamentState.loading());
    try {
      await tournamentRepository.deleteTournament(event.id);
      emit(const TournamentState.success('Tournament deleted successfully'));
    } catch (e) {
      emit(TournamentState.error(e.toString()));
    }
  }
}