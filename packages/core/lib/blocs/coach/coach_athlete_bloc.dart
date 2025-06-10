import 'package:core/models/coach/coach_athlete.dart';
import 'package:core/repositories/coach/coach_athlete_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_athlete_bloc.freezed.dart';

@freezed
sealed class CoachAthleteEvent with _$CoachAthleteEvent {
  const factory CoachAthleteEvent.createCoachAthlete(CoachAthlete coachAthlete) = CreateCoachAthlete;
  const factory CoachAthleteEvent.getCoachAthleteById(String id) = GetCoachAthleteById;
  const factory CoachAthleteEvent.getAllCoachAthletes({@Default(1) int page, @Default(10) int limit}) = GetAllCoachAthletes;
  const factory CoachAthleteEvent.updateCoachAthlete(String id, CoachAthlete coachAthlete) = UpdateCoachAthlete;
  const factory CoachAthleteEvent.deleteCoachAthlete(String id) = DeleteCoachAthlete;
  const factory CoachAthleteEvent.getAllByAthleteId(String athleteId) = GetAllByAthleteId;
}

@freezed
sealed class CoachAthleteState with _$CoachAthleteState {
  const factory CoachAthleteState.initial() = CoachAthlete_Initial;
  const factory CoachAthleteState.loading() = CoachAthlete_Loading;
  const factory CoachAthleteState.loadedCoachAthlete(CoachAthlete coachAthlete) = LoadedCoachAthlete;
  const factory CoachAthleteState.loadedCoachAthletes(List<CoachAthlete> coachAthletes, int currentPage, int limit, bool hasMore) = LoadedCoachAthletes;
  const factory CoachAthleteState.error(String message) = CoachAthlete_Error;
  const factory CoachAthleteState.success(String message) = CoachAthlete_Success;
}

class CoachAthleteBloc extends Bloc<CoachAthleteEvent, CoachAthleteState> {
  final CoachAthleteRepository coachAthleteRepository;

  CoachAthleteBloc({required this.coachAthleteRepository}) : super(const CoachAthleteState.initial()) {
    on<CreateCoachAthlete>(_onCreateCoachAthlete);
    on<GetCoachAthleteById>(_onGetCoachAthleteById);
    on<GetAllCoachAthletes>(_onGetAllCoachAthletes);
    on<UpdateCoachAthlete>(_onUpdateCoachAthlete);
    on<DeleteCoachAthlete>(_onDeleteCoachAthlete);
    on<GetAllByAthleteId>(_onGetAllByAthleteId);
  }

  Future<void> _onCreateCoachAthlete(CreateCoachAthlete event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      final createdCoachAthlete = await coachAthleteRepository.createCoachAthlete(event.coachAthlete);
      emit(const CoachAthlete_Success('Tạo mối quan hệ huấn luyện viên-vận động viên thành công'));
      emit(CoachAthleteState.loadedCoachAthlete(createdCoachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachAthleteById(GetCoachAthleteById event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      final coachAthlete = await coachAthleteRepository.getCoachAthleteById(event.id);
      emit(CoachAthleteState.loadedCoachAthlete(coachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllCoachAthletes(GetAllCoachAthletes event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      final coachAthletes = await coachAthleteRepository.getAllCoachAthletes(page: event.page, limit: event.limit);
      final hasMore = coachAthletes.length == event.limit;
      emit(CoachAthleteState.loadedCoachAthletes(coachAthletes, event.page, event.limit, hasMore));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onUpdateCoachAthlete(UpdateCoachAthlete event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      final updatedCoachAthlete = await coachAthleteRepository.updateCoachAthlete(event.id, event.coachAthlete);
      emit(CoachAthleteState.loadedCoachAthlete(updatedCoachAthlete));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onDeleteCoachAthlete(DeleteCoachAthlete event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      await coachAthleteRepository.deleteCoachAthlete(event.id);
      emit(const CoachAthleteState.success('Coach-athlete relationship deleted successfully'));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  Future<void> _onGetAllByAthleteId(GetAllByAthleteId event, Emitter<CoachAthleteState> emit) async {
    emit(const CoachAthleteState.loading());
    try {
      final result = await coachAthleteRepository.getAllByAthleteId(event.athleteId);
      final coachAthletes = result['coachAthletes'] as List<CoachAthlete>? ?? [];
      emit(CoachAthleteState.loadedCoachAthletes(coachAthletes,1,coachAthletes.length,false));
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }
}
