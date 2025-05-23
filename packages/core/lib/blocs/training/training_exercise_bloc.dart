

import 'package:core/models/training/exercise.dart';
import 'package:core/models/training/training_exercise.dart';
import 'package:core/repositories/training/exercise_repository.dart';
import 'package:core/repositories/training/training_exercise_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_exercise_bloc.freezed.dart';

@freezed
sealed class TrainingExerciseEvent with _$TrainingExerciseEvent {
  const factory TrainingExerciseEvent.createTrainingExercise(TrainingExercise trainingExercise) = CreateTrainingExercise;
  const factory TrainingExerciseEvent.getTrainingExerciseById(String id) = GetTrainingExerciseById;
  const factory TrainingExerciseEvent.getAllTrainingExercises() = GetAllTrainingExercises;
  const factory TrainingExerciseEvent.updateTrainingExercise(String id, TrainingExercise trainingExercise) = UpdateTrainingExercise;
  const factory TrainingExerciseEvent.deleteTrainingExercise(String id) = DeleteTrainingExercise;
  const factory TrainingExerciseEvent.getAllTrainingExercisesByScheduleId(String scheduleId) = GetAllTrainingExercisesByScheduleId;
}

@freezed
sealed class TrainingExerciseState with _$TrainingExerciseState {
  const factory TrainingExerciseState.initial() = TrainingExercise_Initial;
  const factory TrainingExerciseState.loading() = TrainingExercise_Loading;
  const factory TrainingExerciseState.loadedTrainingExercise(TrainingExercise trainingExercise) = LoadedTrainingExercise;
  const factory TrainingExerciseState.loadedTrainingExercises(List<TrainingExercise> trainingExercises) = LoadedTrainingExercises;
  const factory TrainingExerciseState.loadedTrainingExercisesWithExercises(
    List<TrainingExercise> trainingExercises,
    Map<String, Exercise> exercises,
  ) = LoadedTrainingExercisesWithExercises;
  const factory TrainingExerciseState.error(String message) = TrainingExercise_Error;
  const factory TrainingExerciseState.success(String message) = TrainingExercise_Success;
}

class TrainingExerciseBloc extends Bloc<TrainingExerciseEvent, TrainingExerciseState> {
  final TrainingExerciseRepository trainingExerciseRepository;
  final ExerciseRepository exerciseRepository;

  TrainingExerciseBloc({
    required this.trainingExerciseRepository,
    required this.exerciseRepository,
  }) : super(const TrainingExerciseState.initial()) {
    on<CreateTrainingExercise>(_onCreateTrainingExercise);
    on<GetTrainingExerciseById>(_onGetTrainingExerciseById);
    on<GetAllTrainingExercises>(_onGetAllTrainingExercises);
    on<UpdateTrainingExercise>(_onUpdateTrainingExercise);
    on<DeleteTrainingExercise>(_onDeleteTrainingExercise);
    on<GetAllTrainingExercisesByScheduleId>(_onGetAllTrainingExercisesByScheduleId);
  }

  Future<void> _onCreateTrainingExercise(CreateTrainingExercise event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      final createdTrainingExercise = await trainingExerciseRepository.createTrainingExercise(event.trainingExercise);
      emit(TrainingExerciseState.loadedTrainingExercise(createdTrainingExercise));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetTrainingExerciseById(GetTrainingExerciseById event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercise = await trainingExerciseRepository.getTrainingExerciseById(event.id);
      emit(TrainingExerciseState.loadedTrainingExercise(trainingExercise));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingExercises(GetAllTrainingExercises event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercises = await trainingExerciseRepository.getAllTrainingExercises();
      emit(TrainingExerciseState.loadedTrainingExercises(trainingExercises));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTrainingExercise(UpdateTrainingExercise event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      final updatedTrainingExercise = await trainingExerciseRepository.updateTrainingExercise(event.id, event.trainingExercise);
      emit(TrainingExerciseState.loadedTrainingExercise(updatedTrainingExercise));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTrainingExercise(DeleteTrainingExercise event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      await trainingExerciseRepository.deleteTrainingExercise(event.id);
      emit(const TrainingExerciseState.success('Training exercise deleted successfully'));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingExercisesByScheduleId(GetAllTrainingExercisesByScheduleId event, Emitter<TrainingExerciseState> emit) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercises = await trainingExerciseRepository.getAllTrainingExerciseByScheduleId(event.scheduleId);
      final Map<String, Exercise> exercises = {};
      for (var trainingExercise in trainingExercises) {
        final exercise = await exerciseRepository.getExerciseById(trainingExercise.exerciseId);
        exercises[trainingExercise.exerciseId] = exercise;
      }
      emit(TrainingExerciseState.loadedTrainingExercisesWithExercises(trainingExercises, exercises));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }
}