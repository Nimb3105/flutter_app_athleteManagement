// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_certification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoachCertification {

 String? get id; String get userId; String get name;@UtcDateTimeConverter() DateTime get dateIssued;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of CoachCertification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachCertificationCopyWith<CoachCertification> get copyWith => _$CoachCertificationCopyWithImpl<CoachCertification>(this as CoachCertification, _$identity);

  /// Serializes this CoachCertification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachCertification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateIssued, dateIssued) || other.dateIssued == dateIssued)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,dateIssued,createdAt,updatedAt);

@override
String toString() {
  return 'CoachCertification(id: $id, userId: $userId, name: $name, dateIssued: $dateIssued, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CoachCertificationCopyWith<$Res>  {
  factory $CoachCertificationCopyWith(CoachCertification value, $Res Function(CoachCertification) _then) = _$CoachCertificationCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String name,@UtcDateTimeConverter() DateTime dateIssued,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$CoachCertificationCopyWithImpl<$Res>
    implements $CoachCertificationCopyWith<$Res> {
  _$CoachCertificationCopyWithImpl(this._self, this._then);

  final CoachCertification _self;
  final $Res Function(CoachCertification) _then;

/// Create a copy of CoachCertification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? name = null,Object? dateIssued = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateIssued: null == dateIssued ? _self.dateIssued : dateIssued // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CoachCertification].
extension CoachCertificationPatterns on CoachCertification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachCertification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachCertification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachCertification value)  $default,){
final _that = this;
switch (_that) {
case _CoachCertification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachCertification value)?  $default,){
final _that = this;
switch (_that) {
case _CoachCertification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String userId,  String name, @UtcDateTimeConverter()  DateTime dateIssued, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachCertification() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.dateIssued,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String userId,  String name, @UtcDateTimeConverter()  DateTime dateIssued, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CoachCertification():
return $default(_that.id,_that.userId,_that.name,_that.dateIssued,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String userId,  String name, @UtcDateTimeConverter()  DateTime dateIssued, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CoachCertification() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.dateIssued,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachCertification implements CoachCertification {
  const _CoachCertification({required this.id, required this.userId, required this.name, @UtcDateTimeConverter() required this.dateIssued, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _CoachCertification.fromJson(Map<String, dynamic> json) => _$CoachCertificationFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String name;
@override@UtcDateTimeConverter() final  DateTime dateIssued;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of CoachCertification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachCertificationCopyWith<_CoachCertification> get copyWith => __$CoachCertificationCopyWithImpl<_CoachCertification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachCertificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachCertification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateIssued, dateIssued) || other.dateIssued == dateIssued)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,dateIssued,createdAt,updatedAt);

@override
String toString() {
  return 'CoachCertification(id: $id, userId: $userId, name: $name, dateIssued: $dateIssued, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CoachCertificationCopyWith<$Res> implements $CoachCertificationCopyWith<$Res> {
  factory _$CoachCertificationCopyWith(_CoachCertification value, $Res Function(_CoachCertification) _then) = __$CoachCertificationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String name,@UtcDateTimeConverter() DateTime dateIssued,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$CoachCertificationCopyWithImpl<$Res>
    implements _$CoachCertificationCopyWith<$Res> {
  __$CoachCertificationCopyWithImpl(this._self, this._then);

  final _CoachCertification _self;
  final $Res Function(_CoachCertification) _then;

/// Create a copy of CoachCertification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? name = null,Object? dateIssued = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CoachCertification(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateIssued: null == dateIssued ? _self.dateIssued : dateIssued // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
