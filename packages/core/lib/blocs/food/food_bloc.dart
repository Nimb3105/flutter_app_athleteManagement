import 'package:core/models/food/food.dart';
import 'package:core/repositories/food/food_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_bloc.freezed.dart';

@freezed
sealed class FoodEvent with _$FoodEvent {
  const factory FoodEvent.createFood(Food food) = CreateFood;
  const factory FoodEvent.getFoodById(String id) = GetFoodById;
  const factory FoodEvent.getAllFoods({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllFoods;
  const factory FoodEvent.updateFood(String id, Food food) = UpdateFood;
  const factory FoodEvent.deleteFood(String id) = DeleteFood;
  const factory FoodEvent.getFoodsByFilter({
    String? foodType,
    int? caloriesMin,
    int? caloriesMax,
    int? proteinMin,
    int? proteinMax,
    int? carbsMin,
    int? carbsMax,
    int? fatMin,
    int? fatMax,
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetFoodsByFilter;
}

@freezed
sealed class FoodState with _$FoodState {
  const factory FoodState.initial() = Food_Initial;
  const factory FoodState.loading() = Food_Loading;
  const factory FoodState.loadedFood(Food food) = LoadedFood;
  const factory FoodState.loadingMore() = Food_LoadingMore;
  const factory FoodState.loadedFoods(
    List<Food> foods,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedFoods;
  const factory FoodState.error(String message) = Food_Error;
  const factory FoodState.success(String message) = Food_Success;
}

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FoodRepository foodRepository;
  // ignore: unused_field
  int _currentPage = 1;
  final List<Food> _foods = [];
  String? _currentFilterKey;

  FoodBloc({required this.foodRepository}) : super(const FoodState.initial()) {
    on<CreateFood>(_onCreateFood);
    on<GetFoodById>(_onGetFoodById);
    on<GetAllFoods>(_onGetAllFoods);
    on<UpdateFood>(_onUpdateFood);
    on<DeleteFood>(_onDeleteFood);
    on<GetFoodsByFilter>(_onGetFoodsByFilter);
  }

  Future<void> _onGetFoodsByFilter(
    GetFoodsByFilter event,
    Emitter<FoodState> emit,
  ) async {
    try {
      // Tạo key duy nhất đại diện cho toàn bộ bộ lọc (để reset khi thay đổi)
      final filterKey = [
        event.foodType ?? '',
        event.caloriesMin,
        event.caloriesMax,
        event.proteinMin,
        event.proteinMax,
        event.carbsMin,
        event.carbsMax,
        event.fatMin,
        event.fatMax,
      ].join('-');

      // Nếu lọc mới hoặc page đầu tiên → clear
      if (event.page == 1 || _currentFilterKey != filterKey) {
        _foods.clear();
        _currentPage = 1;
        _currentFilterKey = filterKey;
        emit(const Food_Loading());
      } else {
        emit(const Food_LoadingMore());
      }

      // Gọi API gộp
      final response = await foodRepository.getFoodsByFilter(
        foodType: event.foodType,
        caloriesMin: event.caloriesMin,
        caloriesMax: event.caloriesMax,
        proteinMin: event.proteinMin,
        proteinMax: event.proteinMax,
        carbsMin: event.carbsMin,
        carbsMax: event.carbsMax,
        fatMin: event.fatMin,
        fatMax: event.fatMax,
        page: event.page,
        limit: event.limit,
      );

      _foods.addAll(response.items);
      final hasMore = _foods.length < response.totalCount;

      emit(LoadedFoods(List.from(_foods), event.page, event.limit, hasMore));

      if (hasMore) _currentPage = event.page + 1;
    } catch (e) {
      emit(FoodState.error(e.toString()));
    }
  }

  Future<void> _onCreateFood(CreateFood event, Emitter<FoodState> emit) async {
    emit(const FoodState.loading());
    try {
      final createdFood = await foodRepository.createFood(event.food);
      emit(const Food_Success('Tạo món ăn thành công'));
      emit(FoodState.loadedFood(createdFood));
    } catch (e) {
      emit(FoodState.error(e.toString()));
    }
  }

  Future<void> _onGetFoodById(
    GetFoodById event,
    Emitter<FoodState> emit,
  ) async {
    emit(const FoodState.loading());
    try {
      final food = await foodRepository.getFoodById(event.id);
      emit(FoodState.loadedFood(food));
    } catch (e) {
      emit(FoodState.error(e.toString()));
    }
  }

  Future<void> _onGetAllFoods(
    GetAllFoods event,
    Emitter<FoodState> emit,
  ) async {
    try {
      if (event.page == 1 || _currentFilterKey != null) {
        _foods.clear();
        _currentPage = 1;
        _currentFilterKey = null;
        emit(const Food_Loading());
      } else {
        emit(const Food_LoadingMore());
      }
      final response = await foodRepository.getAllFoods(
        page: event.page,
        limit: event.limit,
      );
      _foods.addAll(response.items);
      final hasMore = _foods.length < response.totalCount;
      emit(
        FoodState.loadedFoods(
          List.from(_foods),
          event.page,
          event.limit,
          hasMore,
        ),
      );

      if (hasMore) {
        _currentPage = event.page + 1;
      }
    } catch (e) {
      debugPrint('Error in GetAllFoods: $e');
      emit(FoodState.error(e.toString()));
    }
  }

  Future<void> _onUpdateFood(UpdateFood event, Emitter<FoodState> emit) async {
    emit(const FoodState.loading());
    try {
      final updatedFood = await foodRepository.updateFood(event.id, event.food);
      emit(FoodState.loadedFood(updatedFood));
    } catch (e) {
      emit(FoodState.error(e.toString()));
    }
  }

  Future<void> _onDeleteFood(DeleteFood event, Emitter<FoodState> emit) async {
    emit(const FoodState.loading());
    try {
      await foodRepository.deleteFood(event.id);
      emit(const FoodState.success('Food deleted successfully'));
    } catch (e) {
      emit(FoodState.error(e.toString()));
    }
  }
}
