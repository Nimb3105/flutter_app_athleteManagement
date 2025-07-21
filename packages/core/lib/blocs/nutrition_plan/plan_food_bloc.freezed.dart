// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlanFoodEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFoodEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlanFoodEvent()';
}


}

/// @nodoc
class $PlanFoodEventCopyWith<$Res>  {
$PlanFoodEventCopyWith(PlanFoodEvent _, $Res Function(PlanFoodEvent) __);
}


/// Adds pattern-matching-related methods to [PlanFoodEvent].
extension PlanFoodEventPatterns on PlanFoodEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePlanFood value)?  createPlanFood,TResult Function( GetPlanFoodById value)?  getPlanFoodById,TResult Function( GetAllPlanFoods value)?  getAllPlanFoods,TResult Function( GetAllByNutritionPlanId value)?  getAllByNutritionPlanId,TResult Function( UpdatePlanFood value)?  updatePlanFood,TResult Function( DeletePlanFood value)?  deletePlanFood,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePlanFood() when createPlanFood != null:
return createPlanFood(_that);case GetPlanFoodById() when getPlanFoodById != null:
return getPlanFoodById(_that);case GetAllPlanFoods() when getAllPlanFoods != null:
return getAllPlanFoods(_that);case GetAllByNutritionPlanId() when getAllByNutritionPlanId != null:
return getAllByNutritionPlanId(_that);case UpdatePlanFood() when updatePlanFood != null:
return updatePlanFood(_that);case DeletePlanFood() when deletePlanFood != null:
return deletePlanFood(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePlanFood value)  createPlanFood,required TResult Function( GetPlanFoodById value)  getPlanFoodById,required TResult Function( GetAllPlanFoods value)  getAllPlanFoods,required TResult Function( GetAllByNutritionPlanId value)  getAllByNutritionPlanId,required TResult Function( UpdatePlanFood value)  updatePlanFood,required TResult Function( DeletePlanFood value)  deletePlanFood,}){
final _that = this;
switch (_that) {
case CreatePlanFood():
return createPlanFood(_that);case GetPlanFoodById():
return getPlanFoodById(_that);case GetAllPlanFoods():
return getAllPlanFoods(_that);case GetAllByNutritionPlanId():
return getAllByNutritionPlanId(_that);case UpdatePlanFood():
return updatePlanFood(_that);case DeletePlanFood():
return deletePlanFood(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePlanFood value)?  createPlanFood,TResult? Function( GetPlanFoodById value)?  getPlanFoodById,TResult? Function( GetAllPlanFoods value)?  getAllPlanFoods,TResult? Function( GetAllByNutritionPlanId value)?  getAllByNutritionPlanId,TResult? Function( UpdatePlanFood value)?  updatePlanFood,TResult? Function( DeletePlanFood value)?  deletePlanFood,}){
final _that = this;
switch (_that) {
case CreatePlanFood() when createPlanFood != null:
return createPlanFood(_that);case GetPlanFoodById() when getPlanFoodById != null:
return getPlanFoodById(_that);case GetAllPlanFoods() when getAllPlanFoods != null:
return getAllPlanFoods(_that);case GetAllByNutritionPlanId() when getAllByNutritionPlanId != null:
return getAllByNutritionPlanId(_that);case UpdatePlanFood() when updatePlanFood != null:
return updatePlanFood(_that);case DeletePlanFood() when deletePlanFood != null:
return deletePlanFood(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PlanFood planFood)?  createPlanFood,TResult Function( String id)?  getPlanFoodById,TResult Function( int page,  int limit)?  getAllPlanFoods,TResult Function( String nutritionPlanId)?  getAllByNutritionPlanId,TResult Function( String id,  PlanFood planFood)?  updatePlanFood,TResult Function( String id)?  deletePlanFood,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePlanFood() when createPlanFood != null:
return createPlanFood(_that.planFood);case GetPlanFoodById() when getPlanFoodById != null:
return getPlanFoodById(_that.id);case GetAllPlanFoods() when getAllPlanFoods != null:
return getAllPlanFoods(_that.page,_that.limit);case GetAllByNutritionPlanId() when getAllByNutritionPlanId != null:
return getAllByNutritionPlanId(_that.nutritionPlanId);case UpdatePlanFood() when updatePlanFood != null:
return updatePlanFood(_that.id,_that.planFood);case DeletePlanFood() when deletePlanFood != null:
return deletePlanFood(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PlanFood planFood)  createPlanFood,required TResult Function( String id)  getPlanFoodById,required TResult Function( int page,  int limit)  getAllPlanFoods,required TResult Function( String nutritionPlanId)  getAllByNutritionPlanId,required TResult Function( String id,  PlanFood planFood)  updatePlanFood,required TResult Function( String id)  deletePlanFood,}) {final _that = this;
switch (_that) {
case CreatePlanFood():
return createPlanFood(_that.planFood);case GetPlanFoodById():
return getPlanFoodById(_that.id);case GetAllPlanFoods():
return getAllPlanFoods(_that.page,_that.limit);case GetAllByNutritionPlanId():
return getAllByNutritionPlanId(_that.nutritionPlanId);case UpdatePlanFood():
return updatePlanFood(_that.id,_that.planFood);case DeletePlanFood():
return deletePlanFood(_that.id);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PlanFood planFood)?  createPlanFood,TResult? Function( String id)?  getPlanFoodById,TResult? Function( int page,  int limit)?  getAllPlanFoods,TResult? Function( String nutritionPlanId)?  getAllByNutritionPlanId,TResult? Function( String id,  PlanFood planFood)?  updatePlanFood,TResult? Function( String id)?  deletePlanFood,}) {final _that = this;
switch (_that) {
case CreatePlanFood() when createPlanFood != null:
return createPlanFood(_that.planFood);case GetPlanFoodById() when getPlanFoodById != null:
return getPlanFoodById(_that.id);case GetAllPlanFoods() when getAllPlanFoods != null:
return getAllPlanFoods(_that.page,_that.limit);case GetAllByNutritionPlanId() when getAllByNutritionPlanId != null:
return getAllByNutritionPlanId(_that.nutritionPlanId);case UpdatePlanFood() when updatePlanFood != null:
return updatePlanFood(_that.id,_that.planFood);case DeletePlanFood() when deletePlanFood != null:
return deletePlanFood(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class CreatePlanFood implements PlanFoodEvent {
  const CreatePlanFood(this.planFood);
  

 final  PlanFood planFood;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePlanFoodCopyWith<CreatePlanFood> get copyWith => _$CreatePlanFoodCopyWithImpl<CreatePlanFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePlanFood&&(identical(other.planFood, planFood) || other.planFood == planFood));
}


@override
int get hashCode => Object.hash(runtimeType,planFood);

@override
String toString() {
  return 'PlanFoodEvent.createPlanFood(planFood: $planFood)';
}


}

/// @nodoc
abstract mixin class $CreatePlanFoodCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $CreatePlanFoodCopyWith(CreatePlanFood value, $Res Function(CreatePlanFood) _then) = _$CreatePlanFoodCopyWithImpl;
@useResult
$Res call({
 PlanFood planFood
});


$PlanFoodCopyWith<$Res> get planFood;

}
/// @nodoc
class _$CreatePlanFoodCopyWithImpl<$Res>
    implements $CreatePlanFoodCopyWith<$Res> {
  _$CreatePlanFoodCopyWithImpl(this._self, this._then);

  final CreatePlanFood _self;
  final $Res Function(CreatePlanFood) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? planFood = null,}) {
  return _then(CreatePlanFood(
null == planFood ? _self.planFood : planFood // ignore: cast_nullable_to_non_nullable
as PlanFood,
  ));
}

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanFoodCopyWith<$Res> get planFood {
  
  return $PlanFoodCopyWith<$Res>(_self.planFood, (value) {
    return _then(_self.copyWith(planFood: value));
  });
}
}

/// @nodoc


class GetPlanFoodById implements PlanFoodEvent {
  const GetPlanFoodById(this.id);
  

 final  String id;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPlanFoodByIdCopyWith<GetPlanFoodById> get copyWith => _$GetPlanFoodByIdCopyWithImpl<GetPlanFoodById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlanFoodById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PlanFoodEvent.getPlanFoodById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetPlanFoodByIdCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $GetPlanFoodByIdCopyWith(GetPlanFoodById value, $Res Function(GetPlanFoodById) _then) = _$GetPlanFoodByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetPlanFoodByIdCopyWithImpl<$Res>
    implements $GetPlanFoodByIdCopyWith<$Res> {
  _$GetPlanFoodByIdCopyWithImpl(this._self, this._then);

  final GetPlanFoodById _self;
  final $Res Function(GetPlanFoodById) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetPlanFoodById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllPlanFoods implements PlanFoodEvent {
  const GetAllPlanFoods({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllPlanFoodsCopyWith<GetAllPlanFoods> get copyWith => _$GetAllPlanFoodsCopyWithImpl<GetAllPlanFoods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllPlanFoods&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'PlanFoodEvent.getAllPlanFoods(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllPlanFoodsCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $GetAllPlanFoodsCopyWith(GetAllPlanFoods value, $Res Function(GetAllPlanFoods) _then) = _$GetAllPlanFoodsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllPlanFoodsCopyWithImpl<$Res>
    implements $GetAllPlanFoodsCopyWith<$Res> {
  _$GetAllPlanFoodsCopyWithImpl(this._self, this._then);

  final GetAllPlanFoods _self;
  final $Res Function(GetAllPlanFoods) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllPlanFoods(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetAllByNutritionPlanId implements PlanFoodEvent {
  const GetAllByNutritionPlanId(this.nutritionPlanId);
  

 final  String nutritionPlanId;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllByNutritionPlanIdCopyWith<GetAllByNutritionPlanId> get copyWith => _$GetAllByNutritionPlanIdCopyWithImpl<GetAllByNutritionPlanId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllByNutritionPlanId&&(identical(other.nutritionPlanId, nutritionPlanId) || other.nutritionPlanId == nutritionPlanId));
}


@override
int get hashCode => Object.hash(runtimeType,nutritionPlanId);

@override
String toString() {
  return 'PlanFoodEvent.getAllByNutritionPlanId(nutritionPlanId: $nutritionPlanId)';
}


}

/// @nodoc
abstract mixin class $GetAllByNutritionPlanIdCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $GetAllByNutritionPlanIdCopyWith(GetAllByNutritionPlanId value, $Res Function(GetAllByNutritionPlanId) _then) = _$GetAllByNutritionPlanIdCopyWithImpl;
@useResult
$Res call({
 String nutritionPlanId
});




}
/// @nodoc
class _$GetAllByNutritionPlanIdCopyWithImpl<$Res>
    implements $GetAllByNutritionPlanIdCopyWith<$Res> {
  _$GetAllByNutritionPlanIdCopyWithImpl(this._self, this._then);

  final GetAllByNutritionPlanId _self;
  final $Res Function(GetAllByNutritionPlanId) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nutritionPlanId = null,}) {
  return _then(GetAllByNutritionPlanId(
null == nutritionPlanId ? _self.nutritionPlanId : nutritionPlanId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdatePlanFood implements PlanFoodEvent {
  const UpdatePlanFood(this.id, this.planFood);
  

 final  String id;
 final  PlanFood planFood;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePlanFoodCopyWith<UpdatePlanFood> get copyWith => _$UpdatePlanFoodCopyWithImpl<UpdatePlanFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePlanFood&&(identical(other.id, id) || other.id == id)&&(identical(other.planFood, planFood) || other.planFood == planFood));
}


@override
int get hashCode => Object.hash(runtimeType,id,planFood);

@override
String toString() {
  return 'PlanFoodEvent.updatePlanFood(id: $id, planFood: $planFood)';
}


}

/// @nodoc
abstract mixin class $UpdatePlanFoodCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $UpdatePlanFoodCopyWith(UpdatePlanFood value, $Res Function(UpdatePlanFood) _then) = _$UpdatePlanFoodCopyWithImpl;
@useResult
$Res call({
 String id, PlanFood planFood
});


$PlanFoodCopyWith<$Res> get planFood;

}
/// @nodoc
class _$UpdatePlanFoodCopyWithImpl<$Res>
    implements $UpdatePlanFoodCopyWith<$Res> {
  _$UpdatePlanFoodCopyWithImpl(this._self, this._then);

  final UpdatePlanFood _self;
  final $Res Function(UpdatePlanFood) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? planFood = null,}) {
  return _then(UpdatePlanFood(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == planFood ? _self.planFood : planFood // ignore: cast_nullable_to_non_nullable
as PlanFood,
  ));
}

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanFoodCopyWith<$Res> get planFood {
  
  return $PlanFoodCopyWith<$Res>(_self.planFood, (value) {
    return _then(_self.copyWith(planFood: value));
  });
}
}

/// @nodoc


class DeletePlanFood implements PlanFoodEvent {
  const DeletePlanFood(this.id);
  

 final  String id;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePlanFoodCopyWith<DeletePlanFood> get copyWith => _$DeletePlanFoodCopyWithImpl<DeletePlanFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePlanFood&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PlanFoodEvent.deletePlanFood(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeletePlanFoodCopyWith<$Res> implements $PlanFoodEventCopyWith<$Res> {
  factory $DeletePlanFoodCopyWith(DeletePlanFood value, $Res Function(DeletePlanFood) _then) = _$DeletePlanFoodCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeletePlanFoodCopyWithImpl<$Res>
    implements $DeletePlanFoodCopyWith<$Res> {
  _$DeletePlanFoodCopyWithImpl(this._self, this._then);

  final DeletePlanFood _self;
  final $Res Function(DeletePlanFood) _then;

/// Create a copy of PlanFoodEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeletePlanFood(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PlanFoodState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFoodState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlanFoodState()';
}


}

/// @nodoc
class $PlanFoodStateCopyWith<$Res>  {
$PlanFoodStateCopyWith(PlanFoodState _, $Res Function(PlanFoodState) __);
}


/// Adds pattern-matching-related methods to [PlanFoodState].
extension PlanFoodStatePatterns on PlanFoodState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PlanFood_Initial value)?  initial,TResult Function( PlanFood_Loading value)?  loading,TResult Function( LoadedPlanFood value)?  loadedPlanFood,TResult Function( LoadedPlanFoods value)?  loadedPlanFoods,TResult Function( PlanFood_Error value)?  error,TResult Function( PlanFood_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PlanFood_Initial() when initial != null:
return initial(_that);case PlanFood_Loading() when loading != null:
return loading(_that);case LoadedPlanFood() when loadedPlanFood != null:
return loadedPlanFood(_that);case LoadedPlanFoods() when loadedPlanFoods != null:
return loadedPlanFoods(_that);case PlanFood_Error() when error != null:
return error(_that);case PlanFood_Success() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PlanFood_Initial value)  initial,required TResult Function( PlanFood_Loading value)  loading,required TResult Function( LoadedPlanFood value)  loadedPlanFood,required TResult Function( LoadedPlanFoods value)  loadedPlanFoods,required TResult Function( PlanFood_Error value)  error,required TResult Function( PlanFood_Success value)  success,}){
final _that = this;
switch (_that) {
case PlanFood_Initial():
return initial(_that);case PlanFood_Loading():
return loading(_that);case LoadedPlanFood():
return loadedPlanFood(_that);case LoadedPlanFoods():
return loadedPlanFoods(_that);case PlanFood_Error():
return error(_that);case PlanFood_Success():
return success(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PlanFood_Initial value)?  initial,TResult? Function( PlanFood_Loading value)?  loading,TResult? Function( LoadedPlanFood value)?  loadedPlanFood,TResult? Function( LoadedPlanFoods value)?  loadedPlanFoods,TResult? Function( PlanFood_Error value)?  error,TResult? Function( PlanFood_Success value)?  success,}){
final _that = this;
switch (_that) {
case PlanFood_Initial() when initial != null:
return initial(_that);case PlanFood_Loading() when loading != null:
return loading(_that);case LoadedPlanFood() when loadedPlanFood != null:
return loadedPlanFood(_that);case LoadedPlanFoods() when loadedPlanFoods != null:
return loadedPlanFoods(_that);case PlanFood_Error() when error != null:
return error(_that);case PlanFood_Success() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PlanFood planFood)?  loadedPlanFood,TResult Function( List<PlanFood> planFoods,  int currentPage,  int limit,  bool hasMore,  Map<String, NutritionPlan>? nutritionPlans,  Map<String, Food>? foods)?  loadedPlanFoods,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PlanFood_Initial() when initial != null:
return initial();case PlanFood_Loading() when loading != null:
return loading();case LoadedPlanFood() when loadedPlanFood != null:
return loadedPlanFood(_that.planFood);case LoadedPlanFoods() when loadedPlanFoods != null:
return loadedPlanFoods(_that.planFoods,_that.currentPage,_that.limit,_that.hasMore,_that.nutritionPlans,_that.foods);case PlanFood_Error() when error != null:
return error(_that.message);case PlanFood_Success() when success != null:
return success(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PlanFood planFood)  loadedPlanFood,required TResult Function( List<PlanFood> planFoods,  int currentPage,  int limit,  bool hasMore,  Map<String, NutritionPlan>? nutritionPlans,  Map<String, Food>? foods)  loadedPlanFoods,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case PlanFood_Initial():
return initial();case PlanFood_Loading():
return loading();case LoadedPlanFood():
return loadedPlanFood(_that.planFood);case LoadedPlanFoods():
return loadedPlanFoods(_that.planFoods,_that.currentPage,_that.limit,_that.hasMore,_that.nutritionPlans,_that.foods);case PlanFood_Error():
return error(_that.message);case PlanFood_Success():
return success(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PlanFood planFood)?  loadedPlanFood,TResult? Function( List<PlanFood> planFoods,  int currentPage,  int limit,  bool hasMore,  Map<String, NutritionPlan>? nutritionPlans,  Map<String, Food>? foods)?  loadedPlanFoods,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case PlanFood_Initial() when initial != null:
return initial();case PlanFood_Loading() when loading != null:
return loading();case LoadedPlanFood() when loadedPlanFood != null:
return loadedPlanFood(_that.planFood);case LoadedPlanFoods() when loadedPlanFoods != null:
return loadedPlanFoods(_that.planFoods,_that.currentPage,_that.limit,_that.hasMore,_that.nutritionPlans,_that.foods);case PlanFood_Error() when error != null:
return error(_that.message);case PlanFood_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PlanFood_Initial implements PlanFoodState {
  const PlanFood_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFood_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlanFoodState.initial()';
}


}




/// @nodoc


class PlanFood_Loading implements PlanFoodState {
  const PlanFood_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFood_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlanFoodState.loading()';
}


}




/// @nodoc


class LoadedPlanFood implements PlanFoodState {
  const LoadedPlanFood(this.planFood);
  

 final  PlanFood planFood;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedPlanFoodCopyWith<LoadedPlanFood> get copyWith => _$LoadedPlanFoodCopyWithImpl<LoadedPlanFood>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedPlanFood&&(identical(other.planFood, planFood) || other.planFood == planFood));
}


@override
int get hashCode => Object.hash(runtimeType,planFood);

@override
String toString() {
  return 'PlanFoodState.loadedPlanFood(planFood: $planFood)';
}


}

/// @nodoc
abstract mixin class $LoadedPlanFoodCopyWith<$Res> implements $PlanFoodStateCopyWith<$Res> {
  factory $LoadedPlanFoodCopyWith(LoadedPlanFood value, $Res Function(LoadedPlanFood) _then) = _$LoadedPlanFoodCopyWithImpl;
@useResult
$Res call({
 PlanFood planFood
});


$PlanFoodCopyWith<$Res> get planFood;

}
/// @nodoc
class _$LoadedPlanFoodCopyWithImpl<$Res>
    implements $LoadedPlanFoodCopyWith<$Res> {
  _$LoadedPlanFoodCopyWithImpl(this._self, this._then);

  final LoadedPlanFood _self;
  final $Res Function(LoadedPlanFood) _then;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? planFood = null,}) {
  return _then(LoadedPlanFood(
null == planFood ? _self.planFood : planFood // ignore: cast_nullable_to_non_nullable
as PlanFood,
  ));
}

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanFoodCopyWith<$Res> get planFood {
  
  return $PlanFoodCopyWith<$Res>(_self.planFood, (value) {
    return _then(_self.copyWith(planFood: value));
  });
}
}

/// @nodoc


class LoadedPlanFoods implements PlanFoodState {
  const LoadedPlanFoods(final  List<PlanFood> planFoods, this.currentPage, this.limit, this.hasMore, {final  Map<String, NutritionPlan>? nutritionPlans, final  Map<String, Food>? foods}): _planFoods = planFoods,_nutritionPlans = nutritionPlans,_foods = foods;
  

 final  List<PlanFood> _planFoods;
 List<PlanFood> get planFoods {
  if (_planFoods is EqualUnmodifiableListView) return _planFoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_planFoods);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;
 final  Map<String, NutritionPlan>? _nutritionPlans;
 Map<String, NutritionPlan>? get nutritionPlans {
  final value = _nutritionPlans;
  if (value == null) return null;
  if (_nutritionPlans is EqualUnmodifiableMapView) return _nutritionPlans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Food>? _foods;
 Map<String, Food>? get foods {
  final value = _foods;
  if (value == null) return null;
  if (_foods is EqualUnmodifiableMapView) return _foods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedPlanFoodsCopyWith<LoadedPlanFoods> get copyWith => _$LoadedPlanFoodsCopyWithImpl<LoadedPlanFoods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedPlanFoods&&const DeepCollectionEquality().equals(other._planFoods, _planFoods)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._nutritionPlans, _nutritionPlans)&&const DeepCollectionEquality().equals(other._foods, _foods));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_planFoods),currentPage,limit,hasMore,const DeepCollectionEquality().hash(_nutritionPlans),const DeepCollectionEquality().hash(_foods));

@override
String toString() {
  return 'PlanFoodState.loadedPlanFoods(planFoods: $planFoods, currentPage: $currentPage, limit: $limit, hasMore: $hasMore, nutritionPlans: $nutritionPlans, foods: $foods)';
}


}

/// @nodoc
abstract mixin class $LoadedPlanFoodsCopyWith<$Res> implements $PlanFoodStateCopyWith<$Res> {
  factory $LoadedPlanFoodsCopyWith(LoadedPlanFoods value, $Res Function(LoadedPlanFoods) _then) = _$LoadedPlanFoodsCopyWithImpl;
@useResult
$Res call({
 List<PlanFood> planFoods, int currentPage, int limit, bool hasMore, Map<String, NutritionPlan>? nutritionPlans, Map<String, Food>? foods
});




}
/// @nodoc
class _$LoadedPlanFoodsCopyWithImpl<$Res>
    implements $LoadedPlanFoodsCopyWith<$Res> {
  _$LoadedPlanFoodsCopyWithImpl(this._self, this._then);

  final LoadedPlanFoods _self;
  final $Res Function(LoadedPlanFoods) _then;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? planFoods = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,Object? nutritionPlans = freezed,Object? foods = freezed,}) {
  return _then(LoadedPlanFoods(
null == planFoods ? _self._planFoods : planFoods // ignore: cast_nullable_to_non_nullable
as List<PlanFood>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nutritionPlans: freezed == nutritionPlans ? _self._nutritionPlans : nutritionPlans // ignore: cast_nullable_to_non_nullable
as Map<String, NutritionPlan>?,foods: freezed == foods ? _self._foods : foods // ignore: cast_nullable_to_non_nullable
as Map<String, Food>?,
  ));
}


}

/// @nodoc


class PlanFood_Error implements PlanFoodState {
  const PlanFood_Error(this.message);
  

 final  String message;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanFood_ErrorCopyWith<PlanFood_Error> get copyWith => _$PlanFood_ErrorCopyWithImpl<PlanFood_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFood_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PlanFoodState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PlanFood_ErrorCopyWith<$Res> implements $PlanFoodStateCopyWith<$Res> {
  factory $PlanFood_ErrorCopyWith(PlanFood_Error value, $Res Function(PlanFood_Error) _then) = _$PlanFood_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PlanFood_ErrorCopyWithImpl<$Res>
    implements $PlanFood_ErrorCopyWith<$Res> {
  _$PlanFood_ErrorCopyWithImpl(this._self, this._then);

  final PlanFood_Error _self;
  final $Res Function(PlanFood_Error) _then;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PlanFood_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PlanFood_Success implements PlanFoodState {
  const PlanFood_Success(this.message);
  

 final  String message;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanFood_SuccessCopyWith<PlanFood_Success> get copyWith => _$PlanFood_SuccessCopyWithImpl<PlanFood_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFood_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PlanFoodState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $PlanFood_SuccessCopyWith<$Res> implements $PlanFoodStateCopyWith<$Res> {
  factory $PlanFood_SuccessCopyWith(PlanFood_Success value, $Res Function(PlanFood_Success) _then) = _$PlanFood_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PlanFood_SuccessCopyWithImpl<$Res>
    implements $PlanFood_SuccessCopyWith<$Res> {
  _$PlanFood_SuccessCopyWithImpl(this._self, this._then);

  final PlanFood_Success _self;
  final $Res Function(PlanFood_Success) _then;

/// Create a copy of PlanFoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PlanFood_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
