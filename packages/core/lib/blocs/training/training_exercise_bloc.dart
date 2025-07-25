import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_exercise_bloc.freezed.dart';

@freezed
sealed class TrainingExerciseEvent with _$TrainingExerciseEvent {
  const factory TrainingExerciseEvent.createTrainingExercise(
    TrainingExercise trainingExercise,
  ) = CreateTrainingExercise;
  const factory TrainingExerciseEvent.getTrainingExerciseById(String id) =
      GetTrainingExerciseById;
  const factory TrainingExerciseEvent.getAllTrainingExercises() =
      GetAllTrainingExercises;
  const factory TrainingExerciseEvent.updateTrainingExercise(
    TrainingExercise trainingExercise,
  ) = UpdateTrainingExercise;
  const factory TrainingExerciseEvent.deleteTrainingExercise(String id) =
      DeleteTrainingExercise;
  const factory TrainingExerciseEvent.getAllTrainingExercisesByScheduleId(
    String scheduleId,
  ) = GetAllTrainingExercisesByScheduleId;
}

@freezed
sealed class TrainingExerciseState with _$TrainingExerciseState {
  const factory TrainingExerciseState.initial() = TrainingExercise_Initial;
  const factory TrainingExerciseState.loading() = TrainingExercise_Loading;
  const factory TrainingExerciseState.loadedTrainingExercise(
    TrainingExercise trainingExercise,
  ) = LoadedTrainingExercise;
  const factory TrainingExerciseState.loadedTrainingExercises(
    List<TrainingExercise> trainingExercises,
  ) = LoadedTrainingExercises;
  const factory TrainingExerciseState.loadedTrainingExercisesWithExercises(
    List<TrainingExercise> trainingExercises, {
    Map<String, TrainingSchedule>? traininngSchedules,
    Map<String, Exercise>? exercises,
  }) = LoadedTrainingExercisesWithExercises;
  const factory TrainingExerciseState.error(String message) =
      TrainingExercise_Error;
  const factory TrainingExerciseState.success(String message) =
      TrainingExercise_Success;
}

class TrainingExerciseBloc
    extends Bloc<TrainingExerciseEvent, TrainingExerciseState> {
  final TrainingExerciseRepository trainingExerciseRepository;
  final ExerciseRepository exerciseRepository;
  final TrainingScheduleRepository trainingScheduleRepository;

  TrainingExerciseBloc({
    required this.trainingExerciseRepository,
    required this.exerciseRepository,
    required this.trainingScheduleRepository,
  }) : super(const TrainingExerciseState.initial()) {
    on<CreateTrainingExercise>(_onCreateTrainingExercise);
    on<GetTrainingExerciseById>(_onGetTrainingExerciseById);
    on<GetAllTrainingExercises>(_onGetAllTrainingExercises);
    on<UpdateTrainingExercise>(_onUpdateTrainingExercise);
    on<DeleteTrainingExercise>(_onDeleteTrainingExercise);
    on<GetAllTrainingExercisesByScheduleId>(
      _onGetAllTrainingExercisesByScheduleId,
    );
  }

  Future<void> _onCreateTrainingExercise(
    CreateTrainingExercise event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      await trainingExerciseRepository.createTrainingExercise(
        event.trainingExercise,
      );
      emit(
        const TrainingExerciseState.success(
          'Training exercise create successfully',
        ),
      );
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetTrainingExerciseById(
    GetTrainingExerciseById event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercise = await trainingExerciseRepository
          .getTrainingExerciseById(event.id);
      emit(TrainingExerciseState.loadedTrainingExercise(trainingExercise));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingExercises(
    GetAllTrainingExercises event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercises =
          await trainingExerciseRepository.getAllTrainingExercises();
      emit(TrainingExerciseState.loadedTrainingExercises(trainingExercises));
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTrainingExercise(
    UpdateTrainingExercise event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      final updatedTrainingExercise = await trainingExerciseRepository
          .updateTrainingExercise(event.trainingExercise);
      emit(
        TrainingExerciseState.loadedTrainingExercise(updatedTrainingExercise),
      );
      emit(
        const TrainingExerciseState.success(
          'Training exercise updated successfully',
        ),
      );
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTrainingExercise(
    DeleteTrainingExercise event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      await trainingExerciseRepository.deleteTrainingExercise(event.id);
      emit(
        const TrainingExerciseState.success(
          'Training exercise deleted successfully',
        ),
      );
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingExercisesByScheduleId(
    GetAllTrainingExercisesByScheduleId event,
    Emitter<TrainingExerciseState> emit,
  ) async {
    emit(const TrainingExerciseState.loading());
    try {
      final trainingExercises = await trainingExerciseRepository
          .getAllTrainingExerciseByScheduleId(event.scheduleId);
      final Map<String, Exercise> exercises = {};
      final Map<String, TrainingSchedule> trainingSchedules = {};
      for (var trainingExercise in trainingExercises) {
        final exercise = await exerciseRepository.getExerciseById(
          trainingExercise.exerciseId,
        );
        exercises[trainingExercise.exerciseId] = exercise;
        final trainingSchedule = await trainingScheduleRepository
            .getTrainingScheduleById(trainingExercise.scheduleId!);
        trainingSchedules[trainingExercise.scheduleId!] = trainingSchedule;
      }
      emit(
        TrainingExerciseState.loadedTrainingExercisesWithExercises(
          trainingExercises,
          traininngSchedules: trainingSchedules,
          exercises: exercises,
        ),
      );
    } catch (e) {
      emit(TrainingExerciseState.error(e.toString()));
    }
  }
}
