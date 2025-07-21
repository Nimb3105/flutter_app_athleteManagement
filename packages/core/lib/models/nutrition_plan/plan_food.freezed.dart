// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanFood {

 String? get id; String get foodId; String get nutritionPlanId;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of PlanFood
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanFoodCopyWith<PlanFood> get copyWith => _$PlanFoodCopyWithImpl<PlanFood>(this as PlanFood, _$identity);

  /// Serializes this PlanFood to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanFood&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.nutritionPlanId, nutritionPlanId) || other.nutritionPlanId == nutritionPlanId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodId,nutritionPlanId,createdAt,updatedAt);

@override
String toString() {
  return 'PlanFood(id: $id, foodId: $foodId, nutritionPlanId: $nutritionPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PlanFoodCopyWith<$Res>  {
  factory $PlanFoodCopyWith(PlanFood value, $Res Function(PlanFood) _then) = _$PlanFoodCopyWithImpl;
@useResult
$Res call({
 String? id, String foodId, String nutritionPlanId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$PlanFoodCopyWithImpl<$Res>
    implements $PlanFoodCopyWith<$Res> {
  _$PlanFoodCopyWithImpl(this._self, this._then);

  final PlanFood _self;
  final $Res Function(PlanFood) _then;

/// Create a copy of PlanFood
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? foodId = null,Object? nutritionPlanId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as String,nutritionPlanId: null == nutritionPlanId ? _self.nutritionPlanId : nutritionPlanId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanFood].
extension PlanFoodPatterns on PlanFood {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanFood value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanFood() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanFood value)  $default,){
final _that = this;
switch (_that) {
case _PlanFood():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanFood value)?  $default,){
final _that = this;
switch (_that) {
case _PlanFood() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String foodId,  String nutritionPlanId, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanFood() when $default != null:
return $default(_that.id,_that.foodId,_that.nutritionPlanId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String foodId,  String nutritionPlanId, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PlanFood():
return $default(_that.id,_that.foodId,_that.nutritionPlanId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String foodId,  String nutritionPlanId, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PlanFood() when $default != null:
return $default(_that.id,_that.foodId,_that.nutritionPlanId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanFood implements PlanFood {
  const _PlanFood({required this.id, required this.foodId, required this.nutritionPlanId, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _PlanFood.fromJson(Map<String, dynamic> json) => _$PlanFoodFromJson(json);

@override final  String? id;
@override final  String foodId;
@override final  String nutritionPlanId;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of PlanFood
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanFoodCopyWith<_PlanFood> get copyWith => __$PlanFoodCopyWithImpl<_PlanFood>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanFoodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanFood&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.nutritionPlanId, nutritionPlanId) || other.nutritionPlanId == nutritionPlanId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodId,nutritionPlanId,createdAt,updatedAt);

@override
String toString() {
  return 'PlanFood(id: $id, foodId: $foodId, nutritionPlanId: $nutritionPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PlanFoodCopyWith<$Res> implements $PlanFoodCopyWith<$Res> {
  factory _$PlanFoodCopyWith(_PlanFood value, $Res Function(_PlanFood) _then) = __$PlanFoodCopyWithImpl;
@override @useResult
$Res call({
 String? id, String foodId, String nutritionPlanId,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$PlanFoodCopyWithImpl<$Res>
    implements _$PlanFoodCopyWith<$Res> {
  __$PlanFoodCopyWithImpl(this._self, this._then);

  final _PlanFood _self;
  final $Res Function(_PlanFood) _then;

/// Create a copy of PlanFood
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? foodId = null,Object? nutritionPlanId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PlanFood(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as String,nutritionPlanId: null == nutritionPlanId ? _self.nutritionPlanId : nutritionPlanId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
