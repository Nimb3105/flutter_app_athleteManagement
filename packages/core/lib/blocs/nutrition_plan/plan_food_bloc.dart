
import 'package:core/models/nutrition_plan/plan_food.dart';
import 'package:core/repositories/nutrition_plan/plan_food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_food_bloc.freezed.dart';

@freezed
sealed class PlanFoodEvent with _$PlanFoodEvent {
  const factory PlanFoodEvent.createPlanFood(PlanFood planFood) = CreatePlanFood;
  const factory PlanFoodEvent.getPlanFoodById(String id) = GetPlanFoodById;
  const factory PlanFoodEvent.getAllPlanFoods({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllPlanFoods;
  const factory PlanFoodEvent.getAllByNutritionPlanId(String nutritionPlanId) = GetAllByNutritionPlanId;
  const factory PlanFoodEvent.updatePlanFood(String id, PlanFood planFood) = UpdatePlanFood;
  const factory PlanFoodEvent.deletePlanFood(String id) = DeletePlanFood;
}

@freezed
sealed class PlanFoodState with _$PlanFoodState {
  const factory PlanFoodState.initial() = PlanFood_Initial;
  const factory PlanFoodState.loading() = PlanFood_Loading;
  const factory PlanFoodState.loadedPlanFood(PlanFood planFood) = LoadedPlanFood;
  const factory PlanFoodState.loadedPlanFoods(
    List<PlanFood> planFoods,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedPlanFoods;
  const factory PlanFoodState.error(String message) = PlanFood_Error;
  const factory PlanFoodState.success(String message) = PlanFood_Success;
}

class PlanFoodBloc extends Bloc<PlanFoodEvent, PlanFoodState> {
  final PlanFoodRepository planFoodRepository;

  PlanFoodBloc({required this.planFoodRepository})
      : super(const PlanFoodState.initial()) {
    on<CreatePlanFood>(_onCreatePlanFood);
    on<GetPlanFoodById>(_onGetPlanFoodById);
    on<GetAllPlanFoods>(_onGetAllPlanFoods);
    on<GetAllByNutritionPlanId>(_onGetAllByNutritionPlanId);
    on<UpdatePlanFood>(_onUpdatePlanFood);
    on<DeletePlanFood>(_onDeletePlanFood);
  }

  Future<void> _onCreatePlanFood(
    CreatePlanFood event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      final createdPlanFood = await planFoodRepository.createPlanFood(event.planFood);
      emit(const PlanFood_Success('Tạo món ăn trong kế hoạch thành công'));
      emit(PlanFoodState.loadedPlanFood(createdPlanFood));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }

  Future<void> _onGetPlanFoodById(
    GetPlanFoodById event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      final planFood = await planFoodRepository.getPlanFoodById(event.id);
      emit(PlanFoodState.loadedPlanFood(planFood));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }

  Future<void> _onGetAllPlanFoods(
    GetAllPlanFoods event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      final planFoods = await planFoodRepository.getAllPlanFoods(
        page: event.page,
        limit: event.limit,
      );
      final hasMore = planFoods.length == event.limit;
      emit(PlanFoodState.loadedPlanFoods(planFoods, event.page, event.limit, hasMore));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }

  Future<void> _onGetAllByNutritionPlanId(
    GetAllByNutritionPlanId event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      final planFoods = await planFoodRepository.getAllByNutritionPlanId(event.nutritionPlanId);
      emit(PlanFoodState.loadedPlanFoods(planFoods, 1, planFoods.length, false));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }

  Future<void> _onUpdatePlanFood(
    UpdatePlanFood event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      final updatedPlanFood = await planFoodRepository.updatePlanFood(
        event.id,
        event.planFood,
      );
      emit(PlanFoodState.loadedPlanFood(updatedPlanFood));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }

  Future<void> _onDeletePlanFood(
    DeletePlanFood event,
    Emitter<PlanFoodState> emit,
  ) async {
    emit(const PlanFoodState.loading());
    try {
      await planFoodRepository.deletePlanFood(event.id);
      emit(const PlanFood_Success('Plan food deleted successfully'));
    } catch (e) {
      emit(PlanFoodState.error(e.toString()));
    }
  }
}