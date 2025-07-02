import 'package:core/models/training_schedule/daily_schedule.dart';
import 'package:core/repositories/training_schedule/daily_schedule_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_schedule_bloc.freezed.dart';

@freezed
sealed class DailyScheduleEvent with _$DailyScheduleEvent {
  const factory DailyScheduleEvent.createDailySchedule(
    DailySchedule dailySchedule,
  ) = CreateDailySchedule;
  const factory DailyScheduleEvent.getDailyScheduleById(String id) =
      GetDailyScheduleById;
  const factory DailyScheduleEvent.getDailyScheduleByUserId(
    String userId,
    String day,
  ) = GetDailyScheduleByUserId;
  const factory DailyScheduleEvent.getAllDailySchedule({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllDailySchedule;
  const factory DailyScheduleEvent.updateDailySchedule(
    String id,
    DailySchedule dailySchedule,
  ) = UpdateDailySchedule;
  const factory DailyScheduleEvent.deleteDailySchedule(String id) =
      DeleteDailySchedule;
}

@freezed
sealed class DailyScheduleState with _$DailyScheduleState {
  const factory DailyScheduleState.initial() = DailySchedule_Initial;
  const factory DailyScheduleState.loading() = DailySchedule_Loading;
  const factory DailyScheduleState.loadedDailySchedule(
    DailySchedule dailySchedule,
  ) = LoadedDailySchedule;
  const factory DailyScheduleState.loadingMore() = DailySchedule_LoadingMore;
  const factory DailyScheduleState.loadedDailySchedules(
    List<DailySchedule> dailySchedules,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedDailySchedules;
  const factory DailyScheduleState.error(String message) = DailySchedule_Error;
  const factory DailyScheduleState.success(String message) =
      DailySchedule_Success;
}

class DailyScheduleBloc extends Bloc<DailyScheduleEvent, DailyScheduleState> {
  final DailyScheduleRepository dailyScheduleRepository;
  // ignore: unused_field
  int _currentPage = 1;
  final List<DailySchedule> _dailySchedules = [];

  DailyScheduleBloc({required this.dailyScheduleRepository})
    : super(const DailyScheduleState.initial()) {
    on<CreateDailySchedule>(_onCreateDailySchedule);
    on<GetDailyScheduleById>(_onGetDailyScheduleById);
    on<GetDailyScheduleByUserId>(_onGetDailyScheduleByUserId);
    on<GetAllDailySchedule>(_onGetAllDailySchedule);
    on<UpdateDailySchedule>(_onUpdateDailySchedule);
    on<DeleteDailySchedule>(_onDeleteDailySchedule);
  }

  Future<void> _onCreateDailySchedule(
    CreateDailySchedule event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      final createDailySchedule = await dailyScheduleRepository
          .createDailySchedule(event.dailySchedule);
      emit(const DailyScheduleState.success('tạo dailyschedule thành công'));
      emit(DailyScheduleState.loadedDailySchedule(createDailySchedule));
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetDailyScheduleById(
    GetDailyScheduleById event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      final dailySchedule = await dailyScheduleRepository.getDailyScheduleById(
        event.id,
      );
      emit(DailyScheduleState.loadedDailySchedule(dailySchedule));
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetDailyScheduleByUserId(
    GetDailyScheduleByUserId event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());

    try {
      final dailySchedule = await dailyScheduleRepository
          .getDailyScheduleByUserId(event.userId, event.day);

      emit(DailyScheduleState.loadedDailySchedule(dailySchedule));
    } on DailyScheduleNotFoundException {
      // ✅ Trường hợp không tìm thấy, gửi danh sách rỗng
      emit(DailyScheduleState.loadedDailySchedule(DailySchedule.empty()));
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetAllDailySchedule(
    GetAllDailySchedule event,
    Emitter<DailyScheduleState> emit,
  ) async {
    try {
      if (event.page == 1) {
        _dailySchedules.clear();
        _currentPage = 1;
        emit(const DailySchedule_Loading());
      } else {
        emit(const DailySchedule_LoadingMore());
      }
      final response = await dailyScheduleRepository.getAllDailySchedule(
        page: event.page,
        limit: event.limit,
      );
      _dailySchedules.addAll(response.items);
      final hasMore = _dailySchedules.length < response.totalCount;

      emit(
        DailyScheduleState.loadedDailySchedules(
          List.from(_dailySchedules),
          event.page,
          event.limit,
          hasMore,
        ),
      );

      if (hasMore) {
        _currentPage = event.page + 1;
      }
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onUpdateDailySchedule(
    UpdateDailySchedule event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      final updateDailySchedule = await dailyScheduleRepository
          .updateDailySchedule(event.id, event.dailySchedule);
      emit(DailyScheduleState.loadedDailySchedule(updateDailySchedule));
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onDeleteDailySchedule(
    DeleteDailySchedule event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      await dailyScheduleRepository.deleteDailySchedule(event.id);
      emit(
        const DailyScheduleState.success('DailyScheduel delete successfully'),
      );
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }
}
