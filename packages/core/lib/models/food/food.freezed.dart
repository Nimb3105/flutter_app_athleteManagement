// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Food {

 String? get id; String get name; String get foodType; String get foodImage; String get description; int get calories;@UtcDateTimeConverter() DateTime? get createdAt;@UtcDateTimeConverter() DateTime? get updatedAt;
/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodCopyWith<Food> get copyWith => _$FoodCopyWithImpl<Food>(this as Food, _$identity);

  /// Serializes this Food to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.foodImage, foodImage) || other.foodImage == foodImage)&&(identical(other.description, description) || other.description == description)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,foodType,foodImage,description,calories,createdAt,updatedAt);

@override
String toString() {
  return 'Food(id: $id, name: $name, foodType: $foodType, foodImage: $foodImage, description: $description, calories: $calories, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FoodCopyWith<$Res>  {
  factory $FoodCopyWith(Food value, $Res Function(Food) _then) = _$FoodCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String foodType, String foodImage, String description, int calories,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$FoodCopyWithImpl<$Res>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._self, this._then);

  final Food _self;
  final $Res Function(Food) _then;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? foodType = null,Object? foodImage = null,Object? description = null,Object? calories = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,foodType: null == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String,foodImage: null == foodImage ? _self.foodImage : foodImage // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Food implements Food {
  const _Food({required this.id, required this.name, required this.foodType, required this.foodImage, required this.description, required this.calories, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String foodType;
@override final  String foodImage;
@override final  String description;
@override final  int calories;
@override@UtcDateTimeConverter() final  DateTime? createdAt;
@override@UtcDateTimeConverter() final  DateTime? updatedAt;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodCopyWith<_Food> get copyWith => __$FoodCopyWithImpl<_Food>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Food&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.foodImage, foodImage) || other.foodImage == foodImage)&&(identical(other.description, description) || other.description == description)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,foodType,foodImage,description,calories,createdAt,updatedAt);

@override
String toString() {
  return 'Food(id: $id, name: $name, foodType: $foodType, foodImage: $foodImage, description: $description, calories: $calories, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) _then) = __$FoodCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String foodType, String foodImage, String description, int calories,@UtcDateTimeConverter() DateTime? createdAt,@UtcDateTimeConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$FoodCopyWithImpl<$Res>
    implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(this._self, this._then);

  final _Food _self;
  final $Res Function(_Food) _then;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? foodType = null,Object? foodImage = null,Object? description = null,Object? calories = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Food(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,foodType: null == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String,foodImage: null == foodImage ? _self.foodImage : foodImage // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
