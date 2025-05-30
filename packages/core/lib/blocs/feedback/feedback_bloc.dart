import 'package:core/models/feedback/feedback.dart';
import 'package:core/repositories/feedback/feedback_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_bloc.freezed.dart';

@freezed
sealed class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.createFeedback(Feedback feedback) = _CreateFeedback;
  const factory FeedbackEvent.getFeedbackById(String id) = _GetFeedbackById;
  const factory FeedbackEvent.getFeedbackByUserId(String userId) = _GetFeedbackByUserId;
  const factory FeedbackEvent.getAllFeedbacks({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllFeedbacks;
  const factory FeedbackEvent.updateFeedback(String id, Feedback feedback) = _UpdateFeedback;
  const factory FeedbackEvent.deleteFeedback(String id) = _DeleteFeedback;
}

@freezed
sealed class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = Feedback_Initial;
  const factory FeedbackState.loading() = Feedback_Loading;
  const factory FeedbackState.loadedFeedback(Feedback feedback) = LoadedFeedback;
  const factory FeedbackState.loadedFeedbacks(
    List<Feedback> feedbacks,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedFeedbacks;
  const factory FeedbackState.error(String message) = Feedback_Error;
  const factory FeedbackState.success(String message) = Feedback_Success;
}

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final FeedbackRepository feedbackRepository;

  FeedbackBloc({required this.feedbackRepository})
      : super(const FeedbackState.initial()) {
    on<_CreateFeedback>(_onCreateFeedback);
    on<_GetFeedbackById>(_onGetFeedbackById);
    on<_GetFeedbackByUserId>(_onGetFeedbackByUserId);
    on<_GetAllFeedbacks>(_onGetAllFeedbacks);
    on<_UpdateFeedback>(_onUpdateFeedback);
    on<_DeleteFeedback>(_onDeleteFeedback);
  }

  Future<void> _onCreateFeedback(
    _CreateFeedback event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      final createdFeedback = await feedbackRepository.createFeedback(event.feedback);
      emit(FeedbackState.loadedFeedback(createdFeedback));
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }

  Future<void> _onGetFeedbackById(
    _GetFeedbackById event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      final feedback = await feedbackRepository.getFeedbackById(event.id);
      emit(FeedbackState.loadedFeedback(feedback));
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }

  Future<void> _onGetFeedbackByUserId(
    _GetFeedbackByUserId event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      final feedback = await feedbackRepository.getFeedbackByUserId(event.userId);
      emit(FeedbackState.loadedFeedback(feedback));
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }

  Future<void> _onGetAllFeedbacks(
    _GetAllFeedbacks event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      final result = await feedbackRepository.getAllFeedbacks(
        page: event.page,
        limit: event.limit,
      );
      emit(
        FeedbackState.loadedFeedbacks(
          result['feedbacks'] as List<Feedback>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }

  Future<void> _onUpdateFeedback(
    _UpdateFeedback event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      final updatedFeedback = await feedbackRepository.updateFeedback(
        event.id,
        event.feedback,
      );
      emit(FeedbackState.loadedFeedback(updatedFeedback));
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }

  Future<void> _onDeleteFeedback(
    _DeleteFeedback event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const FeedbackState.loading());
    try {
      await feedbackRepository.deleteFeedback(event.id);
      emit(const FeedbackState.success('Feedback deleted successfully'));
    } catch (e) {
      emit(FeedbackState.error(e.toString()));
    }
  }
}