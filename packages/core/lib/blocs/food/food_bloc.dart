import 'package:core/models/food/food.dart';
import 'package:core/repositories/food/food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_bloc.freezed.dart';

@freezed
sealed class FoodEvent with _$FoodEvent {
  const factory FoodEvent.createFood(Food food) = CreateFood;
  const factory FoodEvent.getFoodById(String id) = GetFoodById;
  const factory FoodEvent.getAllFoods({@Default(1) int page ,@Default(10) int limit }) =
      GetAllFoods;
  const factory FoodEvent.updateFood(String id, Food food) = UpdateFood;
  const factory FoodEvent.deleteFood(String id) = DeleteFood;
}

@freezed
sealed class FoodState with _$FoodState {
  const factory FoodState.initial() = Food_Initial;
  const factory FoodState.loading() = Food_Loading;
  const factory FoodState.loadedFood(Food food) = LoadedFood;
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

  FoodBloc({required this.foodRepository}) : super(const FoodState.initial()) {
    on<CreateFood>(_onCreateFood);
    on<GetFoodById>(_onGetFoodById);
    on<GetAllFoods>(_onGetAllFoods);
    on<UpdateFood>(_onUpdateFood);
    on<DeleteFood>(_onDeleteFood);
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
    emit(const FoodState.loading());
    try {
      final foods = await foodRepository.getAllFoods(
        page: event.page,
        limit: event.limit,
      );
      // Giả sử API trả về thông tin tổng số món ăn hoặc tổng số trang
      // Ở đây giả định `hasMore` dựa trên số lượng món ăn trả về
      final hasMore = foods.length == event.limit;
      emit(
        FoodState.loadedFoods(
          foods,
           event.page,
           event.limit,
           hasMore,
        ),
      );
    } catch (e) {
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
