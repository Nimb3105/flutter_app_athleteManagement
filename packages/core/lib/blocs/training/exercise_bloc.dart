import 'package:core/models/training/exercise.dart';
import 'package:core/repositories/training/exercise_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_bloc.freezed.dart';

@freezed
sealed class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.createExercise(Exercise exercise) =
      CreateExercise;
  const factory ExerciseEvent.getExerciseById(String id) = GetExerciseById;
  const factory ExerciseEvent.getAllExercises() = GetAllExercises;
  const factory ExerciseEvent.updateExercise(String id, Exercise exercise) =
      UpdateExercise;
  const factory ExerciseEvent.deleteExercise(String id) = DeleteExercise;
}

@freezed
sealed class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = Exercise_Initial;
  const factory ExerciseState.loading() = Exercise_Loading;
  const factory ExerciseState.loadedExercise(Exercise exercise) =
      LoadedExercise;
  const factory ExerciseState.loadedExercises(List<Exercise> exercises) =
      LoadedExercises;
  const factory ExerciseState.error(String message) = Exercise_Error;
  const factory ExerciseState.success(String message) = Exercise_Success;
}

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ExerciseRepository exerciseRepository;

  ExerciseBloc({required this.exerciseRepository})
    : super(const ExerciseState.initial()) {
    on<CreateExercise>(_onCreateExercise);
    on<GetExerciseById>(_onGetExerciseById);
    on<GetAllExercises>(_onGetAllExercises);
    on<UpdateExercise>(_onUpdateExercise);
    on<DeleteExercise>(_onDeleteExercise);
  }

  Future<void> _onCreateExercise(
    CreateExercise event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseState.loading());
    try {
      final createdExercise = await exerciseRepository.createExercise(
        event.exercise,
      );
      emit(ExerciseState.loadedExercise(createdExercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetExerciseById(
    GetExerciseById event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseState.loading());
    try {
      final exercise = await exerciseRepository.getExerciseById(event.id);
      emit(ExerciseState.loadedExercise(exercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllExercises(
    GetAllExercises event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseState.loading());
    try {
      final exercises = await exerciseRepository.getAllExercises();
      emit(ExerciseState.loadedExercises(exercises));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onUpdateExercise(
    UpdateExercise event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseState.loading());
    try {
      final updatedExercise = await exerciseRepository.updateExercise(
        event.id,
        event.exercise,
      );
      emit(ExerciseState.loadedExercise(updatedExercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onDeleteExercise(
    DeleteExercise event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseState.loading());
    try {
      await exerciseRepository.deleteExercise(event.id);
      emit(const ExerciseState.success('Exercise deleted successfully'));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }
}
