// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NutritionPlan {

 String? get id; String get name; String get description; String get userId; String get createBy; int get totalCalories; int get mealCount; String get mealType; List<String> get foodIds;@UtcDateTimeConverter() DateTime get mealTime;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of NutritionPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionPlanCopyWith<NutritionPlan> get copyWith => _$NutritionPlanCopyWithImpl<NutritionPlan>(this as NutritionPlan, _$identity);

  /// Serializes this NutritionPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createBy, createBy) || other.createBy == createBy)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&(identical(other.mealCount, mealCount) || other.mealCount == mealCount)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&const DeepCollectionEquality().equals(other.foodIds, foodIds)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,userId,createBy,totalCalories,mealCount,mealType,const DeepCollectionEquality().hash(foodIds),mealTime,createdAt,updatedAt);

@override
String toString() {
  return 'NutritionPlan(id: $id, name: $name, description: $description, userId: $userId, createBy: $createBy, totalCalories: $totalCalories, mealCount: $mealCount, mealType: $mealType, foodIds: $foodIds, mealTime: $mealTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $NutritionPlanCopyWith<$Res>  {
  factory $NutritionPlanCopyWith(NutritionPlan value, $Res Function(NutritionPlan) _then) = _$NutritionPlanCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String description, String userId, String createBy, int totalCalories, int mealCount, String mealType, List<String> foodIds,@UtcDateTimeConverter() DateTime mealTime,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$NutritionPlanCopyWithImpl<$Res>
    implements $NutritionPlanCopyWith<$Res> {
  _$NutritionPlanCopyWithImpl(this._self, this._then);

  final NutritionPlan _self;
  final $Res Function(NutritionPlan) _then;

/// Create a copy of NutritionPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? userId = null,Object? createBy = null,Object? totalCalories = null,Object? mealCount = null,Object? mealType = null,Object? foodIds = null,Object? mealTime = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createBy: null == createBy ? _self.createBy : createBy // ignore: cast_nullable_to_non_nullable
as String,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as String,foodIds: null == foodIds ? _self.foodIds : foodIds // ignore: cast_nullable_to_non_nullable
as List<String>,mealTime: null == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [NutritionPlan].
extension NutritionPlanPatterns on NutritionPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionPlan() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionPlan value)  $default,){
final _that = this;
switch (_that) {
case _NutritionPlan():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionPlan value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionPlan() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String description,  String userId,  String createBy,  int totalCalories,  int mealCount,  String mealType,  List<String> foodIds, @UtcDateTimeConverter()  DateTime mealTime, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionPlan() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.userId,_that.createBy,_that.totalCalories,_that.mealCount,_that.mealType,_that.foodIds,_that.mealTime,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String description,  String userId,  String createBy,  int totalCalories,  int mealCount,  String mealType,  List<String> foodIds, @UtcDateTimeConverter()  DateTime mealTime, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _NutritionPlan():
return $default(_that.id,_that.name,_that.description,_that.userId,_that.createBy,_that.totalCalories,_that.mealCount,_that.mealType,_that.foodIds,_that.mealTime,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String description,  String userId,  String createBy,  int totalCalories,  int mealCount,  String mealType,  List<String> foodIds, @UtcDateTimeConverter()  DateTime mealTime, @UtcDateTimeConverter()  DateTime? createdAt, @UtcDateTimeConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _NutritionPlan() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.userId,_that.createBy,_that.totalCalories,_that.mealCount,_that.mealType,_that.foodIds,_that.mealTime,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionPlan implements NutritionPlan {
  const _NutritionPlan({this.id, required this.name, required this.description, required this.userId, required this.createBy, required this.totalCalories, required this.mealCount, required this.mealType, final  List<String> foodIds = const [], @UtcDateTimeConverter() required this.mealTime, @UtcDateTimeConverter() this.createdAt, @UtcDateTimeConverter() this.updatedAt}): _foodIds = foodIds;
  factory _NutritionPlan.fromJson(Map<String, dynamic> json) => _$NutritionPlanFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String description;
@override final  String userId;
@override final  String createBy;
@override final  int totalCalories;
@override final  int mealCount;
@override final  String mealType;
 final  List<String> _foodIds;
@override@JsonKey() List<String> get foodIds {
  if (_foodIds is EqualUnmodifiableListView) return _foodIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foodIds);
}

@override@UtcDateTimeConverter() final  DateTime mealTime;
@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of NutritionPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionPlanCopyWith<_NutritionPlan> get copyWith => __$NutritionPlanCopyWithImpl<_NutritionPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createBy, createBy) || other.createBy == createBy)&&(identical(other.totalCalories, totalCalories) || other.totalCalories == totalCalories)&&(identical(other.mealCount, mealCount) || other.mealCount == mealCount)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&const DeepCollectionEquality().equals(other._foodIds, _foodIds)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,userId,createBy,totalCalories,mealCount,mealType,const DeepCollectionEquality().hash(_foodIds),mealTime,createdAt,updatedAt);

@override
String toString() {
  return 'NutritionPlan(id: $id, name: $name, description: $description, userId: $userId, createBy: $createBy, totalCalories: $totalCalories, mealCount: $mealCount, mealType: $mealType, foodIds: $foodIds, mealTime: $mealTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$NutritionPlanCopyWith<$Res> implements $NutritionPlanCopyWith<$Res> {
  factory _$NutritionPlanCopyWith(_NutritionPlan value, $Res Function(_NutritionPlan) _then) = __$NutritionPlanCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String description, String userId, String createBy, int totalCalories, int mealCount, String mealType, List<String> foodIds,@UtcDateTimeConverter() DateTime mealTime,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$NutritionPlanCopyWithImpl<$Res>
    implements _$NutritionPlanCopyWith<$Res> {
  __$NutritionPlanCopyWithImpl(this._self, this._then);

  final _NutritionPlan _self;
  final $Res Function(_NutritionPlan) _then;

/// Create a copy of NutritionPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? userId = null,Object? createBy = null,Object? totalCalories = null,Object? mealCount = null,Object? mealType = null,Object? foodIds = null,Object? mealTime = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_NutritionPlan(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createBy: null == createBy ? _self.createBy : createBy // ignore: cast_nullable_to_non_nullable
as String,totalCalories: null == totalCalories ? _self.totalCalories : totalCalories // ignore: cast_nullable_to_non_nullable
as int,mealCount: null == mealCount ? _self.mealCount : mealCount // ignore: cast_nullable_to_non_nullable
as int,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as String,foodIds: null == foodIds ? _self._foodIds : foodIds // ignore: cast_nullable_to_non_nullable
as List<String>,mealTime: null == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
