import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_athlete_bloc.freezed.dart';

@freezed
sealed class CoachAthleteEvent with _$CoachAthleteEvent {
  const factory CoachAthleteEvent.getAllByCoachId(String coachId) =
      GetAllByCoachId;
  const factory CoachAthleteEvent.createCoachAthlete(
    CoachAthlete coachAthlete,
  ) = CreateCoachAthlete;
  const factory CoachAthleteEvent.getCoachAthleteById(String id) =
      GetCoachAthleteById;
  const factory CoachAthleteEvent.getByAthleteId(String athleteId) =
      GetByAthleteId;
  const factory CoachAthleteEvent.updateCoachAthlete(
    String id,
    CoachAthlete coachAthlete,
  ) = UpdateCoachAthlete;
  const factory CoachAthleteEvent.deleteCoachAthlete(String id) =
      DeleteCoachAthlete;
  const factory CoachAthleteEvent.deleteAllByCoachId(String coachId) =
      DeleteAllByCoachId;
}

// ✅ Tối ưu State: Loại bỏ các trường liên quan đến phân trang
@freezed
sealed class CoachAthleteState with _$CoachAthleteState {
  const factory CoachAthleteState.initial() = CoachAthlete_Initial;
  const factory CoachAthleteState.loading() = CoachAthlete_Loading;
  const factory CoachAthleteState.loadedCoachAthletes({
    required List<CoachAthlete> coachAthletes,
    required Map<String, Athlete> athleteMap,
    required Map<String, User?> userMap,
    required Map<String, Sport> sportMap,
  }) = LoadedCoachAthletes;
  const factory CoachAthleteState.error(String message) = CoachAthlete_Error;
  const factory CoachAthleteState.success(String message) =
      CoachAthlete_Success;
  const factory CoachAthleteState.loadedCoachAthlete(
    CoachAthlete? coachAthlete,
  ) = LoadedCoachAthlete;
}

class CoachAthleteBloc extends Bloc<CoachAthleteEvent, CoachAthleteState> {
  final CoachAthleteRepository coachAthleteRepository;
  final AthleteRepository athleteRepository;
  final UserRepository userRepository;
  final SportRepository sportRepository;

  CoachAthleteBloc({
    required this.coachAthleteRepository,
    required this.athleteRepository,
    required this.userRepository,
    required this.sportRepository,
  }) : super(const CoachAthleteState.initial()) {
    on<GetAllByCoachId>(_onGetAllByCoachId);
    on<CreateCoachAthlete>(_onCreateCoachAthlete);
    on<GetCoachAthleteById>(_onGetCoachAthleteById);
    on<GetByAthleteId>(_onGetByAthleteId);
    on<UpdateCoachAthlete>(_onUpdateCoachAthlete);
    on<DeleteCoachAthlete>(_onDeleteCoachAthlete);
    on<DeleteAllByCoachId>(_onDeleteAllByCoachId);
  }

  Future<void> _onDeleteAllByCoachId(
    DeleteAllByCoachId event,
    Emitter<CoachAthleteState> emit,
  ) async {
    // Không emit loading để tránh làm gián đoạn UI
    try {
      await coachAthleteRepository.deleteAllByCoachId(event.coachId);
      // Có thể phát ra một trạng thái thành công nếu cần
      emit(
        const CoachAthleteState.success(
          'Đã xóa tất cả các vận động viên do thay đổi môn thể thao.',
        ),
      );
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  // ✅ Tối ưu: Toàn bộ logic được viết lại để tải dữ liệu một lần, song song và hiệu quả
  Future<void> _onGetAllByCoachId(
    GetAllByCoachId event,
    Emitter<CoachAthleteState> emit,
  ) async {
    emit(const CoachAthleteState.loading());
    try {
      // 1. Lấy toàn bộ danh sách quan hệ từ repository
      final coachAthletes = await coachAthleteRepository.getAllByCoachId(
        event.coachId,
      );

      if (coachAthletes.isEmpty) {
        emit(
          const LoadedCoachAthletes(
            coachAthletes: [],
            athleteMap: {},
            userMap: {},
            sportMap: {},
          ),
        );
        return;
      }

      // 2. Chuẩn bị để lấy dữ liệu liên quan song song
      final athleteMap = <String, Athlete>{};
      final userMap = <String, User?>{};
      final sportMap = <String, Sport>{};
      final sportIdsToFetch = <String>{};

      // Tạo một danh sách các Future để thực hiện đồng thời
      final futures =
          coachAthletes.map((ca) async {
            try {
              final athleteId = ca.athleteId;
              // Gọi API lấy Athlete và User cùng lúc để tăng tốc độ
              final results = await Future.wait([
                athleteRepository.getAthleteByUserId(athleteId),
                userRepository.getUserById(athleteId),
              ]);

              final athlete = results[0] as Athlete;
              final user = results[1] as User?;

              athleteMap[athleteId] = athlete;
              userMap[athleteId] = user;

              if (user != null) {
                sportIdsToFetch.add(user.sportId);
              }
            } catch (e) {
              // Ghi lại lỗi nếu cần, nhưng không làm dừng cả quá trình
            }
          }).toList();

      // Chờ tất cả các Future lấy thông tin Athlete và User hoàn tất
      await Future.wait(futures);

      // Sau khi có thông tin User, lấy thông tin các môn thể thao cần thiết
      final sportFutures = sportIdsToFetch.map((id) async {
        if (!sportMap.containsKey(id)) {
          // Chỉ fetch nếu chưa có
          final sport = await sportRepository.getSportById(id);
          if (sport != null) {
            sportMap[id] = sport;
          }
        }
      });
      await Future.wait(sportFutures);

      // 3. Phát ra trạng thái cuối cùng với toàn bộ dữ liệu
      emit(
        LoadedCoachAthletes(
          coachAthletes: coachAthletes,
          athleteMap: athleteMap,
          userMap: userMap,
          sportMap: sportMap,
        ),
      );
    } catch (e) {
      emit(CoachAthleteState.error(e.toString()));
    }
  }

  // --- Các hàm xử lý Event khác giữ nguyên ---
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
}
