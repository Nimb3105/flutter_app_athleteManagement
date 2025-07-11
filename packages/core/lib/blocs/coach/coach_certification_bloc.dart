import 'package:core/models/coach/coach_certification.dart';
import 'package:core/repositories/coach/coach_certification_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_certification_bloc.freezed.dart';

@freezed
sealed class CoachCertificationEvent with _$CoachCertificationEvent {
  const factory CoachCertificationEvent.createCoachCertification(
    CoachCertification certification,
  ) = _CreateCoachCertification;
  const factory CoachCertificationEvent.getCoachCertificationById(String id) =
      _GetCoachCertificationById;
  const factory CoachCertificationEvent.getCoachCertificationByUserId(
    String userId,
  ) = _GetCoachCertificationByUserId;
  const factory CoachCertificationEvent.getAllCoachCertifications({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetAllCoachCertifications;
  const factory CoachCertificationEvent.updateCoachCertification(
    String id,
    CoachCertification certification,
  ) = _UpdateCoachCertification;
  const factory CoachCertificationEvent.deleteCoachCertification(String id) =
      _DeleteCoachCertification;
}

@freezed
sealed class CoachCertificationState with _$CoachCertificationState {
  const factory CoachCertificationState.initial() = CoachCertification_Initial;
  const factory CoachCertificationState.loading() = CoachCertification_Loading;
  const factory CoachCertificationState.loadedCoachCertification(
    CoachCertification certification,
  ) = LoadedCoachCertification;
  const factory CoachCertificationState.loadedCoachCertifications(
    List<CoachCertification> certifications,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedCoachCertifications;
  const factory CoachCertificationState.error(String message) =
      CoachCertification_Error;
  const factory CoachCertificationState.success(String message) =
      CoachCertification_Success;
}

class CoachCertificationBloc
    extends Bloc<CoachCertificationEvent, CoachCertificationState> {
  final CoachCertificationRepository coachCertificationRepository;

  CoachCertificationBloc({required this.coachCertificationRepository})
    : super(const CoachCertificationState.initial()) {
    on<_CreateCoachCertification>(_onCreateCoachCertification);
    on<_GetCoachCertificationById>(_onGetCoachCertificationById);
    on<_GetCoachCertificationByUserId>(_onGetCoachCertificationByUserId);
    on<_GetAllCoachCertifications>(_onGetAllCoachCertifications);
    on<_UpdateCoachCertification>(_onUpdateCoachCertification);
    on<_DeleteCoachCertification>(_onDeleteCoachCertification);
  }

  Future<void> _onCreateCoachCertification(
    _CreateCoachCertification event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      final createdCertification = await coachCertificationRepository
          .createCoachCertification(event.certification);
      emit(
        CoachCertificationState.loadedCoachCertification(createdCertification),
      );
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachCertificationById(
    _GetCoachCertificationById event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      final certification = await coachCertificationRepository
          .getCoachCertificationById(event.id);
      emit(CoachCertificationState.loadedCoachCertification(certification));
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }

  Future<void> _onGetCoachCertificationByUserId(
    _GetCoachCertificationByUserId event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      // Hàm này giờ trả về một List<CoachCertification>
      final certifications = await coachCertificationRepository
          .getCoachCertificationByUserId(event.userId);

      // Phát ra state chứa danh sách, kể cả khi nó rỗng
      emit(
        CoachCertificationState.loadedCoachCertifications(
          certifications,
          1, // page
          certifications.length, // limit
          false, // hasMore
        ),
      );
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }

  Future<void> _onGetAllCoachCertifications(
    _GetAllCoachCertifications event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      final result = await coachCertificationRepository
          .getAllCoachCertifications(page: event.page, limit: event.limit);
      emit(
        CoachCertificationState.loadedCoachCertifications(
          result['certifications'] as List<CoachCertification>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }

  Future<void> _onUpdateCoachCertification(
    _UpdateCoachCertification event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      final updatedCertification = await coachCertificationRepository
          .updateCoachCertification(event.id, event.certification);
      emit(
        CoachCertificationState.loadedCoachCertification(updatedCertification),
      );
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }

  Future<void> _onDeleteCoachCertification(
    _DeleteCoachCertification event,
    Emitter<CoachCertificationState> emit,
  ) async {
    emit(const CoachCertificationState.loading());
    try {
      await coachCertificationRepository.deleteCoachCertification(event.id);
      emit(
        const CoachCertificationState.success(
          'Coach certification deleted successfully',
        ),
      );
    } catch (e) {
      emit(CoachCertificationState.error(e.toString()));
    }
  }
}
