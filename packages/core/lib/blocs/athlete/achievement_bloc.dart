import 'package:core/models/athlete/achievement/achievement.dart';
import 'package:core/repositories/athlete/achievement_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement_bloc.freezed.dart';

@freezed
sealed class AchievementEvent with _$AchievementEvent {
  const factory AchievementEvent.createAchievement(Achievement achievement) =
      _CreateAchievement;
  const factory AchievementEvent.getAchievementById(String id) =
      _GetAchievementById;
  const factory AchievementEvent.getAchievementByUserId(String userId) =
      _GetAchievementByUserId;
  const factory AchievementEvent.getAllAchievements({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllAchievements;
  const factory AchievementEvent.updateAchievement(
    String id,
    Achievement achievement,
  ) = _UpdateAchievement;
  const factory AchievementEvent.deleteAchievement(String id) =
      _DeleteAchievement;
}

@freezed
sealed class AchievementState with _$AchievementState {
  const factory AchievementState.initial() = Achievement_Initial;
  const factory AchievementState.loading() = Achievement_Loading;
  const factory AchievementState.loadedAchievement(Achievement achievement) =
      LoadedAchievement;
  const factory AchievementState.loadedAchievements(
    List<Achievement> achievements,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedAchievements;
  const factory AchievementState.error(String message) = Achievement_Error;
  const factory AchievementState.success(String message) = Achievement_Success;
}

class AchievementBloc extends Bloc<AchievementEvent, AchievementState> {
  final AchievementRepository achievementRepository;

  AchievementBloc({required this.achievementRepository})
    : super(const AchievementState.initial()) {
    on<_CreateAchievement>(_onCreateAchievement);
    on<_GetAchievementById>(_onGetAchievementById);
    on<_GetAchievementByUserId>(_onGetAchievementByUserId);
    on<_GetAllAchievements>(_onGetAllAchievements);
    on<_UpdateAchievement>(_onUpdateAchievement);
    on<_DeleteAchievement>(_onDeleteAchievement);
  }

  Future<void> _onCreateAchievement(
    _CreateAchievement event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      final createdAchievement = await achievementRepository.createAchievement(
        event.achievement,
      );
      emit(AchievementState.loadedAchievement(createdAchievement));
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }

  Future<void> _onGetAchievementById(
    _GetAchievementById event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      final achievement = await achievementRepository.getAchievementById(
        event.id,
      );
      emit(AchievementState.loadedAchievement(achievement));
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }

  Future<void> _onGetAchievementByUserId(
    _GetAchievementByUserId event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      final result = await achievementRepository.getAchievementByUserId(
        event.userId,
      );
      final achievements = result['achievement'] as List<Achievement>? ?? [];
      emit(
        AchievementState.loadedAchievements(
          achievements,
          1,
          achievements.length,
          false,
        ),
      );
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }

  Future<void> _onGetAllAchievements(
    _GetAllAchievements event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      final result = await achievementRepository.getAllAchievements(
        page: event.page,
        limit: event.limit,
      );
      emit(
        AchievementState.loadedAchievements(
          result['achievements'] as List<Achievement>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }

  Future<void> _onUpdateAchievement(
    _UpdateAchievement event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      final updatedAchievement = await achievementRepository.updateAchievement(
        event.id,
        event.achievement,
      );
      emit(AchievementState.loadedAchievement(updatedAchievement));
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }

  Future<void> _onDeleteAchievement(
    _DeleteAchievement event,
    Emitter<AchievementState> emit,
  ) async {
    emit(const AchievementState.loading());
    try {
      await achievementRepository.deleteAchievement(event.id);
      emit(const AchievementState.success('Achievement deleted successfully'));
    } catch (e) {
      emit(AchievementState.error(e.toString()));
    }
  }
}
