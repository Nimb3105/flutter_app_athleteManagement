// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'injury.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Injury {

 String? get id; String get userId; String get type; String get severity; String get locationOnBody; String get causeOfInjury; String get status;@UtcDateTimeConverter() DateTime get date;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Injury
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InjuryCopyWith<Injury> get copyWith => _$InjuryCopyWithImpl<Injury>(this as Injury, _$identity);

  /// Serializes this Injury to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Injury&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.locationOnBody, locationOnBody) || other.locationOnBody == locationOnBody)&&(identical(other.causeOfInjury, causeOfInjury) || other.causeOfInjury == causeOfInjury)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,severity,locationOnBody,causeOfInjury,status,date,createdAt,updatedAt);

@override
String toString() {
  return 'Injury(id: $id, userId: $userId, type: $type, severity: $severity, locationOnBody: $locationOnBody, causeOfInjury: $causeOfInjury, status: $status, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InjuryCopyWith<$Res>  {
  factory $InjuryCopyWith(Injury value, $Res Function(Injury) _then) = _$InjuryCopyWithImpl;
@useResult
$Res call({
 String? id, String userId, String type, String severity, String locationOnBody, String causeOfInjury, String status,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$InjuryCopyWithImpl<$Res>
    implements $InjuryCopyWith<$Res> {
  _$InjuryCopyWithImpl(this._self, this._then);

  final Injury _self;
  final $Res Function(Injury) _then;

/// Create a copy of Injury
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? type = null,Object? severity = null,Object? locationOnBody = null,Object? causeOfInjury = null,Object? status = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,locationOnBody: null == locationOnBody ? _self.locationOnBody : locationOnBody // ignore: cast_nullable_to_non_nullable
as String,causeOfInjury: null == causeOfInjury ? _self.causeOfInjury : causeOfInjury // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Injury].
extension InjuryPatterns on Injury {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Injury value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Injury() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Injury value)  $default,){
final _that = this;
switch (_that) {
case _Injury():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Injury value)?  $default,){
final _that = this;
switch (_that) {
case _Injury() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String userId,  String type,  String severity,  String locationOnBody,  String causeOfInjury,  String status, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Injury() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.severity,_that.locationOnBody,_that.causeOfInjury,_that.status,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String userId,  String type,  String severity,  String locationOnBody,  String causeOfInjury,  String status, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Injury():
return $default(_that.id,_that.userId,_that.type,_that.severity,_that.locationOnBody,_that.causeOfInjury,_that.status,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String userId,  String type,  String severity,  String locationOnBody,  String causeOfInjury,  String status, @UtcDateTimeConverter()  DateTime date, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Injury() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.severity,_that.locationOnBody,_that.causeOfInjury,_that.status,_that.date,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Injury implements Injury {
  const _Injury({required this.id, required this.userId, required this.type, required this.severity, required this.locationOnBody, required this.causeOfInjury, required this.status, @UtcDateTimeConverter() required this.date, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _Injury.fromJson(Map<String, dynamic> json) => _$InjuryFromJson(json);

@override final  String? id;
@override final  String userId;
@override final  String type;
@override final  String severity;
@override final  String locationOnBody;
@override final  String causeOfInjury;
@override final  String status;
@override@UtcDateTimeConverter() final  DateTime date;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Injury
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InjuryCopyWith<_Injury> get copyWith => __$InjuryCopyWithImpl<_Injury>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InjuryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Injury&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.locationOnBody, locationOnBody) || other.locationOnBody == locationOnBody)&&(identical(other.causeOfInjury, causeOfInjury) || other.causeOfInjury == causeOfInjury)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,severity,locationOnBody,causeOfInjury,status,date,createdAt,updatedAt);

@override
String toString() {
  return 'Injury(id: $id, userId: $userId, type: $type, severity: $severity, locationOnBody: $locationOnBody, causeOfInjury: $causeOfInjury, status: $status, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InjuryCopyWith<$Res> implements $InjuryCopyWith<$Res> {
  factory _$InjuryCopyWith(_Injury value, $Res Function(_Injury) _then) = __$InjuryCopyWithImpl;
@override @useResult
$Res call({
 String? id, String userId, String type, String severity, String locationOnBody, String causeOfInjury, String status,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$InjuryCopyWithImpl<$Res>
    implements _$InjuryCopyWith<$Res> {
  __$InjuryCopyWithImpl(this._self, this._then);

  final _Injury _self;
  final $Res Function(_Injury) _then;

/// Create a copy of Injury
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? type = null,Object? severity = null,Object? locationOnBody = null,Object? causeOfInjury = null,Object? status = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Injury(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,locationOnBody: null == locationOnBody ? _self.locationOnBody : locationOnBody // ignore: cast_nullable_to_non_nullable
as String,causeOfInjury: null == causeOfInjury ? _self.causeOfInjury : causeOfInjury // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
