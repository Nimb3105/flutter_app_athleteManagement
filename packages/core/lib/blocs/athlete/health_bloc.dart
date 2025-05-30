
import 'package:core/models/athlete/health/health.dart';
import 'package:core/repositories/athlete/health_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_bloc.freezed.dart';

@freezed
sealed class HealthEvent with _$HealthEvent {
  const factory HealthEvent.createHealth(Health health) = _CreateHealth;
  const factory HealthEvent.getHealthById(String id) = _GetHealthById;
  const factory HealthEvent.getHealthByUserId(String userId) = _GetHealthByUserId;
  const factory HealthEvent.getAllHealthRecords({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllHealthRecords;
  const factory HealthEvent.updateHealth(String id, Health health) = _UpdateHealth;
  const factory HealthEvent.deleteHealth(String id) = _DeleteHealth;
}

@freezed
sealed class HealthState with _$HealthState {
  const factory HealthState.initial() = Health_Initial;
  const factory HealthState.loading() = Health_Loading;
  const factory HealthState.loadedHealth(Health health) = LoadedHealth;
  const factory HealthState.loadedHealthRecords(
    List<Health> healthRecords,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedHealthRecords;
  const factory HealthState.error(String message) = Health_Error;
  const factory HealthState.success(String message) = Health_Success;
}

class HealthBloc extends Bloc<HealthEvent, HealthState> {
  final HealthRepository healthRepository;

  HealthBloc({required this.healthRepository})
      : super(const HealthState.initial()) {
    on<_CreateHealth>(_onCreateHealth);
    on<_GetHealthById>(_onGetHealthById);
    on<_GetHealthByUserId>(_onGetHealthByUserId);
    on<_GetAllHealthRecords>(_onGetAllHealthRecords);
    on<_UpdateHealth>(_onUpdateHealth);
    on<_DeleteHealth>(_onDeleteHealth);
  }

  Future<void> _onCreateHealth(
    _CreateHealth event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      final createdHealth = await healthRepository.createHealth(event.health);
      emit(HealthState.loadedHealth(createdHealth));
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }

  Future<void> _onGetHealthById(
    _GetHealthById event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      final health = await healthRepository.getHealthById(event.id);
      emit(HealthState.loadedHealth(health));
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }

  Future<void> _onGetHealthByUserId(
    _GetHealthByUserId event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      final health = await healthRepository.getHealthByUserId(event.userId);
      emit(HealthState.loadedHealth(health));
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }

  Future<void> _onGetAllHealthRecords(
    _GetAllHealthRecords event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      final result = await healthRepository.getAllHealthRecords(
        page: event.page,
        limit: event.limit,
      );
      emit(
        HealthState.loadedHealthRecords(
          result['healthRecords'] as List<Health>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }

  Future<void> _onUpdateHealth(
    _UpdateHealth event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      final updatedHealth = await healthRepository.updateHealth(
        event.id,
        event.health,
      );
      emit(HealthState.loadedHealth(updatedHealth));
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }

  Future<void> _onDeleteHealth(
    _DeleteHealth event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthState.loading());
    try {
      await healthRepository.deleteHealth(event.id);
      emit(const HealthState.success('Health record deleted successfully'));
    } catch (e) {
      emit(HealthState.error(e.toString()));
    }
  }
}