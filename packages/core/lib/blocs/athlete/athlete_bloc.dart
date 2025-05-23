
import 'package:core/models/athlete/athlete.dart';
import 'package:core/repositories/athlete/athlete_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_bloc.freezed.dart';

@freezed
sealed class AthleteEvent with _$AthleteEvent {
  const factory AthleteEvent.createAthlete(Athlete athlete) = _CreateAthlete;
  const factory AthleteEvent.getAthleteById(String id) = _GetAthleteById;
  const factory AthleteEvent.getAthleteByUserId(String userId) =
      _GetAthleteByUserId;
  const factory AthleteEvent.getAllAthletes() = _GetAllAthletes;
  const factory AthleteEvent.updateAthlete(String id, Athlete athlete) =
      _UpdateAthlete;
  const factory AthleteEvent.deleteAthlete(String id) = _DeleteAthlete;
}

@freezed
sealed class AthleteState with _$AthleteState {
  const factory AthleteState.initial() = Athlete_Initial;
  const factory AthleteState.loading() = Athlete_Loading;
  const factory AthleteState.loadedAthlete(Athlete athlete) = LoadedAthlete;
  const factory AthleteState.loadedAthletes(List<Athlete> athletes) =
      LoadedAthletes;
  const factory AthleteState.error(String message) = Athlete_Error;
  const factory AthleteState.success(String message) = Athlete_Success;
}

class AthleteBloc extends Bloc<AthleteEvent, AthleteState> {
  final AthleteRepository athleteRepository;

  AthleteBloc({required this.athleteRepository})
      : super(const AthleteState.initial()) {
    on<_CreateAthlete>(_onCreateAthlete);
    on<_GetAthleteById>(_onGetAthleteById);
    on<_GetAthleteByUserId>(_onGetAthleteByUserId);
    on<_GetAllAthletes>(_onGetAllAthletes);
    on<_UpdateAthlete>(_onUpdateAthlete);
    on<_DeleteAthlete>(_onDeleteAthlete);
  }

  Future<void> _onCreateAthlete(
      _CreateAthlete event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      final createdAthlete =
          await athleteRepository.createAthlete(event.athlete);
      emit(AthleteState.loadedAthlete(createdAthlete));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAthleteById(
      _GetAthleteById event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      final athlete = await athleteRepository.getAthleteById(event.id);
      emit(AthleteState.loadedAthlete(athlete));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAthleteByUserId(
      _GetAthleteByUserId event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      final athlete = await athleteRepository.getAthleteByUserId(event.userId);
      emit(AthleteState.loadedAthlete(athlete));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllAthletes(
      _GetAllAthletes event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      final athletes = await athleteRepository.getAllAthletes();
      emit(AthleteState.loadedAthletes(athletes));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }

  Future<void> _onUpdateAthlete(
      _UpdateAthlete event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      final updatedAthlete =
          await athleteRepository.updateAthlete(event.id, event.athlete);
      emit(AthleteState.loadedAthlete(updatedAthlete));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }

  Future<void> _onDeleteAthlete(
      _DeleteAthlete event, Emitter<AthleteState> emit) async {
    emit(const AthleteState.loading());
    try {
      await athleteRepository.deleteAthlete(event.id);
      emit(const AthleteState.success('Athlete deleted successfully'));
    } catch (e) {
      emit(AthleteState.error(e.toString()));
    }
  }
}
