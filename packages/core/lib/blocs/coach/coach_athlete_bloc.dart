import 'package:core/models/athlete/athlete.dart';
import 'package:core/models/coach/coach_athlete.dart';
import 'package:core/models/sport/sport.dart';
import 'package:core/models/user/user.dart';
import 'package:core/repositories/athlete/athlete_repository.dart';
import 'package:core/repositories/coach/coach_athlete_repository.dart';
import 'package:core/repositories/sport/sport_repository.dart';
import 'package:core/repositories/user/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_athlete_bloc.freezed.dart';

@freezed
sealed class CoachAthleteEvent with _$CoachAthleteEvent {
  const factory CoachAthleteEvent.createCoachAthlete(
    CoachAthlete coachAthlete,
  ) = CreateCoachAthlete;
  const factory CoachAthleteEvent.getCoachAthleteById(String id) =
      GetCoachAthleteById;
  const factory CoachAthleteEvent.getByAthleteId(String athleteId) =
      GetByAthleteId;
  const factory CoachAthleteEvent.getAllCoachAthletes({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllCoachAthletes;
  const factory CoachAthleteEvent.updateCoachAthlete(
    String id,
    CoachAthlete coachAthlete,
  ) = UpdateCoachAthlete;
  const factory CoachAthleteEvent.deleteCoachAthlete(String id) =
      DeleteCoachAthlete;
  const factory CoachAthleteEvent.getAllByCoachId(
    String coachId, {
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllByCoachId;
}

@freezed
sealed class CoachAthleteState with _$CoachAthleteState {
  const factory CoachAthleteState.initial() = CoachAthlete_Initial;
  const factory CoachAthleteState.loading() = CoachAthlete_Loading;
  const factory CoachAthleteState.loadingMore() = CoachAthlete_LoadingMore;
  const factory CoachAthleteState.loadedCoachAthlete(
    CoachAthlete? coachAthlete,
  ) = LoadedCoachAthlete;
  const factory CoachAthleteState.loadedCoachAthletes({
    required List<CoachAthlete> coachAthletes,
    required int currentPage,
    required int limit,
    required bool hasMore,
    required Map<String, Athlete> athleteMap,
    required Map<String, User?> userMap,
    required Map<String, Sport> sportMap,
  }) = LoadedCoachAthletes;
  const factory CoachAthleteState.error(String message) = CoachAthlete_Error;
  const factory CoachAthleteState.success(String message) =
      CoachAthlete_Success;
}

class CoachAthleteBloc extends Bloc<CoachAthleteEvent, CoachAthleteState> {
  final CoachAthleteRepository coachAthleteRepository;
  final AthleteRepository athleteRepository;
  final UserRepository userRepository;
  final SportRepository sportRepository;
  List<CoachAthlete> _allCoachAthletes = [];

  CoachAthleteBloc({
    required this.coachAthleteRepository,
    required this.athleteRepository,
    required this.userRepository,
    required this.sportRepository,
  }) : super(const CoachAthleteState.initial()) {
    on<CreateCoachAthlete>(_onCreateCoachAthlete);
    on<GetCoachAthleteById>(_onGetCoachAthleteById);
    on<GetAllCoachAthletes>(_onGetAllCoachAthletes);
    on<UpdateCoachAthlete>(_onUpdateCoachAthlete);
    on<DeleteCoachAthlete>(_onDeleteCoachAthlete);
    on<GetAllByCoachId>(_onGetAllByCoachId);
    on<GetByAthleteId>(_onGetByAthleteId);
  }

  Future<void> _onCreateCoachAthlete(
    CreateCoachAthlete event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      final createdCoachAthlete = await coachAthleteRepository
          .createCoachAthlete(event.coachAthlete);
      emit(
        const CoachAthlete_Success(
          'Tạo mối quan hệ huấn luyện viên-vận động viên thành công',
        ),
      );
      emit(CoachAthleteState.loadedCoachAthlete(createdCoachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachAthleteById(
    GetCoachAthleteById event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      final coachAthlete = await coachAthleteRepository.getCoachAthleteById(
        event.id,
      );
      emit(CoachAthleteState.loadedCoachAthlete(coachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetByAthleteId(
    GetByAthleteId event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      final coachAthletes = await coachAthleteRepository.getByAthleteId(
        event.athleteId,
      );
      emit(CoachAthleteState.loadedCoachAthlete(coachAthletes));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllCoachAthletes(
    GetAllCoachAthletes event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      final coachAthletes = await coachAthleteRepository.getAllCoachAthletes(
        page: event.page,
        limit: event.limit,
      );
      final hasMore = coachAthletes.length == event.limit;
      emit(
        CoachAthleteState.loadedCoachAthletes(
          coachAthletes: coachAthletes,
          currentPage: event.page,
          limit: event.limit,
          hasMore: hasMore,
          athleteMap: const {},
          userMap: const {},
          sportMap: const {},
        ),
      );
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onUpdateCoachAthlete(
    UpdateCoachAthlete event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      final updatedCoachAthlete = await coachAthleteRepository
          .updateCoachAthlete(event.id, event.coachAthlete);
      emit(CoachAthleteState.loadedCoachAthlete(updatedCoachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onDeleteCoachAthlete(
    DeleteCoachAthlete event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      await coachAthleteRepository.deleteCoachAthlete(event.id);
      emit(
        const CoachAthleteState.success(
          'Xóa mối quan hệ huấn luyện viên-vận động viên thành công',
        ),
      );
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllByCoachId(
    GetAllByCoachId event,
    Emitter<CoachAthleteState> emit,
  ) async {
    if (event.page == 1) {
      _allCoachAthletes = []; // Clear old list when loading first page
      emit(const CoachAthleteState.loading());
    } else {
      emit(const CoachAthleteState.loadingMore()); // Loading more state
    }
    try {
      // Fetch CoachAthlete list
      final result = await coachAthleteRepository.getAllByCoachId(
        event.coachId,
        page: event.page,
        limit: event.limit,
      );
      final coachAthletes =
          result['coachAthletes'] as List<CoachAthlete>? ?? [];
      _allCoachAthletes.addAll(coachAthletes); // Append new list
      final hasMore = result['hasMore'] as bool? ?? false;

      // Initialize maps for related data
      final Map<String, Athlete> athleteMap = {};
      final Map<String, User?> userMap = {};
      final Map<String, Sport> sportMap = {};

      // Fetch related data in parallel
      final futures = <Future>[];
      for (var coachAthlete in _allCoachAthletes) {
        final athleteId = coachAthlete.athleteId;

        // Fetch Athlete
        futures.add(
          athleteRepository
              .getAthleteByUserId(athleteId)
              .then(
                (athlete) => athleteMap[athleteId] = athlete,
                onError:
                    // ignore: avoid_print
                    (e) => print('Error loading Athlete for $athleteId: $e'),
              ),
        );

        // Fetch User and Sport
        futures.add(
          userRepository
              .getUserById(athleteId)
              .then(
                (user) async {
                  userMap[athleteId] = user;
                  if (!sportMap.containsKey(user.sportId)) {
                    try {
                      final sport = await sportRepository.getSportById(
                        user.sportId,
                      );
                      sportMap[user.sportId] = sport!;
                    } catch (e) {
                      // Handle error silently
                    }
                  }
                },
                onError: (e) {
                  userMap[athleteId] = null;
                },
              ),
        );
      }

      // Wait for all requests to complete
      await Future.wait(futures);

      emit(
        CoachAthleteState.loadedCoachAthletes(
          coachAthletes: List.from(_allCoachAthletes), // Copy list
          currentPage: event.page,
          limit: event.limit,
          hasMore: hasMore,
          athleteMap: athleteMap,
          userMap: userMap,
          sportMap: sportMap,
        ),
      );
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }
}
