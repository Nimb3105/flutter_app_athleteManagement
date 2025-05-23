

import 'package:core/models/athlete/sport.dart';
import 'package:core/models/athlete/sport_athlete.dart';
import 'package:core/repositories/athlete/sport_athlete_repository.dart';
import 'package:core/repositories/athlete/sport_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_athlete_bloc.freezed.dart';

@freezed
sealed class SportAthleteEvent with _$SportAthleteEvent {
  const factory SportAthleteEvent.createSportAthlete(
      SportAthlete sportAthlete) = _CreateSportAthlete;
  const factory SportAthleteEvent.getSportAthleteById(String id) =
      _GetSportAthleteById;
  const factory SportAthleteEvent.getSportAthleteByUserId(String userId) =
      _GetSportAthleteByUserId;
  const factory SportAthleteEvent.getAllSportAthleteByUserId(String userId) =
      _GetAllSportAthleteByUserId;
  const factory SportAthleteEvent.getSportAthleteBySportId(String sportId) =
      _GetSportAthleteBySportId;
  const factory SportAthleteEvent.getAllSportAthletes() = _GetAllSportAthletes;
  const factory SportAthleteEvent.updateSportAthlete(
      String id, SportAthlete sportAthlete) = _UpdateSportAthlete;
  const factory SportAthleteEvent.deleteSportAthlete(String id) =
      _DeleteSportAthlete;
}

@freezed
sealed class SportAthleteState with _$SportAthleteState {
  const factory SportAthleteState.initial() = Sport_Athlete_Initial;
  const factory SportAthleteState.loading() = Sport_Athlete_Loading;
  const factory SportAthleteState.loadedSportAthlete(
      SportAthlete sportAthlete) = LoadedSportAthlete;
  const factory SportAthleteState.loadedSportAthletes(
    List<SportAthlete> sportAthletes,
    Map<String, Sport> sports, // Thêm Map<int, Sport> vào trạng thái
  ) = LoadedSportAthletes;
  const factory SportAthleteState.error(String message) = Sport_Athlete_Error;
  const factory SportAthleteState.success(String message) =
      Sport_Athlete_Success;
}

class SportAthleteBloc extends Bloc<SportAthleteEvent, SportAthleteState> {
  final SportAthleteRepository sportAthleteRepository;
  final SportRepository sportRepository;

  SportAthleteBloc({
    required this.sportAthleteRepository,
    required this.sportRepository,
  }) : super(const SportAthleteState.initial()) {
    on<_CreateSportAthlete>(_onCreateSportAthlete);
    on<_GetSportAthleteById>(_onGetSportAthleteById);
    on<_GetAllSportAthleteByUserId>(_onGetAllSportAthleteByUserId);
    on<_GetSportAthleteByUserId>(_onGetSportAthleteByUserId);
    // on<_GetSportAthleteBySportId>(_onGetSportAthleteBySportId);
    // on<_GetAllSportAthletes>(_onGetAllSportAthletes);
    on<_UpdateSportAthlete>(_onUpdateSportAthlete);
    on<_DeleteSportAthlete>(_onDeleteSportAthlete);
  }

  Future<void> _onCreateSportAthlete(
      _CreateSportAthlete event, Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      final createdSportAthlete =
          await sportAthleteRepository.createSportAthlete(event.sportAthlete);
      emit(const Sport_Athlete_Success('gán môn thể thao kèm vị trí'));
      emit(SportAthleteState.loadedSportAthlete(createdSportAthlete));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetSportAthleteById(
      _GetSportAthleteById event, Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      final sportAthlete =
          await sportAthleteRepository.getSportAthleteById(event.id);
      emit(SportAthleteState.loadedSportAthlete(sportAthlete));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetSportAthleteByUserId(
      _GetSportAthleteByUserId event, Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      final sportAthlete =
          await sportAthleteRepository.getSportAthleteByUserId(event.userId);
      emit(SportAthleteState.loadedSportAthlete(sportAthlete));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllSportAthleteByUserId(_GetAllSportAthleteByUserId event,
      Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      final sportAthletes = await sportAthleteRepository
          .getAllSportAthletesByUserId(event.userId);
      final Map<String, Sport> sports = {};
      for (var sportAthlete in sportAthletes) {
        final sport = await sportRepository.getSportById(sportAthlete.sportId);
        sports[sportAthlete.sportId] = sport;
      }
      emit(SportAthleteState.loadedSportAthletes(sportAthletes, sports));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }

  // Future<void> _onGetSportAthleteBySportId(
  //     _GetSportAthleteBySportId event, Emitter<SportAthleteState> emit) async {
  //   emit(const SportAthleteState.loading());
  //   try {
  //     final sportAthletes =
  //         await sportAthleteRepository.getSportAthleteBySportId(event.sportId);
  //     emit(SportAthleteState.loadedSportAthletes(sportAthletes));
  //   } catch (e) {
  //     emit(SportAthleteState.error(e.toString()));
  //   }
  // }

  // Future<void> _onGetAllSportAthletes(
  //     _GetAllSportAthletes event, Emitter<SportAthleteState> emit) async {
  //   emit(const SportAthleteState.loading());
  //   try {
  //     final sportAthletes = await sportAthleteRepository.getAllSportAthletes();
  //     emit(SportAthleteState.loadedSportAthletes(sportAthletes));
  //   } catch (e) {
  //     emit(SportAthleteState.error(e.toString()));
  //   }
  // }

  Future<void> _onUpdateSportAthlete(
      _UpdateSportAthlete event, Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      final updatedSportAthlete = await sportAthleteRepository
          .updateSportAthlete(event.id, event.sportAthlete);
      emit(SportAthleteState.loadedSportAthlete(updatedSportAthlete));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }

  Future<void> _onDeleteSportAthlete(
      _DeleteSportAthlete event, Emitter<SportAthleteState> emit) async {
    emit(const SportAthleteState.loading());
    try {
      await sportAthleteRepository.deleteSportAthlete(event.id);
      emit(const SportAthleteState.success(
          'Sport athlete deleted successfully'));
    } catch (e) {
      emit(SportAthleteState.error(e.toString()));
    }
  }
}
