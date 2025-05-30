import 'package:core/models/nutrition_plan/nutrition_plan.dart';
import 'package:core/repositories/nutrition_plan/nutrition_plan_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_plan_bloc.freezed.dart';

@freezed
sealed class NutritionPlanEvent with _$NutritionPlanEvent {
  const factory NutritionPlanEvent.createNutritionPlan(
    NutritionPlan nutritionPlan,
  ) = CreateNutritionPlan;
  const factory NutritionPlanEvent.getNutritionPlanById(String id) =
      GetNutritionPlanById;
  const factory NutritionPlanEvent.getNutritionPlansByUserId(String userId) =
      GetNutritionPlansByUserId;
  const factory NutritionPlanEvent.getAllNutritionPlans({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllNutritionPlans;
  const factory NutritionPlanEvent.updateNutritionPlan(
    String id,
    NutritionPlan nutritionPlan,
  ) = UpdateNutritionPlan;
  const factory NutritionPlanEvent.deleteNutritionPlan(String id) =
      DeleteNutritionPlan;
}

@freezed
sealed class NutritionPlanState with _$NutritionPlanState {
  const factory NutritionPlanState.initial() = NutritionPlan_Initial;
  const factory NutritionPlanState.loading() = NutritionPlan_Loading;
  const factory NutritionPlanState.loadedNutritionPlan(
    NutritionPlan nutritionPlan,
  ) = LoadedNutritionPlan;
  const factory NutritionPlanState.loadedNutritionPlans(
    List<NutritionPlan> nutritionPlans,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedNutritionPlans;
  const factory NutritionPlanState.error(String message) = NutritionPlan_Error;
  const factory NutritionPlanState.success(String message) =
      NutritionPlan_Success;
}

class NutritionPlanBloc extends Bloc<NutritionPlanEvent, NutritionPlanState> {
  final NutritionPlanRepository nutritionPlanRepository;

  NutritionPlanBloc({required this.nutritionPlanRepository})
    : super(const NutritionPlanState.initial()) {
    on<CreateNutritionPlan>(_onCreateNutritionPlan);
    on<GetNutritionPlanById>(_onGetNutritionPlanById);
    on<GetNutritionPlansByUserId>(_onGetNutritionPlansByUserId);
    on<GetAllNutritionPlans>(_onGetAllNutritionPlans);
    on<UpdateNutritionPlan>(_onUpdateNutritionPlan);
    on<DeleteNutritionPlan>(_onDeleteNutritionPlan);
  }

  Future<void> _onCreateNutritionPlan(
    CreateNutritionPlan event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      final createdNutritionPlan = await nutritionPlanRepository
          .createNutritionPlan(event.nutritionPlan);
      emit(const NutritionPlan_Success('Tạo kế hoạch dinh dưỡng thành công'));
      emit(NutritionPlanState.loadedNutritionPlan(createdNutritionPlan));
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }

  Future<void> _onGetNutritionPlanById(
    GetNutritionPlanById event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      final nutritionPlan = await nutritionPlanRepository.getNutritionPlanById(
        event.id,
      );
      emit(NutritionPlanState.loadedNutritionPlan(nutritionPlan));
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }

  Future<void> _onGetNutritionPlansByUserId(
    GetNutritionPlansByUserId event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      final nutritionPlans = await nutritionPlanRepository
          .getNutritionPlansByUserId(event.userId);
      emit(
        NutritionPlanState.loadedNutritionPlans(
          nutritionPlans,
          1,
          nutritionPlans.length,
          false,
        ),
      );
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }

  Future<void> _onGetAllNutritionPlans(
    GetAllNutritionPlans event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      final nutritionPlans = await nutritionPlanRepository.getAllNutritionPlans(
        page: event.page,
        limit: event.limit,
      );
      final hasMore = nutritionPlans.length == event.limit;
      emit(
        NutritionPlanState.loadedNutritionPlans(
          nutritionPlans,
          event.page,
          event.limit,
          hasMore,
        ),
      );
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }

  Future<void> _onUpdateNutritionPlan(
    UpdateNutritionPlan event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      final updatedNutritionPlan = await nutritionPlanRepository
          .updateNutritionPlan(event.id, event.nutritionPlan);
      emit(NutritionPlanState.loadedNutritionPlan(updatedNutritionPlan));
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }

  Future<void> _onDeleteNutritionPlan(
    DeleteNutritionPlan event,
    Emitter<NutritionPlanState> emit,
  ) async {
    emit(const NutritionPlanState.loading());
    try {
      await nutritionPlanRepository.deleteNutritionPlan(event.id);
      emit(const NutritionPlan_Success('Nutrition plan deleted successfully'));
    } catch (e) {
      emit(NutritionPlanState.error(e.toString()));
    }
  }
}
