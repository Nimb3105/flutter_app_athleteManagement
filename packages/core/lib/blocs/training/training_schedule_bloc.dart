import 'package:core/models/training_schedule/training_schedule.dart';
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
}

class TrainingScheduleBloc
    extends Bloc<TrainingScheduleEvent, TrainingScheduleState> {
  final TrainingScheduleRepository trainingScheduleRepository;

  TrainingScheduleBloc({required this.trainingScheduleRepository})
    : super(const TrainingScheduleState.initial()) {
    on<CreateTrainingSchedule>(_onCreateTrainingSchedule);
    on<GetTrainingScheduleById>(_onGetTrainingScheduleById);
    on<GetAllTrainingSchedules>(_onGetAllTrainingSchedules);
    on<UpdateTrainingSchedule>(_onUpdateTrainingSchedule);
    on<DeleteTrainingSchedule>(_onDeleteTrainingSchedule);
  }

  Future<void> _onCreateTrainingSchedule(
    CreateTrainingSchedule event,
    Emitter<TrainingScheduleState> emit,
  ) async {
    emit(const TrainingScheduleState.loading());
    try {
      final createdSchedule = await trainingScheduleRepository
          .createTrainingSchedule(event.schedule);
      emit(TrainingScheduleState.loadedTrainingSchedule(createdSchedule));
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
      final updatedSchedule = await trainingScheduleRepository
          .updateTrainingSchedule(event.schedule);
      emit(TrainingScheduleState.loadedTrainingSchedule(updatedSchedule));
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
