// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodEvent()';
}


}

/// @nodoc
class $FoodEventCopyWith<$Res>  {
$FoodEventCopyWith(FoodEvent _, $Res Function(FoodEvent) __);
}


/// @nodoc


class CreateFood implements FoodEvent {
  const CreateFood(this.food);
  

 final  Food food;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFoodCopyWith<CreateFood> get copyWith => _$CreateFoodCopyWithImpl<CreateFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFood&&(identical(other.food, food) || other.food == food));
}


@override
int get hashCode => Object.hash(runtimeType,food);

@override
String toString() {
  return 'FoodEvent.createFood(food: $food)';
}


}

/// @nodoc
abstract mixin class $CreateFoodCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $CreateFoodCopyWith(CreateFood value, $Res Function(CreateFood) _then) = _$CreateFoodCopyWithImpl;
@useResult
$Res call({
 Food food
});


$FoodCopyWith<$Res> get food;

}
/// @nodoc
class _$CreateFoodCopyWithImpl<$Res>
    implements $CreateFoodCopyWith<$Res> {
  _$CreateFoodCopyWithImpl(this._self, this._then);

  final CreateFood _self;
  final $Res Function(CreateFood) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? food = null,}) {
  return _then(CreateFood(
null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as Food,
  ));
}

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodCopyWith<$Res> get food {
  
  return $FoodCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}

/// @nodoc


class GetFoodById implements FoodEvent {
  const GetFoodById(this.id);
  

 final  String id;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFoodByIdCopyWith<GetFoodById> get copyWith => _$GetFoodByIdCopyWithImpl<GetFoodById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFoodById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FoodEvent.getFoodById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetFoodByIdCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $GetFoodByIdCopyWith(GetFoodById value, $Res Function(GetFoodById) _then) = _$GetFoodByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetFoodByIdCopyWithImpl<$Res>
    implements $GetFoodByIdCopyWith<$Res> {
  _$GetFoodByIdCopyWithImpl(this._self, this._then);

  final GetFoodById _self;
  final $Res Function(GetFoodById) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetFoodById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllFoods implements FoodEvent {
  const GetAllFoods({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllFoodsCopyWith<GetAllFoods> get copyWith => _$GetAllFoodsCopyWithImpl<GetAllFoods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllFoods&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'FoodEvent.getAllFoods(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllFoodsCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $GetAllFoodsCopyWith(GetAllFoods value, $Res Function(GetAllFoods) _then) = _$GetAllFoodsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllFoodsCopyWithImpl<$Res>
    implements $GetAllFoodsCopyWith<$Res> {
  _$GetAllFoodsCopyWithImpl(this._self, this._then);

  final GetAllFoods _self;
  final $Res Function(GetAllFoods) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllFoods(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateFood implements FoodEvent {
  const UpdateFood(this.id, this.food);
  

 final  String id;
 final  Food food;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFoodCopyWith<UpdateFood> get copyWith => _$UpdateFoodCopyWithImpl<UpdateFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFood&&(identical(other.id, id) || other.id == id)&&(identical(other.food, food) || other.food == food));
}


@override
int get hashCode => Object.hash(runtimeType,id,food);

@override
String toString() {
  return 'FoodEvent.updateFood(id: $id, food: $food)';
}


}

/// @nodoc
abstract mixin class $UpdateFoodCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $UpdateFoodCopyWith(UpdateFood value, $Res Function(UpdateFood) _then) = _$UpdateFoodCopyWithImpl;
@useResult
$Res call({
 String id, Food food
});


$FoodCopyWith<$Res> get food;

}
/// @nodoc
class _$UpdateFoodCopyWithImpl<$Res>
    implements $UpdateFoodCopyWith<$Res> {
  _$UpdateFoodCopyWithImpl(this._self, this._then);

  final UpdateFood _self;
  final $Res Function(UpdateFood) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? food = null,}) {
  return _then(UpdateFood(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as Food,
  ));
}

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodCopyWith<$Res> get food {
  
  return $FoodCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}

/// @nodoc


class DeleteFood implements FoodEvent {
  const DeleteFood(this.id);
  

 final  String id;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteFoodCopyWith<DeleteFood> get copyWith => _$DeleteFoodCopyWithImpl<DeleteFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteFood&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FoodEvent.deleteFood(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteFoodCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $DeleteFoodCopyWith(DeleteFood value, $Res Function(DeleteFood) _then) = _$DeleteFoodCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteFoodCopyWithImpl<$Res>
    implements $DeleteFoodCopyWith<$Res> {
  _$DeleteFoodCopyWithImpl(this._self, this._then);

  final DeleteFood _self;
  final $Res Function(DeleteFood) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteFood(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetFoodsByFilter implements FoodEvent {
  const GetFoodsByFilter({this.foodType, this.caloriesMin, this.caloriesMax, this.proteinMin, this.proteinMax, this.carbsMin, this.carbsMax, this.fatMin, this.fatMax, this.page = 1, this.limit = 10});
  

 final  String? foodType;
 final  int? caloriesMin;
 final  int? caloriesMax;
 final  int? proteinMin;
 final  int? proteinMax;
 final  int? carbsMin;
 final  int? carbsMax;
 final  int? fatMin;
 final  int? fatMax;
@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFoodsByFilterCopyWith<GetFoodsByFilter> get copyWith => _$GetFoodsByFilterCopyWithImpl<GetFoodsByFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFoodsByFilter&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.caloriesMin, caloriesMin) || other.caloriesMin == caloriesMin)&&(identical(other.caloriesMax, caloriesMax) || other.caloriesMax == caloriesMax)&&(identical(other.proteinMin, proteinMin) || other.proteinMin == proteinMin)&&(identical(other.proteinMax, proteinMax) || other.proteinMax == proteinMax)&&(identical(other.carbsMin, carbsMin) || other.carbsMin == carbsMin)&&(identical(other.carbsMax, carbsMax) || other.carbsMax == carbsMax)&&(identical(other.fatMin, fatMin) || other.fatMin == fatMin)&&(identical(other.fatMax, fatMax) || other.fatMax == fatMax)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,foodType,caloriesMin,caloriesMax,proteinMin,proteinMax,carbsMin,carbsMax,fatMin,fatMax,page,limit);

@override
String toString() {
  return 'FoodEvent.getFoodsByFilter(foodType: $foodType, caloriesMin: $caloriesMin, caloriesMax: $caloriesMax, proteinMin: $proteinMin, proteinMax: $proteinMax, carbsMin: $carbsMin, carbsMax: $carbsMax, fatMin: $fatMin, fatMax: $fatMax, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetFoodsByFilterCopyWith<$Res> implements $FoodEventCopyWith<$Res> {
  factory $GetFoodsByFilterCopyWith(GetFoodsByFilter value, $Res Function(GetFoodsByFilter) _then) = _$GetFoodsByFilterCopyWithImpl;
@useResult
$Res call({
 String? foodType, int? caloriesMin, int? caloriesMax, int? proteinMin, int? proteinMax, int? carbsMin, int? carbsMax, int? fatMin, int? fatMax, int page, int limit
});




}
/// @nodoc
class _$GetFoodsByFilterCopyWithImpl<$Res>
    implements $GetFoodsByFilterCopyWith<$Res> {
  _$GetFoodsByFilterCopyWithImpl(this._self, this._then);

  final GetFoodsByFilter _self;
  final $Res Function(GetFoodsByFilter) _then;

/// Create a copy of FoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foodType = freezed,Object? caloriesMin = freezed,Object? caloriesMax = freezed,Object? proteinMin = freezed,Object? proteinMax = freezed,Object? carbsMin = freezed,Object? carbsMax = freezed,Object? fatMin = freezed,Object? fatMax = freezed,Object? page = null,Object? limit = null,}) {
  return _then(GetFoodsByFilter(
foodType: freezed == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String?,caloriesMin: freezed == caloriesMin ? _self.caloriesMin : caloriesMin // ignore: cast_nullable_to_non_nullable
as int?,caloriesMax: freezed == caloriesMax ? _self.caloriesMax : caloriesMax // ignore: cast_nullable_to_non_nullable
as int?,proteinMin: freezed == proteinMin ? _self.proteinMin : proteinMin // ignore: cast_nullable_to_non_nullable
as int?,proteinMax: freezed == proteinMax ? _self.proteinMax : proteinMax // ignore: cast_nullable_to_non_nullable
as int?,carbsMin: freezed == carbsMin ? _self.carbsMin : carbsMin // ignore: cast_nullable_to_non_nullable
as int?,carbsMax: freezed == carbsMax ? _self.carbsMax : carbsMax // ignore: cast_nullable_to_non_nullable
as int?,fatMin: freezed == fatMin ? _self.fatMin : fatMin // ignore: cast_nullable_to_non_nullable
as int?,fatMax: freezed == fatMax ? _self.fatMax : fatMax // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FoodState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState()';
}


}

/// @nodoc
class $FoodStateCopyWith<$Res>  {
$FoodStateCopyWith(FoodState _, $Res Function(FoodState) __);
}


/// @nodoc


class Food_Initial implements FoodState {
  const Food_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.initial()';
}


}




/// @nodoc


class Food_Loading implements FoodState {
  const Food_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.loading()';
}


}




/// @nodoc


class LoadedFood implements FoodState {
  const LoadedFood(this.food);
  

 final  Food food;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedFoodCopyWith<LoadedFood> get copyWith => _$LoadedFoodCopyWithImpl<LoadedFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedFood&&(identical(other.food, food) || other.food == food));
}


@override
int get hashCode => Object.hash(runtimeType,food);

@override
String toString() {
  return 'FoodState.loadedFood(food: $food)';
}


}

/// @nodoc
abstract mixin class $LoadedFoodCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory $LoadedFoodCopyWith(LoadedFood value, $Res Function(LoadedFood) _then) = _$LoadedFoodCopyWithImpl;
@useResult
$Res call({
 Food food
});


$FoodCopyWith<$Res> get food;

}
/// @nodoc
class _$LoadedFoodCopyWithImpl<$Res>
    implements $LoadedFoodCopyWith<$Res> {
  _$LoadedFoodCopyWithImpl(this._self, this._then);

  final LoadedFood _self;
  final $Res Function(LoadedFood) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? food = null,}) {
  return _then(LoadedFood(
null == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as Food,
  ));
}

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodCopyWith<$Res> get food {
  
  return $FoodCopyWith<$Res>(_self.food, (value) {
    return _then(_self.copyWith(food: value));
  });
}
}

/// @nodoc


class Food_LoadingMore implements FoodState {
  const Food_LoadingMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food_LoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.loadingMore()';
}


}




/// @nodoc


class LoadedFoods implements FoodState {
  const LoadedFoods(final  List<Food> foods, this.currentPage, this.limit, this.hasMore): _foods = foods;
  

 final  List<Food> _foods;
 List<Food> get foods {
  if (_foods is EqualUnmodifiableListView) return _foods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foods);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedFoodsCopyWith<LoadedFoods> get copyWith => _$LoadedFoodsCopyWithImpl<LoadedFoods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedFoods&&const DeepCollectionEquality().equals(other._foods, _foods)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_foods),currentPage,limit,hasMore);

@override
String toString() {
  return 'FoodState.loadedFoods(foods: $foods, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedFoodsCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory $LoadedFoodsCopyWith(LoadedFoods value, $Res Function(LoadedFoods) _then) = _$LoadedFoodsCopyWithImpl;
@useResult
$Res call({
 List<Food> foods, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedFoodsCopyWithImpl<$Res>
    implements $LoadedFoodsCopyWith<$Res> {
  _$LoadedFoodsCopyWithImpl(this._self, this._then);

  final LoadedFoods _self;
  final $Res Function(LoadedFoods) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foods = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedFoods(
null == foods ? _self._foods : foods // ignore: cast_nullable_to_non_nullable
as List<Food>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Food_Error implements FoodState {
  const Food_Error(this.message);
  

 final  String message;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Food_ErrorCopyWith<Food_Error> get copyWith => _$Food_ErrorCopyWithImpl<Food_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FoodState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Food_ErrorCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory $Food_ErrorCopyWith(Food_Error value, $Res Function(Food_Error) _then) = _$Food_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Food_ErrorCopyWithImpl<$Res>
    implements $Food_ErrorCopyWith<$Res> {
  _$Food_ErrorCopyWithImpl(this._self, this._then);

  final Food_Error _self;
  final $Res Function(Food_Error) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Food_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Food_Success implements FoodState {
  const Food_Success(this.message);
  

 final  String message;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Food_SuccessCopyWith<Food_Success> get copyWith => _$Food_SuccessCopyWithImpl<Food_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FoodState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Food_SuccessCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory $Food_SuccessCopyWith(Food_Success value, $Res Function(Food_Success) _then) = _$Food_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Food_SuccessCopyWithImpl<$Res>
    implements $Food_SuccessCopyWith<$Res> {
  _$Food_SuccessCopyWithImpl(this._self, this._then);

  final Food_Success _self;
  final $Res Function(Food_Success) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Food_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
