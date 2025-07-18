import 'package:core/models/training_schedule/daily_schedule.dart';
import 'package:core/models/user/user.dart';
import 'package:core/repositories/training_schedule/daily_schedule_repository.dart';
import 'package:core/repositories/user/user_repository.dart';
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
  const factory DailyScheduleEvent.getAllDailySchedulesByCreatorId(
    String creatorId,
  ) = GetAllDailySchedulesByCreatorId;
  const factory DailyScheduleEvent.getAllDailySchedulesByUserId(String userId) =
      GetAllDailySchedulesByUserId; // Thêm event này
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
  const factory DailyScheduleState.loadedAllDailySchedulesByCreatorId(
    List<DailySchedule> schedules,
    Map<String, User> userMap,
  ) = LoadedAllDailySchedulesByCreatorId;
  const factory DailyScheduleState.error(String message) = DailySchedule_Error;
  const factory DailyScheduleState.success(String message) =
      DailySchedule_Success;
  const factory DailyScheduleState.loadedAllDailySchedulesByUserId(
    List<DailySchedule> schedules,
    Map<String, User> userMap, // Để lấy tên người tạo (HLV)
  ) = LoadedAllDailySchedulesByUserId; // Thêm state này
}

class DailyScheduleBloc extends Bloc<DailyScheduleEvent, DailyScheduleState> {
  final DailyScheduleRepository dailyScheduleRepository;
  final UserRepository userRepository;
  // ignore: unused_field
  int _currentPage = 1;
  final List<DailySchedule> _dailySchedules = [];

  DailyScheduleBloc({
    required this.dailyScheduleRepository,
    required this.userRepository,
  }) : super(const DailyScheduleState.initial()) {
    on<CreateDailySchedule>(_onCreateDailySchedule);
    on<GetDailyScheduleById>(_onGetDailyScheduleById);
    on<GetDailyScheduleByUserId>(_onGetDailyScheduleByUserId);
    on<GetAllDailySchedule>(_onGetAllDailySchedule);
    on<UpdateDailySchedule>(_onUpdateDailySchedule);
    on<DeleteDailySchedule>(_onDeleteDailySchedule);
    on<GetAllDailySchedulesByCreatorId>(_onGetAllDailySchedulesByCreatorId);
    on<GetAllDailySchedulesByUserId>(_onGetAllDailySchedulesByUserId);
  }

  Future<void> _onGetAllDailySchedulesByUserId(
    GetAllDailySchedulesByUserId event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      final schedules = await dailyScheduleRepository
          .getAllDailySchedulesByUserId(event.userId);
      if (schedules.isEmpty) {
        emit(const LoadedAllDailySchedulesByUserId([], {}));
        return;
      }
      final userMap = <String, User>{};
      for (final schedule in schedules) {
        if (!userMap.containsKey(schedule.createdBy)) {
          final user = await userRepository.getUserById(schedule.createdBy);
          userMap[schedule.createdBy] = user;
        }
      }
      emit(LoadedAllDailySchedulesByUserId(schedules, userMap));
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
  }

  Future<void> _onGetAllDailySchedulesByCreatorId(
    GetAllDailySchedulesByCreatorId event,
    Emitter<DailyScheduleState> emit,
  ) async {
    emit(const DailyScheduleState.loading());
    try {
      final schedules = await dailyScheduleRepository
          .getAllDailySchedulesByCreatorId(event.creatorId);

      // Nếu không có lịch trình nào, trả về danh sách rỗng
      if (schedules.isEmpty) {
        emit(
          const DailyScheduleState.loadedAllDailySchedulesByCreatorId([], {}),
        );
        return;
      }

      // Lấy thông tin người dùng (VĐV) cho mỗi lịch trình
      final userMap = <String, User>{};
      for (final schedule in schedules) {
        // Chỉ gọi API nếu chưa có thông tin của VĐV này
        if (!userMap.containsKey(schedule.userId)) {
          try {
            final user = await userRepository.getUserById(schedule.userId);
            userMap[schedule.userId] = user;
          } catch (e) {
            // Bỏ qua lỗi nếu không tìm thấy VĐV để không làm hỏng toàn bộ quá trình
          }
        }
      }

      emit(
        DailyScheduleState.loadedAllDailySchedulesByCreatorId(
          schedules,
          userMap,
        ),
      );
    } catch (e) {
      emit(DailyScheduleState.error(e.toString()));
    }
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
      emit(DailyScheduleState.success("DailyScheduel update successfully"));
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
