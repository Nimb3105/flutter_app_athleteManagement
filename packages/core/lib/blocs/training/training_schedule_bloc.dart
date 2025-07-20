import 'package:core/models/exercise/exercise.dart';
import 'package:core/models/training_schedule/training_exercise.dart';
import 'package:core/models/training_schedule/training_schedule.dart';
import 'package:core/repositories/exercise/exercise_repository.dart';
import 'package:core/repositories/training_schedule/training_exercise_repository.dart';
import 'package:core/repositories/training_schedule/training_schedule_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_schedule_bloc.freezed.dart';

@freezed
sealed class TrainingScheduleEvent with _$TrainingScheduleEvent {
  const factory TrainingScheduleEvent.createTrainingSchedule(
    TrainingSchedule schedule,
  ) = CreateTrainingSchedule;
  const factory TrainingScheduleEvent.getTrainingScheduleById(String id) =
      GetTrainingScheduleById;
  const factory TrainingScheduleEvent.getAllTrainingSchedules() =
      GetAllTrainingSchedules;
  const factory TrainingScheduleEvent.updateTrainingSchedule(
    TrainingSchedule schedule,
  ) = UpdateTrainingSchedule;
  const factory TrainingScheduleEvent.deleteTrainingSchedule(String id) =
      DeleteTrainingSchedule;
  const factory TrainingScheduleEvent.getAllTrainingSchedulesByDailyScheduleId(
    String dailyScheduleId,
    String date,
  ) = GetAllTrainingSchedulesByDailyScheduleId;
  const factory TrainingScheduleEvent.createMultipleTrainingSchedules(
    List<TrainingSchedule> schedules,
  ) = CreateMultipleTrainingSchedules;
}

@freezed
sealed class TrainingScheduleState with _$TrainingScheduleState {
  const factory TrainingScheduleState.initial() = TrainingSchedule_Initial;
  const factory TrainingScheduleState.loading() = TrainingSchedule_Loading;
  const factory TrainingScheduleState.loadedTrainingSchedule(
    TrainingSchedule schedule,
  ) = LoadedTrainingSchedule;
  const factory TrainingScheduleState.loadedTrainingSchedules(
    List<TrainingSchedule> schedules,
  ) = LoadedTrainingSchedules;
  const factory TrainingScheduleState.error(String message) =
      TrainingSchedule_Error;
  const factory TrainingScheduleState.success(String message) =
      TrainingSchedule_Success;
  const factory TrainingScheduleState.loadedTrainingSchedulesByDailyScheduleId(
    List<TrainingSchedule> trainingSchedules,
    Map<String, List<TrainingExercise>>
    exercisesBySchedule, // Map scheduleId -> List<TrainingExercise>
    Map<String, Exercise> exerciseDetails, // Map exerciseId -> Exercise
  ) = LoadedTrainingSchedulesByDailyScheduleId;
}

class TrainingScheduleBloc
    extends Bloc<TrainingScheduleEvent, TrainingScheduleState> {
  final TrainingScheduleRepository trainingScheduleRepository;
  final TrainingExerciseRepository trainingExerciseRepository;
  final ExerciseRepository exerciseRepository;

  TrainingScheduleBloc({
    required this.trainingScheduleRepository,
    required this.exerciseRepository,
    required this.trainingExerciseRepository,
  }) : super(const TrainingScheduleState.initial()) {
    on<CreateTrainingSchedule>(_onCreateTrainingSchedule);
    on<GetTrainingScheduleById>(_onGetTrainingScheduleById);
    on<GetAllTrainingSchedules>(_onGetAllTrainingSchedules);
    on<UpdateTrainingSchedule>(_onUpdateTrainingSchedule);
    on<DeleteTrainingSchedule>(_onDeleteTrainingSchedule);
    on<GetAllTrainingSchedulesByDailyScheduleId>(
      _onGetAllTrainingSchedulesByDailyScheduleId,
    );
    on<CreateMultipleTrainingSchedules>(_onCreateMultipleTrainingSchedules);
  }

  Future<void> _onCreateMultipleTrainingSchedules(
    CreateMultipleTrainingSchedules event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    // Không cần emit loading để tránh làm gián đoạn UI
    try {
      // Dùng Future.wait để thực hiện các lệnh gọi API song song, tăng hiệu suất
      await Future.wait(
        event.schedules.map(
          (schedule) =>
              trainingScheduleRepository.createTrainingSchedule(schedule),
        ),
      );
      // Có thể emit một trạng thái success chung nếu muốn
      // emit(const TrainingScheduleState.success('Áp dụng lịch tập thành công'));
    } catch (e) {
      // Vẫn emit lỗi nếu có vấn đề
      emit(
        TrainingScheduleState.error(
          "Lỗi khi áp dụng lịch tập: ${e.toString()}",
        ),
      );
    }
  }

  Future<void> _onGetAllTrainingSchedulesByDailyScheduleId(
    GetAllTrainingSchedulesByDailyScheduleId event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      // 1. Lấy tất cả lịch tập trong ngày
      final trainingSchedules = await trainingScheduleRepository
          .getAllTrainingScheduleByDailyScheduleId(
            event.dailyScheduleId,
            event.date,
          );

      if (trainingSchedules.isEmpty) {
        emit(const LoadedTrainingSchedulesByDailyScheduleId([], {}, {}));
        return;
      }

      // 2. Lấy tất cả các bài tập cho các lịch tập một cách song song
      final exercisesBySchedule = <String, List<TrainingExercise>>{};
      final exerciseFutures = trainingSchedules.map((schedule) async {
        if (schedule.id != null) {
          final exercises = await trainingExerciseRepository
              .getAllTrainingExerciseByScheduleId(schedule.id!);
          exercisesBySchedule[schedule.id!] = exercises;
        }
      });
      await Future.wait(exerciseFutures);

      // 3. Thu thập tất cả các ID bài tập duy nhất
      final allExerciseIds =
          exercisesBySchedule.values
              .expand((exerciseList) => exerciseList)
              .map((trainingExercise) => trainingExercise.exerciseId)
              .toSet();

      // 4. Lấy chi tiết tất cả bài tập trong một lần
      final exerciseDetails = <String, Exercise>{};
      final detailFutures = allExerciseIds.map((id) async {
        if (!exerciseDetails.containsKey(id)) {
          final detail = await exerciseRepository.getExerciseById(id);
          exerciseDetails[id] = detail;
        }
      });
      await Future.wait(detailFutures);

      emit(
        LoadedTrainingSchedulesByDailyScheduleId(
          trainingSchedules,
          exercisesBySchedule,
          exerciseDetails,
        ),
      );
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }

  Future<void> _onCreateTrainingSchedule(
    CreateTrainingSchedule event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      await trainingScheduleRepository.createTrainingSchedule(event.schedule);
      // emit(TrainingScheduleState.loadedTrainingSchedule(createdSchedule));
      emit(TrainingScheduleState.success('tạo lịch tập thành công'));
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetTrainingScheduleById(
    GetTrainingScheduleById event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      final schedule = await trainingScheduleRepository.getTrainingScheduleById(
        event.id,
      );
      emit(TrainingScheduleState.loadedTrainingSchedule(schedule));
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingSchedules(
    GetAllTrainingSchedules event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      final schedules =
          await trainingScheduleRepository.getAllTrainingSchedules();
      emit(TrainingScheduleState.loadedTrainingSchedules(schedules));
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTrainingSchedule(
    UpdateTrainingSchedule event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      await trainingScheduleRepository.updateTrainingSchedule(event.schedule);
      //emit(TrainingScheduleState.loadedTrainingSchedule(updatedSchedule));
      emit(
        const TrainingScheduleState.success(
          'Training schedule updated successfully',
        ),
      );
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTrainingSchedule(
    DeleteTrainingSchedule event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      await trainingScheduleRepository.deleteTrainingSchedule(event.id);
      emit(
        const TrainingScheduleState.success(
          'Training schedule deleted successfully',
        ),
      );
    } catch (e) {
      emit(TrainingScheduleState.error(e.toString()));
    }
  }
}
