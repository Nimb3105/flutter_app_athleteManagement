
import 'package:core/models/athlete/health/medical_history.dart';
import 'package:core/repositories/athlete/medical_history_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_history_bloc.freezed.dart';

@freezed
sealed class MedicalHistoryEvent with _$MedicalHistoryEvent {
  const factory MedicalHistoryEvent.createMedicalHistory(MedicalHistory medicalHistory) = _CreateMedicalHistory;
  const factory MedicalHistoryEvent.getMedicalHistoryById(String id) = _GetMedicalHistoryById;
  const factory MedicalHistoryEvent.getMedicalHistoryByHealthId(String healthId) = _GetMedicalHistoryByHealthId;
  const factory MedicalHistoryEvent.getAllMedicalHistories({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllMedicalHistories;
  const factory MedicalHistoryEvent.updateMedicalHistory(String id, MedicalHistory medicalHistory) = _UpdateMedicalHistory;
  const factory MedicalHistoryEvent.deleteMedicalHistory(String id) = _DeleteMedicalHistory;
}

@freezed
sealed class MedicalHistoryState with _$MedicalHistoryState {
  const factory MedicalHistoryState.initial() = MedicalHistory_Initial;
  const factory MedicalHistoryState.loading() = MedicalHistory_Loading;
  const factory MedicalHistoryState.loadedMedicalHistory(MedicalHistory medicalHistory) = LoadedMedicalHistory;
  const factory MedicalHistoryState.loadedMedicalHistories(
    List<MedicalHistory> medicalHistories,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedMedicalHistories;
  const factory MedicalHistoryState.error(String message) = MedicalHistory_Error;
  const factory MedicalHistoryState.success(String message) = MedicalHistory_Success;
}

class MedicalHistoryBloc extends Bloc<MedicalHistoryEvent, MedicalHistoryState> {
  final MedicalHistoryRepository medicalHistoryRepository;

  MedicalHistoryBloc({required this.medicalHistoryRepository})
      : super(const MedicalHistoryState.initial()) {
    on<_CreateMedicalHistory>(_onCreateMedicalHistory);
    on<_GetMedicalHistoryById>(_onGetMedicalHistoryById);
    on<_GetMedicalHistoryByHealthId>(_onGetMedicalHistoryByHealthId);
    on<_GetAllMedicalHistories>(_onGetAllMedicalHistories);
    on<_UpdateMedicalHistory>(_onUpdateMedicalHistory);
    on<_DeleteMedicalHistory>(_onDeleteMedicalHistory);
  }

  Future<void> _onCreateMedicalHistory(
    _CreateMedicalHistory event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      final createdMedicalHistory = await medicalHistoryRepository.createMedicalHistory(event.medicalHistory);
      emit(MedicalHistoryState.loadedMedicalHistory(createdMedicalHistory));
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }

  Future<void> _onGetMedicalHistoryById(
    _GetMedicalHistoryById event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      final medicalHistory = await medicalHistoryRepository.getMedicalHistoryById(event.id);
      emit(MedicalHistoryState.loadedMedicalHistory(medicalHistory));
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }

  Future<void> _onGetMedicalHistoryByHealthId(
    _GetMedicalHistoryByHealthId event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      final medicalHistory = await medicalHistoryRepository.getMedicalHistoryByHealthId(event.healthId);
      emit(MedicalHistoryState.loadedMedicalHistory(medicalHistory));
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }

  Future<void> _onGetAllMedicalHistories(
    _GetAllMedicalHistories event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      final result = await medicalHistoryRepository.getAllMedicalHistories(
        page: event.page,
        limit: event.limit,
      );
      emit(
        MedicalHistoryState.loadedMedicalHistories(
          result['medicalHistories'] as List<MedicalHistory>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }

  Future<void> _onUpdateMedicalHistory(
    _UpdateMedicalHistory event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      final updatedMedicalHistory = await medicalHistoryRepository.updateMedicalHistory(
        event.id,
        event.medicalHistory,
      );
      emit(MedicalHistoryState.loadedMedicalHistory(updatedMedicalHistory));
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }

  Future<void> _onDeleteMedicalHistory(
    _DeleteMedicalHistory event,
    Emitter<MedicalHistoryState> emit,
  ) async {
    emit(const MedicalHistoryState.loading());
    try {
      await medicalHistoryRepository.deleteMedicalHistory(event.id);
      emit(const MedicalHistoryState.success('Medical history deleted successfully'));
    } catch (e) {
      emit(MedicalHistoryState.error(e.toString()));
    }
  }
}