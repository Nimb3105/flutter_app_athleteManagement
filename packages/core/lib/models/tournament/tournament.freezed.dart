// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tournament {

 String? get id; String get location; String get name; String get description; String get organizer; String get level;@UtcDateTimeConverter() DateTime get startDate;@UtcDateTimeConverter() DateTime get endDate;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Tournament
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TournamentCopyWith<Tournament> get copyWith => _$TournamentCopyWithImpl<Tournament>(this as Tournament, _$identity);

  /// Serializes this Tournament to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tournament&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.level, level) || other.level == level)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,name,description,organizer,level,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'Tournament(id: $id, location: $location, name: $name, description: $description, organizer: $organizer, level: $level, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TournamentCopyWith<$Res>  {
  factory $TournamentCopyWith(Tournament value, $Res Function(Tournament) _then) = _$TournamentCopyWithImpl;
@useResult
$Res call({
 String? id, String location, String name, String description, String organizer, String level,@UtcDateTimeConverter() DateTime startDate,@UtcDateTimeConverter() DateTime endDate,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$TournamentCopyWithImpl<$Res>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._self, this._then);

  final Tournament _self;
  final $Res Function(Tournament) _then;

/// Create a copy of Tournament
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? location = null,Object? name = null,Object? description = null,Object? organizer = null,Object? level = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Tournament implements Tournament {
  const _Tournament({required this.id, required this.location, required this.name, required this.description, required this.organizer, required this.level, @UtcDateTimeConverter() required this.startDate, @UtcDateTimeConverter() required this.endDate, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt});
  factory _Tournament.fromJson(Map<String, dynamic> json) => _$TournamentFromJson(json);

@override final  String? id;
@override final  String location;
@override final  String name;
@override final  String description;
@override final  String organizer;
@override final  String level;
@override@UtcDateTimeConverter() final  DateTime startDate;
@override@UtcDateTimeConverter() final  DateTime endDate;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Tournament
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TournamentCopyWith<_Tournament> get copyWith => __$TournamentCopyWithImpl<_Tournament>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TournamentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tournament&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.level, level) || other.level == level)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,name,description,organizer,level,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'Tournament(id: $id, location: $location, name: $name, description: $description, organizer: $organizer, level: $level, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TournamentCopyWith<$Res> implements $TournamentCopyWith<$Res> {
  factory _$TournamentCopyWith(_Tournament value, $Res Function(_Tournament) _then) = __$TournamentCopyWithImpl;
@override @useResult
$Res call({
 String? id, String location, String name, String description, String organizer, String level,@UtcDateTimeConverter() DateTime startDate,@UtcDateTimeConverter() DateTime endDate,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$TournamentCopyWithImpl<$Res>
    implements _$TournamentCopyWith<$Res> {
  __$TournamentCopyWithImpl(this._self, this._then);

  final _Tournament _self;
  final $Res Function(_Tournament) _then;

/// Create a copy of Tournament
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? location = null,Object? name = null,Object? description = null,Object? organizer = null,Object? level = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Tournament(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
