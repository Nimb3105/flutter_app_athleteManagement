import 'package:core/models/sport/sport.dart';
import 'package:core/repositories/sport/sport_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_bloc.freezed.dart';

@freezed
sealed class SportEvent with _$SportEvent {
  const factory SportEvent.createSport(Sport sport) = CreateSport;
  const factory SportEvent.getSportById(String id) = GetSportById;
  const factory SportEvent.getAllSports({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllSports;
  const factory SportEvent.updateSport(String id, Sport sport) = UpdateSport;
  const factory SportEvent.deleteSport(String id) = DeleteSport;
}

@freezed
sealed class SportState with _$SportState {
  const factory SportState.initial() = Sport_Initial;
  const factory SportState.loading() = Sport_Loading;
  const factory SportState.loadedSport(Sport sport) = LoadedSport;
  const factory SportState.loadedSports(
    List<Sport> sports,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedSports;
  const factory SportState.error(String message) = Sport_Error;
  const factory SportState.success(String message) = Sport_Success;
}

class SportBloc extends Bloc<SportEvent, SportState> {
  final SportRepository sportRepository;

  SportBloc({required this.sportRepository})
    : super(const SportState.initial()) {
    on<CreateSport>(_onCreateSport);
    on<GetSportById>(_onGetSportById);
    on<GetAllSports>(_onGetAllSports);
    on<UpdateSport>(_onUpdateSport);
    on<DeleteSport>(_onDeleteSport);
  }

  Future<void> _onCreateSport(
    CreateSport event,
    Emitter<SportState> emit,
  ) async {
    emit(const SportState.loading());
    try {
      final createdSport = await sportRepository.createSport(event.sport);
      emit(const Sport_Success('Tạo bộ môn thành công'));

      emit(SportState.loadedSport(createdSport));
    } catch (e) {
      emit(SportState.error(e.toString()));
    }
  }

  Future<void> _onGetSportById(
    GetSportById event,
    Emitter<SportState> emit,
  ) async {
    emit(const SportState.loading());
    try {
      final sport = await sportRepository.getSportById(event.id);
      emit(SportState.loadedSport(sport));
    } catch (e) {
      emit(SportState.error(e.toString()));
    }
  }

  Future<void> _onGetAllSports(
    GetAllSports event,
    Emitter<SportState> emit,
  ) async {
    emit(const SportState.loading());
    try {
      final sports = await sportRepository.getAllSports(
        page: event.page,
        limit: event.limit,
      );
      final hasMore = sports.length == event.limit;
      emit(SportState.loadedSports(sports, event.page, event.limit, hasMore));
    } catch (e) {
      emit(SportState.error(e.toString()));
    }
  }

  Future<void> _onUpdateSport(
    UpdateSport event,
    Emitter<SportState> emit,
  ) async {
    emit(const SportState.loading());
    try {
      final updatedSport = await sportRepository.updateSport(
        event.id,
        event.sport,
      );
      emit(SportState.loadedSport(updatedSport));
    } catch (e) {
      emit(SportState.error(e.toString()));
    }
  }

  Future<void> _onDeleteSport(
    DeleteSport event,
    Emitter<SportState> emit,
  ) async {
    emit(const SportState.loading());
    try {
      await sportRepository.deleteSport(event.id);
      emit(const SportState.success('Sport deleted successfully'));
    } catch (e) {
      emit(SportState.error(e.toString()));
    }
  }
}
