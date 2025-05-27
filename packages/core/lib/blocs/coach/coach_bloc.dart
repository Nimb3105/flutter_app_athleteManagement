import 'package:core/models/coach/coach.dart';
import 'package:core/repositories/coach/coach_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_bloc.freezed.dart';

@freezed
sealed class CoachEvent with _$CoachEvent {
  const factory CoachEvent.createCoach(Coach coach) = _CreateCoach;
  const factory CoachEvent.getCoachById(String id) = _GetCoachById;
  const factory CoachEvent.getCoachByUserId(String userId) = _GetCoachByUserId;
  const factory CoachEvent.getAllCoaches() = _GetAllCoaches;
  const factory CoachEvent.updateCoach(String id, Coach coach) = _UpdateCoach;
  const factory CoachEvent.deleteCoach(String id) = _DeleteCoach;
}

@freezed
sealed class CoachState with _$CoachState {
  const factory CoachState.initial() = Coach_Initial;
  const factory CoachState.loading() = Coach_Loading;
  const factory CoachState.loadedCoach(Coach coach) = LoadedCoach;
  const factory CoachState.loadedCoaches(List<Coach> coaches) = LoadedCoaches;
  const factory CoachState.error(String message) = Coach_Error;
  const factory CoachState.success(String message) = Coach_Success;
}

class CoachBloc extends Bloc<CoachEvent, CoachState> {
  final CoachRepository coachRepository;

  CoachBloc({required this.coachRepository})
    : super(const CoachState.initial()) {
    on<_CreateCoach>(_onCreateCoach);
    on<_GetCoachById>(_onGetCoachById);
    on<_GetCoachByUserId>(_onGetCoachByUserId);
    on<_GetAllCoaches>(_onGetAllCoaches);
    on<_UpdateCoach>(_onUpdateCoach);
    on<_DeleteCoach>(_onDeleteCoach);
  }

  Future<void> _onCreateCoach(
    _CreateCoach event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      final createdCoach = await coachRepository.createCoach(event.coach);
      emit(CoachState.loadedCoach(createdCoach));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachById(
    _GetCoachById event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      final coach = await coachRepository.getCoachById(event.id);
      emit(CoachState.loadedCoach(coach));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachByUserId(
    _GetCoachByUserId event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      final coach = await coachRepository.getCoachByUserId(event.userId);
      emit(CoachState.loadedCoach(coach));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }

  Future<void> _onGetAllCoaches(
    _GetAllCoaches event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      final coaches = await coachRepository.getAllCoaches();
      emit(CoachState.loadedCoaches(coaches));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }

  Future<void> _onUpdateCoach(
    _UpdateCoach event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      final updatedCoach = await coachRepository.updateCoach(
        event.id,
        event.coach,
      );
      emit(CoachState.loadedCoach(updatedCoach));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }

  Future<void> _onDeleteCoach(
    _DeleteCoach event,
    Emitter<CoachState> emit,
  ) async {
    emit(const CoachState.loading());
    try {
      await coachRepository.deleteCoach(event.id);
      emit(const CoachState.success('Coach deleted successfully'));
    } catch (e) {
      emit(CoachState.error(e.toString()));
    }
  }
}
