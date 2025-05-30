// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalHistory {

 String? get id; String get healthId;// required String condition,
// required String treatment,
 String get description;@UtcDateTimeConverter() DateTime get date;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of MedicalHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalHistoryCopyWith<MedicalHistory> get copyWith => _$MedicalHistoryCopyWithImpl<MedicalHistory>(this as MedicalHistory, _$identity);

  /// Serializes this MedicalHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.healthId, healthId) || other.healthId == healthId)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,healthId,description,date,createdAt,updatedAt);

@override
String toString() {
  return 'MedicalHistory(id: $id, healthId: $healthId, description: $description, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MedicalHistoryCopyWith<$Res>  {
  factory $MedicalHistoryCopyWith(MedicalHistory value, $Res Function(MedicalHistory) _then) = _$MedicalHistoryCopyWithImpl;
@useResult
$Res call({
 String? id, String healthId, String description,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$MedicalHistoryCopyWithImpl<$Res>
    implements $MedicalHistoryCopyWith<$Res> {
  _$MedicalHistoryCopyWithImpl(this._self, this._then);

  final MedicalHistory _self;
  final $Res Function(MedicalHistory) _then;

/// Create a copy of MedicalHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? healthId = null,Object? description = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,healthId: null == healthId ? _self.healthId : healthId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MedicalHistory implements MedicalHistory {
  const _MedicalHistory({required this.id, required this.healthId, required this.description, @UtcDateTimeConverter() required this.date, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _MedicalHistory.fromJson(Map<String, dynamic> json) => _$MedicalHistoryFromJson(json);

@override final  String? id;
@override final  String healthId;
// required String condition,
// required String treatment,
@override final  String description;
@override@UtcDateTimeConverter() final  DateTime date;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of MedicalHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalHistoryCopyWith<_MedicalHistory> get copyWith => __$MedicalHistoryCopyWithImpl<_MedicalHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicalHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.healthId, healthId) || other.healthId == healthId)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,healthId,description,date,createdAt,updatedAt);

@override
String toString() {
  return 'MedicalHistory(id: $id, healthId: $healthId, description: $description, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MedicalHistoryCopyWith<$Res> implements $MedicalHistoryCopyWith<$Res> {
  factory _$MedicalHistoryCopyWith(_MedicalHistory value, $Res Function(_MedicalHistory) _then) = __$MedicalHistoryCopyWithImpl;
@override @useResult
$Res call({
 String? id, String healthId, String description,@UtcDateTimeConverter() DateTime date,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$MedicalHistoryCopyWithImpl<$Res>
    implements _$MedicalHistoryCopyWith<$Res> {
  __$MedicalHistoryCopyWithImpl(this._self, this._then);

  final _MedicalHistory _self;
  final $Res Function(_MedicalHistory) _then;

/// Create a copy of MedicalHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? healthId = null,Object? description = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MedicalHistory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,healthId: null == healthId ? _self.healthId : healthId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
