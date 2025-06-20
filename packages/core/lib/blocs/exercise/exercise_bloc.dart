import 'package:core/models/exercise/exercise.dart';
import 'package:core/repositories/exercise/exercise_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_bloc.freezed.dart';

@freezed
sealed class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.createExercise(Exercise exercise) = CreateExercise;
  const factory ExerciseEvent.getExerciseById(String id) = GetExerciseById;
  const factory ExerciseEvent.getAllExercisesByBodyPart(
    String bodyPart, {
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllExercisesByBodyPart;
  const factory ExerciseEvent.getAllExercisesBySportName(
    String sportName, {
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllExercisesBySportName;
  const factory ExerciseEvent.getAllExercises({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllExercises;
  const factory ExerciseEvent.updateExercise(String id, Exercise exercise) = UpdateExercise;
  const factory ExerciseEvent.deleteExercise(String id) = DeleteExercise;
}

@freezed
sealed class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = Exercise_Initial;
  const factory ExerciseState.loading() = Exercise_Loading;
  const factory ExerciseState.loadingMore() = Exercise_LoadingMore;
  const factory ExerciseState.loadedExercise(Exercise exercise) = LoadedExercise;
  const factory ExerciseState.loadedExercises(
    List<Exercise> exercises,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedExercises;
  const factory ExerciseState.error(String message) = Exercise_Error;
  const factory ExerciseState.success(String message) = Exercise_Success;
}

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ExerciseRepository exerciseRepository;
  // ignore: unused_field
  int _currentPage = 1;
  final List<Exercise> _exercises = [];
  String? _currentSportName; // Lưu target hiện tại
  String? _currentBodyPart; // Lưu body part hiện tại

  ExerciseBloc({required this.exerciseRepository}) : super(const ExerciseState.initial()) {
    on<CreateExercise>(_onCreateExercise);
    on<GetExerciseById>(_onGetExerciseById);
    on<GetAllExercises>(_onGetAllExercises);
    on<UpdateExercise>(_onUpdateExercise);
    on<DeleteExercise>(_onDeleteExercise);
    on<GetAllExercisesBySportName>(_onGetAllExercisesBySportName);
    on<GetAllExercisesByBodyPart>(_onGetAllExercisesByBodyPart);
  }

  Future<void> _onCreateExercise(CreateExercise event, Emitter<ExerciseState> emit) async {
    emit(const ExerciseState.loading());
    try {
      final createdExercise = await exerciseRepository.createExercise(event.exercise);
      emit(ExerciseState.success('Thêm bài tập thành công'));
      emit(ExerciseState.loadedExercise(createdExercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetExerciseById(GetExerciseById event, Emitter<ExerciseState> emit) async {
    emit(const ExerciseState.loading());
    try {
      final exercise = await exerciseRepository.getExerciseById(event.id);
      emit(ExerciseState.loadedExercise(exercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllExercisesByBodyPart(
    GetAllExercisesByBodyPart event,
    Emitter<ExerciseState> emit,
  ) async {
    try {
      // Nếu body part thay đổi hoặc page = 1, xóa danh sách cũ
      if (event.page == 1 || _currentBodyPart != event.bodyPart) {
        _exercises.clear();
        _currentPage = 1;
        _currentSportName = null; // Reset sport name
        _currentBodyPart = event.bodyPart;
        emit(const Exercise_Loading());
      } else {
        emit(const Exercise_LoadingMore());
      }

      final response = await exerciseRepository.getAllExercisesByBodyPart(
        event.bodyPart,
        page: event.page,
        limit: event.limit,
      );

      _exercises.addAll(response.items);
      final hasMore = _exercises.length < response.totalCount;

      emit(
        LoadedExercises(
          List.from(_exercises),
          event.page,
          event.limit,
          hasMore,
        ),
      );

      if (hasMore) _currentPage = event.page + 1;
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllExercisesBySportName(
    GetAllExercisesBySportName event,
    Emitter<ExerciseState> emit,
  ) async {
    try {
      // Nếu target thay đổi hoặc page = 1, xóa danh sách cũ
      if (event.page == 1 || _currentSportName != event.sportName) {
        _exercises.clear();
        _currentPage = 1;
        _currentBodyPart = null; // Reset body part
        _currentSportName = event.sportName;
        emit(const Exercise_Loading());
      } else {
        emit(const Exercise_LoadingMore());
      }

      final response = await exerciseRepository.getAllExercisesBySportName(
        event.sportName,
        page: event.page,
        limit: event.limit,
      );

      _exercises.addAll(response.items);
      final hasMore = _exercises.length < response.totalCount;

      emit(
        LoadedExercises(
          List.from(_exercises),
          event.page,
          event.limit,
          hasMore,
        ),
      );

      if (hasMore) _currentPage = event.page + 1;
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onGetAllExercises(GetAllExercises event, Emitter<ExerciseState> emit) async {
    try {
      // Nếu không lọc theo target hoặc page = 1, xóa danh sách cũ
      if (event.page == 1 || _currentBodyPart != null || _currentSportName != null) {
        _exercises.clear();
        _currentPage = 1;
        _currentSportName = null; // Reset sport name
        _currentBodyPart = null; // Reset body part
        emit(const Exercise_Loading());
      } else {
        emit(const Exercise_LoadingMore());
      }

      final response = await exerciseRepository.getAllExercises(
        page: event.page,
        limit: event.limit,
      );

      _exercises.addAll(response.items);
      final hasMore = _exercises.length < response.totalCount;

      emit(
        LoadedExercises(
          List.from(_exercises),
          event.page,
          event.limit,
          hasMore,
        ),
      );

      if (hasMore) _currentPage = event.page + 1;
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onUpdateExercise(UpdateExercise event, Emitter<ExerciseState> emit) async {
    emit(const ExerciseState.loading());
    try {
      final updatedExercise = await exerciseRepository.updateExercise(event.id, event.exercise);
      emit(ExerciseState.loadedExercise(updatedExercise));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }

  Future<void> _onDeleteExercise(DeleteExercise event, Emitter<ExerciseState> emit) async {
    emit(const ExerciseState.loading());
    try {
      await exerciseRepository.deleteExercise(event.id);
      emit(const ExerciseState.success('Exercise deleted successfully'));
    } catch (e) {
      emit(ExerciseState.error(e.toString()));
    }
  }
}