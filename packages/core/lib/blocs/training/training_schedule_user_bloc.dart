import 'package:core/models/training/training_schedule.dart';
import 'package:core/models/training/training_schedule_user.dart';
import 'package:core/repositories/training/training_schedule_repository.dart';
import 'package:core/repositories/training/training_schedule_user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_schedule_user_bloc.freezed.dart';

@freezed
sealed class TrainingScheduleUserEvent with _$TrainingScheduleUserEvent {
  const factory TrainingScheduleUserEvent.createTrainingScheduleUser(
    TrainingScheduleUser scheduleAthlete,
  ) = CreateTrainingScheduleUser;
  const factory TrainingScheduleUserEvent.getTrainingScheduleUserById(
    String id,
  ) = GetTrainingScheduleUserById;
  const factory TrainingScheduleUserEvent.getAllTrainingScheduleUsers() =
      GetAllTrainingScheduleUsers;
  const factory TrainingScheduleUserEvent.updateTrainingScheduleUser(
    String id,
    TrainingScheduleUser scheduleAthlete,
  ) = UpdateTrainingScheduleUser;
  const factory TrainingScheduleUserEvent.deleteTrainingScheduleUser(
    String id,
  ) = DeleteTrainingScheduleUser;
  const factory TrainingScheduleUserEvent.getAllTrainingScheduleUserByUserId(
    String userId,
  ) = GetAllTrainingScheduleUserByUserId;
}

@freezed
sealed class TrainingScheduleUserState with _$TrainingScheduleUserState {
  const factory TrainingScheduleUserState.initial() =
      TrainingScheduleUser_Initial;
  const factory TrainingScheduleUserState.loading() =
      TrainingScheduleUser_Loading;
  const factory TrainingScheduleUserState.loadedTrainingScheduleUser(
    TrainingScheduleUser scheduleAthlete,
  ) = LoadedTrainingScheduleUser;
  const factory TrainingScheduleUserState.loadedTrainingScheduleUsers(
    List<TrainingScheduleUser> scheduleAthletes,
    Map<String, TrainingSchedule> trainingSchedules,
  ) = LoadedTrainingScheduleUsers;

  const factory TrainingScheduleUserState.error(String message) =
      TrainingScheduleUser_Error;
  const factory TrainingScheduleUserState.success(String message) =
      TrainingScheduleUser_Success;
}

class TrainingScheduleUserBloc
    extends Bloc<TrainingScheduleUserEvent, TrainingScheduleUserState> {
  final TrainingScheduleUserRepository trainingScheduleUserRepository;
  final TrainingScheduleRepository trainingScheduleRepository;

  TrainingScheduleUserBloc({
    required this.trainingScheduleUserRepository,
    required this.trainingScheduleRepository,
  }) : super(const TrainingScheduleUserState.initial()) {
    on<CreateTrainingScheduleUser>(_onCreateTrainingScheduleUser);
    on<GetTrainingScheduleUserById>(_onGetTrainingScheduleUserById);
    // on<GetAllTrainingScheduleUsers>(_onGetAllTrainingScheduleUsers);
    on<UpdateTrainingScheduleUser>(_onUpdateTrainingScheduleUser);
    on<DeleteTrainingScheduleUser>(_onDeleteTrainingScheduleUser);

    on<GetAllTrainingScheduleUserByUserId>(
      _onGetAllTrainingScheduleUserByUserId,
    );
  }

  Future<void> _onCreateTrainingScheduleUser(
    CreateTrainingScheduleUser event,
    Emitter<TrainingScheduleUserState> emit,
  ) async {
    emit(const TrainingScheduleUserState.loading());
    try {
      final createdScheduleAthlete = await trainingScheduleUserRepository
          .createTrainingScheduleUser(event.scheduleAthlete);
      emit(
        TrainingScheduleUserState.loadedTrainingScheduleUser(
          createdScheduleAthlete,
        ),
      );
    } catch (e) {
      emit(TrainingScheduleUserState.error(e.toString()));
    }
  }

  Future<void> _onGetTrainingScheduleUserById(
    GetTrainingScheduleUserById event,
    Emitter<TrainingScheduleUserState> emit,
  ) async {
    emit(const TrainingScheduleUserState.loading());
    try {
      final scheduleAthlete = await trainingScheduleUserRepository
          .getTrainingScheduleUserById(event.id);
      emit(
        TrainingScheduleUserState.loadedTrainingScheduleUser(scheduleAthlete),
      );
    } catch (e) {
      emit(TrainingScheduleUserState.error(e.toString()));
    }
  }

  // Future<void> _onGetAllTrainingScheduleUsers(
  //     GetAllTrainingScheduleUsers event,
  //     Emitter<TrainingScheduleUserState> emit) async {
  //   emit(const TrainingScheduleUserState.loading());
  //   try {
  //     final scheduleAthletes = await TrainingScheduleUserRepository
  //         .getAllTrainingScheduleUsers();
  //     emit(TrainingScheduleUserState.loadedTrainingScheduleUsers(
  //         scheduleAthletes,trainingSchedules));
  //   } catch (e) {
  //     emit(TrainingScheduleUserState.error(e.toString()));
  //   }
  // }

  Future<void> _onUpdateTrainingScheduleUser(
    UpdateTrainingScheduleUser event,
    Emitter<TrainingScheduleUserState> emit,
  ) async {
    emit(const TrainingScheduleUserState.loading());
    try {
      final updatedScheduleAthlete = await trainingScheduleUserRepository
          .updateTrainingScheduleUser(event.id, event.scheduleAthlete);
      emit(
        TrainingScheduleUserState.loadedTrainingScheduleUser(
          updatedScheduleAthlete,
        ),
      );
    } catch (e) {
      emit(TrainingScheduleUserState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTrainingScheduleUser(
    DeleteTrainingScheduleUser event,
    Emitter<TrainingScheduleUserState> emit,
  ) async {
    emit(const TrainingScheduleUserState.loading());
    try {
      await trainingScheduleUserRepository.deleteTrainingScheduleUser(event.id);
      emit(
        const TrainingScheduleUserState.success(
          'Training schedule athlete deleted successfully',
        ),
      );
    } catch (e) {
      emit(TrainingScheduleUserState.error(e.toString()));
    }
  }

  Future<void> _onGetAllTrainingScheduleUserByUserId(
    GetAllTrainingScheduleUserByUserId event,
    Emitter<TrainingScheduleUserState> emit,
  ) async {
    emit(const TrainingScheduleUserState.loading());
    try {
      final trainingScheduleUsers = await trainingScheduleUserRepository
          .getAllTrainingScheduleUserByUserId(event.userId);
      final Map<String, TrainingSchedule> trainingSchedules = {};
      for (var trainingScheduleUser in trainingScheduleUsers) {
        final trainingSchedule = await trainingScheduleRepository
            .getTrainingScheduleById(trainingScheduleUser.scheduleId);
        trainingSchedules[trainingScheduleUser.scheduleId] = trainingSchedule;
      }
      emit(
        TrainingScheduleUserState.loadedTrainingScheduleUsers(
          trainingScheduleUsers,
          trainingSchedules,
        ),
      );
    } catch (e) {
      emit(TrainingScheduleUserState.error(e.toString()));
    }
  }
}
