import 'package:core/models/athlete/injury/injury.dart';
import 'package:core/repositories/athlete/injury_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'injury_bloc.freezed.dart';

@freezed
sealed class InjuryEvent with _$InjuryEvent {
  const factory InjuryEvent.createInjury(Injury injury) = _CreateInjury;
  const factory InjuryEvent.getInjuryById(String id) = _GetInjuryById;
  const factory InjuryEvent.getInjuryByUserId(String userId) =
      _GetInjuryByUserId;
  const factory InjuryEvent.getAllInjuries({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllInjuries;
  const factory InjuryEvent.updateInjury(String id, Injury injury) =
      _UpdateInjury;
  const factory InjuryEvent.deleteInjury(String id) = _DeleteInjury;
}

@freezed
sealed class InjuryState with _$InjuryState {
  const factory InjuryState.initial() = Injury_Initial;
  const factory InjuryState.loading() = Injury_Loading;
  const factory InjuryState.loadedInjury(Injury injury) = LoadedInjury;
  const factory InjuryState.loadedInjuries(
    List<Injury> injuries,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedInjuries;
  const factory InjuryState.error(String message) = Injury_Error;
  const factory InjuryState.success(String message) = Injury_Success;
}

class InjuryBloc extends Bloc<InjuryEvent, InjuryState> {
  final InjuryRepository injuryRepository;

  InjuryBloc({required this.injuryRepository})
    : super(const InjuryState.initial()) {
    on<_CreateInjury>(_onCreateInjury);
    on<_GetInjuryById>(_onGetInjuryById);
    on<_GetInjuryByUserId>(_onGetInjuryByUserId);
    on<_GetAllInjuries>(_onGetAllInjuries);
    on<_UpdateInjury>(_onUpdateInjury);
    on<_DeleteInjury>(_onDeleteInjury);
  }

  Future<void> _onCreateInjury(
    _CreateInjury event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      final createdInjury = await injuryRepository.createInjury(event.injury);
      emit(InjuryState.loadedInjury(createdInjury));
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }

  Future<void> _onGetInjuryById(
    _GetInjuryById event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      final injury = await injuryRepository.getInjuryById(event.id);
      emit(InjuryState.loadedInjury(injury));
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }

  Future<void> _onGetInjuryByUserId(
    _GetInjuryByUserId event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      final result = await injuryRepository.getInjuryByUserId(event.userId);
      final injuries = result['injury'] as List<Injury>? ?? [];
      emit(InjuryState.loadedInjuries(injuries, 1, injuries.length, false));
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }

  Future<void> _onGetAllInjuries(
    _GetAllInjuries event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      final result = await injuryRepository.getAllInjuries(
        page: event.page,
        limit: event.limit,
      );
      emit(
        InjuryState.loadedInjuries(
          result['injuries'] as List<Injury>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }

  Future<void> _onUpdateInjury(
    _UpdateInjury event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      final updatedInjury = await injuryRepository.updateInjury(
        event.id,
        event.injury,
      );
      emit(InjuryState.loadedInjury(updatedInjury));
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }

  Future<void> _onDeleteInjury(
    _DeleteInjury event,
    Emitter<InjuryState> emit,
  ) async {
    emit(const InjuryState.loading());
    try {
      await injuryRepository.deleteInjury(event.id);
      emit(const InjuryState.success('Injury deleted successfully'));
    } catch (e) {
      emit(InjuryState.error(e.toString()));
    }
  }
}
