// lib/blocs/suggestion/suggestion_bloc.dart
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_bloc.freezed.dart';

@freezed
sealed class SuggestionEvent with _$SuggestionEvent {
  const factory SuggestionEvent.fetchSuggestions({
    required String goal,
    required String muscleGroup,
    required String equipment,
    required int numberOfExercises,
    required String sportName,
  }) = FetchSuggestions;
}

@freezed
sealed class SuggestionState with _$SuggestionState {
  const factory SuggestionState.initial() = SuggestionInitial;
  const factory SuggestionState.loading() = SuggestionLoading;
  const factory SuggestionState.loaded(List<Map<String, dynamic>> suggestions) =
      SuggestionLoaded;
  const factory SuggestionState.error(String message) = SuggestionError;
}

class SuggestionBloc extends Bloc<SuggestionEvent, SuggestionState> {
  final SuggestionRepository suggestionRepository;
  final SportRepository sportRepository;

  SuggestionBloc({
    required this.suggestionRepository,
    required this.sportRepository,
  }) : super(const SuggestionState.initial()) {
    on<FetchSuggestions>(_onFetchSuggestions);
  }

  Future<void> _onFetchSuggestions(
    FetchSuggestions event,
    Emitter<SuggestionState> emit,
  ) async {
    emit(const SuggestionState.loading());
    try {
      final sport = await sportRepository.getSportById(event.sportName);
      final suggestions = await suggestionRepository.getExerciseSuggestions(
        goal: event.goal,
        muscleGroup: event.muscleGroup,
        equipment: event.equipment,
        numberOfExercises: event.numberOfExercises,
        sportName: sport!.name,
      );
      emit(SuggestionState.loaded(suggestions));
    } catch (e) {
      emit(SuggestionState.error(e.toString()));
    }
  }
}