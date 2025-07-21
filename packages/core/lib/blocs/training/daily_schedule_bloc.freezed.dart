// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyScheduleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyScheduleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DailyScheduleEvent()';
}


}

/// @nodoc
class $DailyScheduleEventCopyWith<$Res>  {
$DailyScheduleEventCopyWith(DailyScheduleEvent _, $Res Function(DailyScheduleEvent) __);
}


/// Adds pattern-matching-related methods to [DailyScheduleEvent].
extension DailyScheduleEventPatterns on DailyScheduleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateDailySchedule value)?  createDailySchedule,TResult Function( GetDailyScheduleById value)?  getDailyScheduleById,TResult Function( GetDailyScheduleByUserId value)?  getDailyScheduleByUserId,TResult Function( GetAllDailySchedule value)?  getAllDailySchedule,TResult Function( UpdateDailySchedule value)?  updateDailySchedule,TResult Function( DeleteDailySchedule value)?  deleteDailySchedule,TResult Function( GetAllDailySchedulesByCreatorId value)?  getAllDailySchedulesByCreatorId,TResult Function( GetAllDailySchedulesByUserId value)?  getAllDailySchedulesByUserId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateDailySchedule() when createDailySchedule != null:
return createDailySchedule(_that);case GetDailyScheduleById() when getDailyScheduleById != null:
return getDailyScheduleById(_that);case GetDailyScheduleByUserId() when getDailyScheduleByUserId != null:
return getDailyScheduleByUserId(_that);case GetAllDailySchedule() when getAllDailySchedule != null:
return getAllDailySchedule(_that);case UpdateDailySchedule() when updateDailySchedule != null:
return updateDailySchedule(_that);case DeleteDailySchedule() when deleteDailySchedule != null:
return deleteDailySchedule(_that);case GetAllDailySchedulesByCreatorId() when getAllDailySchedulesByCreatorId != null:
return getAllDailySchedulesByCreatorId(_that);case GetAllDailySchedulesByUserId() when getAllDailySchedulesByUserId != null:
return getAllDailySchedulesByUserId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateDailySchedule value)  createDailySchedule,required TResult Function( GetDailyScheduleById value)  getDailyScheduleById,required TResult Function( GetDailyScheduleByUserId value)  getDailyScheduleByUserId,required TResult Function( GetAllDailySchedule value)  getAllDailySchedule,required TResult Function( UpdateDailySchedule value)  updateDailySchedule,required TResult Function( DeleteDailySchedule value)  deleteDailySchedule,required TResult Function( GetAllDailySchedulesByCreatorId value)  getAllDailySchedulesByCreatorId,required TResult Function( GetAllDailySchedulesByUserId value)  getAllDailySchedulesByUserId,}){
final _that = this;
switch (_that) {
case CreateDailySchedule():
return createDailySchedule(_that);case GetDailyScheduleById():
return getDailyScheduleById(_that);case GetDailyScheduleByUserId():
return getDailyScheduleByUserId(_that);case GetAllDailySchedule():
return getAllDailySchedule(_that);case UpdateDailySchedule():
return updateDailySchedule(_that);case DeleteDailySchedule():
return deleteDailySchedule(_that);case GetAllDailySchedulesByCreatorId():
return getAllDailySchedulesByCreatorId(_that);case GetAllDailySchedulesByUserId():
return getAllDailySchedulesByUserId(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateDailySchedule value)?  createDailySchedule,TResult? Function( GetDailyScheduleById value)?  getDailyScheduleById,TResult? Function( GetDailyScheduleByUserId value)?  getDailyScheduleByUserId,TResult? Function( GetAllDailySchedule value)?  getAllDailySchedule,TResult? Function( UpdateDailySchedule value)?  updateDailySchedule,TResult? Function( DeleteDailySchedule value)?  deleteDailySchedule,TResult? Function( GetAllDailySchedulesByCreatorId value)?  getAllDailySchedulesByCreatorId,TResult? Function( GetAllDailySchedulesByUserId value)?  getAllDailySchedulesByUserId,}){
final _that = this;
switch (_that) {
case CreateDailySchedule() when createDailySchedule != null:
return createDailySchedule(_that);case GetDailyScheduleById() when getDailyScheduleById != null:
return getDailyScheduleById(_that);case GetDailyScheduleByUserId() when getDailyScheduleByUserId != null:
return getDailyScheduleByUserId(_that);case GetAllDailySchedule() when getAllDailySchedule != null:
return getAllDailySchedule(_that);case UpdateDailySchedule() when updateDailySchedule != null:
return updateDailySchedule(_that);case DeleteDailySchedule() when deleteDailySchedule != null:
return deleteDailySchedule(_that);case GetAllDailySchedulesByCreatorId() when getAllDailySchedulesByCreatorId != null:
return getAllDailySchedulesByCreatorId(_that);case GetAllDailySchedulesByUserId() when getAllDailySchedulesByUserId != null:
return getAllDailySchedulesByUserId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DailySchedule dailySchedule)?  createDailySchedule,TResult Function( String id)?  getDailyScheduleById,TResult Function( String userId,  String day)?  getDailyScheduleByUserId,TResult Function( int page,  int limit)?  getAllDailySchedule,TResult Function( String id,  DailySchedule dailySchedule)?  updateDailySchedule,TResult Function( String id)?  deleteDailySchedule,TResult Function( String creatorId)?  getAllDailySchedulesByCreatorId,TResult Function( String userId)?  getAllDailySchedulesByUserId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateDailySchedule() when createDailySchedule != null:
return createDailySchedule(_that.dailySchedule);case GetDailyScheduleById() when getDailyScheduleById != null:
return getDailyScheduleById(_that.id);case GetDailyScheduleByUserId() when getDailyScheduleByUserId != null:
return getDailyScheduleByUserId(_that.userId,_that.day);case GetAllDailySchedule() when getAllDailySchedule != null:
return getAllDailySchedule(_that.page,_that.limit);case UpdateDailySchedule() when updateDailySchedule != null:
return updateDailySchedule(_that.id,_that.dailySchedule);case DeleteDailySchedule() when deleteDailySchedule != null:
return deleteDailySchedule(_that.id);case GetAllDailySchedulesByCreatorId() when getAllDailySchedulesByCreatorId != null:
return getAllDailySchedulesByCreatorId(_that.creatorId);case GetAllDailySchedulesByUserId() when getAllDailySchedulesByUserId != null:
return getAllDailySchedulesByUserId(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DailySchedule dailySchedule)  createDailySchedule,required TResult Function( String id)  getDailyScheduleById,required TResult Function( String userId,  String day)  getDailyScheduleByUserId,required TResult Function( int page,  int limit)  getAllDailySchedule,required TResult Function( String id,  DailySchedule dailySchedule)  updateDailySchedule,required TResult Function( String id)  deleteDailySchedule,required TResult Function( String creatorId)  getAllDailySchedulesByCreatorId,required TResult Function( String userId)  getAllDailySchedulesByUserId,}) {final _that = this;
switch (_that) {
case CreateDailySchedule():
return createDailySchedule(_that.dailySchedule);case GetDailyScheduleById():
return getDailyScheduleById(_that.id);case GetDailyScheduleByUserId():
return getDailyScheduleByUserId(_that.userId,_that.day);case GetAllDailySchedule():
return getAllDailySchedule(_that.page,_that.limit);case UpdateDailySchedule():
return updateDailySchedule(_that.id,_that.dailySchedule);case DeleteDailySchedule():
return deleteDailySchedule(_that.id);case GetAllDailySchedulesByCreatorId():
return getAllDailySchedulesByCreatorId(_that.creatorId);case GetAllDailySchedulesByUserId():
return getAllDailySchedulesByUserId(_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DailySchedule dailySchedule)?  createDailySchedule,TResult? Function( String id)?  getDailyScheduleById,TResult? Function( String userId,  String day)?  getDailyScheduleByUserId,TResult? Function( int page,  int limit)?  getAllDailySchedule,TResult? Function( String id,  DailySchedule dailySchedule)?  updateDailySchedule,TResult? Function( String id)?  deleteDailySchedule,TResult? Function( String creatorId)?  getAllDailySchedulesByCreatorId,TResult? Function( String userId)?  getAllDailySchedulesByUserId,}) {final _that = this;
switch (_that) {
case CreateDailySchedule() when createDailySchedule != null:
return createDailySchedule(_that.dailySchedule);case GetDailyScheduleById() when getDailyScheduleById != null:
return getDailyScheduleById(_that.id);case GetDailyScheduleByUserId() when getDailyScheduleByUserId != null:
return getDailyScheduleByUserId(_that.userId,_that.day);case GetAllDailySchedule() when getAllDailySchedule != null:
return getAllDailySchedule(_that.page,_that.limit);case UpdateDailySchedule() when updateDailySchedule != null:
return updateDailySchedule(_that.id,_that.dailySchedule);case DeleteDailySchedule() when deleteDailySchedule != null:
return deleteDailySchedule(_that.id);case GetAllDailySchedulesByCreatorId() when getAllDailySchedulesByCreatorId != null:
return getAllDailySchedulesByCreatorId(_that.creatorId);case GetAllDailySchedulesByUserId() when getAllDailySchedulesByUserId != null:
return getAllDailySchedulesByUserId(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class CreateDailySchedule implements DailyScheduleEvent {
  const CreateDailySchedule(this.dailySchedule);
  

 final  DailySchedule dailySchedule;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDailyScheduleCopyWith<CreateDailySchedule> get copyWith => _$CreateDailyScheduleCopyWithImpl<CreateDailySchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDailySchedule&&(identical(other.dailySchedule, dailySchedule) || other.dailySchedule == dailySchedule));
}


@override
int get hashCode => Object.hash(runtimeType,dailySchedule);

@override
String toString() {
  return 'DailyScheduleEvent.createDailySchedule(dailySchedule: $dailySchedule)';
}


}

/// @nodoc
abstract mixin class $CreateDailyScheduleCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $CreateDailyScheduleCopyWith(CreateDailySchedule value, $Res Function(CreateDailySchedule) _then) = _$CreateDailyScheduleCopyWithImpl;
@useResult
$Res call({
 DailySchedule dailySchedule
});


$DailyScheduleCopyWith<$Res> get dailySchedule;

}
/// @nodoc
class _$CreateDailyScheduleCopyWithImpl<$Res>
    implements $CreateDailyScheduleCopyWith<$Res> {
  _$CreateDailyScheduleCopyWithImpl(this._self, this._then);

  final CreateDailySchedule _self;
  final $Res Function(CreateDailySchedule) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dailySchedule = null,}) {
  return _then(CreateDailySchedule(
null == dailySchedule ? _self.dailySchedule : dailySchedule // ignore: cast_nullable_to_non_nullable
as DailySchedule,
  ));
}

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyScheduleCopyWith<$Res> get dailySchedule {
  
  return $DailyScheduleCopyWith<$Res>(_self.dailySchedule, (value) {
    return _then(_self.copyWith(dailySchedule: value));
  });
}
}

/// @nodoc


class GetDailyScheduleById implements DailyScheduleEvent {
  const GetDailyScheduleById(this.id);
  

 final  String id;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailyScheduleByIdCopyWith<GetDailyScheduleById> get copyWith => _$GetDailyScheduleByIdCopyWithImpl<GetDailyScheduleById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailyScheduleById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DailyScheduleEvent.getDailyScheduleById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetDailyScheduleByIdCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $GetDailyScheduleByIdCopyWith(GetDailyScheduleById value, $Res Function(GetDailyScheduleById) _then) = _$GetDailyScheduleByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetDailyScheduleByIdCopyWithImpl<$Res>
    implements $GetDailyScheduleByIdCopyWith<$Res> {
  _$GetDailyScheduleByIdCopyWithImpl(this._self, this._then);

  final GetDailyScheduleById _self;
  final $Res Function(GetDailyScheduleById) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetDailyScheduleById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetDailyScheduleByUserId implements DailyScheduleEvent {
  const GetDailyScheduleByUserId(this.userId, this.day);
  

 final  String userId;
 final  String day;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailyScheduleByUserIdCopyWith<GetDailyScheduleByUserId> get copyWith => _$GetDailyScheduleByUserIdCopyWithImpl<GetDailyScheduleByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailyScheduleByUserId&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.day, day) || other.day == day));
}


@override
int get hashCode => Object.hash(runtimeType,userId,day);

@override
String toString() {
  return 'DailyScheduleEvent.getDailyScheduleByUserId(userId: $userId, day: $day)';
}


}

/// @nodoc
abstract mixin class $GetDailyScheduleByUserIdCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $GetDailyScheduleByUserIdCopyWith(GetDailyScheduleByUserId value, $Res Function(GetDailyScheduleByUserId) _then) = _$GetDailyScheduleByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId, String day
});




}
/// @nodoc
class _$GetDailyScheduleByUserIdCopyWithImpl<$Res>
    implements $GetDailyScheduleByUserIdCopyWith<$Res> {
  _$GetDailyScheduleByUserIdCopyWithImpl(this._self, this._then);

  final GetDailyScheduleByUserId _self;
  final $Res Function(GetDailyScheduleByUserId) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? day = null,}) {
  return _then(GetDailyScheduleByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllDailySchedule implements DailyScheduleEvent {
  const GetAllDailySchedule({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllDailyScheduleCopyWith<GetAllDailySchedule> get copyWith => _$GetAllDailyScheduleCopyWithImpl<GetAllDailySchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDailySchedule&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'DailyScheduleEvent.getAllDailySchedule(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllDailyScheduleCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $GetAllDailyScheduleCopyWith(GetAllDailySchedule value, $Res Function(GetAllDailySchedule) _then) = _$GetAllDailyScheduleCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllDailyScheduleCopyWithImpl<$Res>
    implements $GetAllDailyScheduleCopyWith<$Res> {
  _$GetAllDailyScheduleCopyWithImpl(this._self, this._then);

  final GetAllDailySchedule _self;
  final $Res Function(GetAllDailySchedule) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllDailySchedule(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateDailySchedule implements DailyScheduleEvent {
  const UpdateDailySchedule(this.id, this.dailySchedule);
  

 final  String id;
 final  DailySchedule dailySchedule;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDailyScheduleCopyWith<UpdateDailySchedule> get copyWith => _$UpdateDailyScheduleCopyWithImpl<UpdateDailySchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDailySchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.dailySchedule, dailySchedule) || other.dailySchedule == dailySchedule));
}


@override
int get hashCode => Object.hash(runtimeType,id,dailySchedule);

@override
String toString() {
  return 'DailyScheduleEvent.updateDailySchedule(id: $id, dailySchedule: $dailySchedule)';
}


}

/// @nodoc
abstract mixin class $UpdateDailyScheduleCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $UpdateDailyScheduleCopyWith(UpdateDailySchedule value, $Res Function(UpdateDailySchedule) _then) = _$UpdateDailyScheduleCopyWithImpl;
@useResult
$Res call({
 String id, DailySchedule dailySchedule
});


$DailyScheduleCopyWith<$Res> get dailySchedule;

}
/// @nodoc
class _$UpdateDailyScheduleCopyWithImpl<$Res>
    implements $UpdateDailyScheduleCopyWith<$Res> {
  _$UpdateDailyScheduleCopyWithImpl(this._self, this._then);

  final UpdateDailySchedule _self;
  final $Res Function(UpdateDailySchedule) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dailySchedule = null,}) {
  return _then(UpdateDailySchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == dailySchedule ? _self.dailySchedule : dailySchedule // ignore: cast_nullable_to_non_nullable
as DailySchedule,
  ));
}

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyScheduleCopyWith<$Res> get dailySchedule {
  
  return $DailyScheduleCopyWith<$Res>(_self.dailySchedule, (value) {
    return _then(_self.copyWith(dailySchedule: value));
  });
}
}

/// @nodoc


class DeleteDailySchedule implements DailyScheduleEvent {
  const DeleteDailySchedule(this.id);
  

 final  String id;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteDailyScheduleCopyWith<DeleteDailySchedule> get copyWith => _$DeleteDailyScheduleCopyWithImpl<DeleteDailySchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteDailySchedule&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DailyScheduleEvent.deleteDailySchedule(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteDailyScheduleCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $DeleteDailyScheduleCopyWith(DeleteDailySchedule value, $Res Function(DeleteDailySchedule) _then) = _$DeleteDailyScheduleCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteDailyScheduleCopyWithImpl<$Res>
    implements $DeleteDailyScheduleCopyWith<$Res> {
  _$DeleteDailyScheduleCopyWithImpl(this._self, this._then);

  final DeleteDailySchedule _self;
  final $Res Function(DeleteDailySchedule) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteDailySchedule(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllDailySchedulesByCreatorId implements DailyScheduleEvent {
  const GetAllDailySchedulesByCreatorId(this.creatorId);
  

 final  String creatorId;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllDailySchedulesByCreatorIdCopyWith<GetAllDailySchedulesByCreatorId> get copyWith => _$GetAllDailySchedulesByCreatorIdCopyWithImpl<GetAllDailySchedulesByCreatorId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDailySchedulesByCreatorId&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId));
}


@override
int get hashCode => Object.hash(runtimeType,creatorId);

@override
String toString() {
  return 'DailyScheduleEvent.getAllDailySchedulesByCreatorId(creatorId: $creatorId)';
}


}

/// @nodoc
abstract mixin class $GetAllDailySchedulesByCreatorIdCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $GetAllDailySchedulesByCreatorIdCopyWith(GetAllDailySchedulesByCreatorId value, $Res Function(GetAllDailySchedulesByCreatorId) _then) = _$GetAllDailySchedulesByCreatorIdCopyWithImpl;
@useResult
$Res call({
 String creatorId
});




}
/// @nodoc
class _$GetAllDailySchedulesByCreatorIdCopyWithImpl<$Res>
    implements $GetAllDailySchedulesByCreatorIdCopyWith<$Res> {
  _$GetAllDailySchedulesByCreatorIdCopyWithImpl(this._self, this._then);

  final GetAllDailySchedulesByCreatorId _self;
  final $Res Function(GetAllDailySchedulesByCreatorId) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? creatorId = null,}) {
  return _then(GetAllDailySchedulesByCreatorId(
null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllDailySchedulesByUserId implements DailyScheduleEvent {
  const GetAllDailySchedulesByUserId(this.userId);
  

 final  String userId;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllDailySchedulesByUserIdCopyWith<GetAllDailySchedulesByUserId> get copyWith => _$GetAllDailySchedulesByUserIdCopyWithImpl<GetAllDailySchedulesByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDailySchedulesByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'DailyScheduleEvent.getAllDailySchedulesByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetAllDailySchedulesByUserIdCopyWith<$Res> implements $DailyScheduleEventCopyWith<$Res> {
  factory $GetAllDailySchedulesByUserIdCopyWith(GetAllDailySchedulesByUserId value, $Res Function(GetAllDailySchedulesByUserId) _then) = _$GetAllDailySchedulesByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetAllDailySchedulesByUserIdCopyWithImpl<$Res>
    implements $GetAllDailySchedulesByUserIdCopyWith<$Res> {
  _$GetAllDailySchedulesByUserIdCopyWithImpl(this._self, this._then);

  final GetAllDailySchedulesByUserId _self;
  final $Res Function(GetAllDailySchedulesByUserId) _then;

/// Create a copy of DailyScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetAllDailySchedulesByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DailyScheduleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyScheduleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DailyScheduleState()';
}


}

/// @nodoc
class $DailyScheduleStateCopyWith<$Res>  {
$DailyScheduleStateCopyWith(DailyScheduleState _, $Res Function(DailyScheduleState) __);
}


/// Adds pattern-matching-related methods to [DailyScheduleState].
extension DailyScheduleStatePatterns on DailyScheduleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DailySchedule_Initial value)?  initial,TResult Function( DailySchedule_Loading value)?  loading,TResult Function( LoadedDailySchedule value)?  loadedDailySchedule,TResult Function( DailySchedule_LoadingMore value)?  loadingMore,TResult Function( LoadedDailySchedules value)?  loadedDailySchedules,TResult Function( LoadedAllDailySchedulesByCreatorId value)?  loadedAllDailySchedulesByCreatorId,TResult Function( DailySchedule_Error value)?  error,TResult Function( DailySchedule_Success value)?  success,TResult Function( LoadedAllDailySchedulesByUserId value)?  loadedAllDailySchedulesByUserId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DailySchedule_Initial() when initial != null:
return initial(_that);case DailySchedule_Loading() when loading != null:
return loading(_that);case LoadedDailySchedule() when loadedDailySchedule != null:
return loadedDailySchedule(_that);case DailySchedule_LoadingMore() when loadingMore != null:
return loadingMore(_that);case LoadedDailySchedules() when loadedDailySchedules != null:
return loadedDailySchedules(_that);case LoadedAllDailySchedulesByCreatorId() when loadedAllDailySchedulesByCreatorId != null:
return loadedAllDailySchedulesByCreatorId(_that);case DailySchedule_Error() when error != null:
return error(_that);case DailySchedule_Success() when success != null:
return success(_that);case LoadedAllDailySchedulesByUserId() when loadedAllDailySchedulesByUserId != null:
return loadedAllDailySchedulesByUserId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DailySchedule_Initial value)  initial,required TResult Function( DailySchedule_Loading value)  loading,required TResult Function( LoadedDailySchedule value)  loadedDailySchedule,required TResult Function( DailySchedule_LoadingMore value)  loadingMore,required TResult Function( LoadedDailySchedules value)  loadedDailySchedules,required TResult Function( LoadedAllDailySchedulesByCreatorId value)  loadedAllDailySchedulesByCreatorId,required TResult Function( DailySchedule_Error value)  error,required TResult Function( DailySchedule_Success value)  success,required TResult Function( LoadedAllDailySchedulesByUserId value)  loadedAllDailySchedulesByUserId,}){
final _that = this;
switch (_that) {
case DailySchedule_Initial():
return initial(_that);case DailySchedule_Loading():
return loading(_that);case LoadedDailySchedule():
return loadedDailySchedule(_that);case DailySchedule_LoadingMore():
return loadingMore(_that);case LoadedDailySchedules():
return loadedDailySchedules(_that);case LoadedAllDailySchedulesByCreatorId():
return loadedAllDailySchedulesByCreatorId(_that);case DailySchedule_Error():
return error(_that);case DailySchedule_Success():
return success(_that);case LoadedAllDailySchedulesByUserId():
return loadedAllDailySchedulesByUserId(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DailySchedule_Initial value)?  initial,TResult? Function( DailySchedule_Loading value)?  loading,TResult? Function( LoadedDailySchedule value)?  loadedDailySchedule,TResult? Function( DailySchedule_LoadingMore value)?  loadingMore,TResult? Function( LoadedDailySchedules value)?  loadedDailySchedules,TResult? Function( LoadedAllDailySchedulesByCreatorId value)?  loadedAllDailySchedulesByCreatorId,TResult? Function( DailySchedule_Error value)?  error,TResult? Function( DailySchedule_Success value)?  success,TResult? Function( LoadedAllDailySchedulesByUserId value)?  loadedAllDailySchedulesByUserId,}){
final _that = this;
switch (_that) {
case DailySchedule_Initial() when initial != null:
return initial(_that);case DailySchedule_Loading() when loading != null:
return loading(_that);case LoadedDailySchedule() when loadedDailySchedule != null:
return loadedDailySchedule(_that);case DailySchedule_LoadingMore() when loadingMore != null:
return loadingMore(_that);case LoadedDailySchedules() when loadedDailySchedules != null:
return loadedDailySchedules(_that);case LoadedAllDailySchedulesByCreatorId() when loadedAllDailySchedulesByCreatorId != null:
return loadedAllDailySchedulesByCreatorId(_that);case DailySchedule_Error() when error != null:
return error(_that);case DailySchedule_Success() when success != null:
return success(_that);case LoadedAllDailySchedulesByUserId() when loadedAllDailySchedulesByUserId != null:
return loadedAllDailySchedulesByUserId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DailySchedule dailySchedule)?  loadedDailySchedule,TResult Function()?  loadingMore,TResult Function( List<DailySchedule> dailySchedules,  int currentPage,  int limit,  bool hasMore)?  loadedDailySchedules,TResult Function( List<DailySchedule> schedules,  Map<String, User> userMap)?  loadedAllDailySchedulesByCreatorId,TResult Function( String message)?  error,TResult Function( String message)?  success,TResult Function( List<DailySchedule> schedules,  Map<String, User> userMap)?  loadedAllDailySchedulesByUserId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DailySchedule_Initial() when initial != null:
return initial();case DailySchedule_Loading() when loading != null:
return loading();case LoadedDailySchedule() when loadedDailySchedule != null:
return loadedDailySchedule(_that.dailySchedule);case DailySchedule_LoadingMore() when loadingMore != null:
return loadingMore();case LoadedDailySchedules() when loadedDailySchedules != null:
return loadedDailySchedules(_that.dailySchedules,_that.currentPage,_that.limit,_that.hasMore);case LoadedAllDailySchedulesByCreatorId() when loadedAllDailySchedulesByCreatorId != null:
return loadedAllDailySchedulesByCreatorId(_that.schedules,_that.userMap);case DailySchedule_Error() when error != null:
return error(_that.message);case DailySchedule_Success() when success != null:
return success(_that.message);case LoadedAllDailySchedulesByUserId() when loadedAllDailySchedulesByUserId != null:
return loadedAllDailySchedulesByUserId(_that.schedules,_that.userMap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DailySchedule dailySchedule)  loadedDailySchedule,required TResult Function()  loadingMore,required TResult Function( List<DailySchedule> dailySchedules,  int currentPage,  int limit,  bool hasMore)  loadedDailySchedules,required TResult Function( List<DailySchedule> schedules,  Map<String, User> userMap)  loadedAllDailySchedulesByCreatorId,required TResult Function( String message)  error,required TResult Function( String message)  success,required TResult Function( List<DailySchedule> schedules,  Map<String, User> userMap)  loadedAllDailySchedulesByUserId,}) {final _that = this;
switch (_that) {
case DailySchedule_Initial():
return initial();case DailySchedule_Loading():
return loading();case LoadedDailySchedule():
return loadedDailySchedule(_that.dailySchedule);case DailySchedule_LoadingMore():
return loadingMore();case LoadedDailySchedules():
return loadedDailySchedules(_that.dailySchedules,_that.currentPage,_that.limit,_that.hasMore);case LoadedAllDailySchedulesByCreatorId():
return loadedAllDailySchedulesByCreatorId(_that.schedules,_that.userMap);case DailySchedule_Error():
return error(_that.message);case DailySchedule_Success():
return success(_that.message);case LoadedAllDailySchedulesByUserId():
return loadedAllDailySchedulesByUserId(_that.schedules,_that.userMap);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DailySchedule dailySchedule)?  loadedDailySchedule,TResult? Function()?  loadingMore,TResult? Function( List<DailySchedule> dailySchedules,  int currentPage,  int limit,  bool hasMore)?  loadedDailySchedules,TResult? Function( List<DailySchedule> schedules,  Map<String, User> userMap)?  loadedAllDailySchedulesByCreatorId,TResult? Function( String message)?  error,TResult? Function( String message)?  success,TResult? Function( List<DailySchedule> schedules,  Map<String, User> userMap)?  loadedAllDailySchedulesByUserId,}) {final _that = this;
switch (_that) {
case DailySchedule_Initial() when initial != null:
return initial();case DailySchedule_Loading() when loading != null:
return loading();case LoadedDailySchedule() when loadedDailySchedule != null:
return loadedDailySchedule(_that.dailySchedule);case DailySchedule_LoadingMore() when loadingMore != null:
return loadingMore();case LoadedDailySchedules() when loadedDailySchedules != null:
return loadedDailySchedules(_that.dailySchedules,_that.currentPage,_that.limit,_that.hasMore);case LoadedAllDailySchedulesByCreatorId() when loadedAllDailySchedulesByCreatorId != null:
return loadedAllDailySchedulesByCreatorId(_that.schedules,_that.userMap);case DailySchedule_Error() when error != null:
return error(_that.message);case DailySchedule_Success() when success != null:
return success(_that.message);case LoadedAllDailySchedulesByUserId() when loadedAllDailySchedulesByUserId != null:
return loadedAllDailySchedulesByUserId(_that.schedules,_that.userMap);case _:
  return null;

}
}

}

/// @nodoc


class DailySchedule_Initial implements DailyScheduleState {
  const DailySchedule_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DailyScheduleState.initial()';
}


}




/// @nodoc


class DailySchedule_Loading implements DailyScheduleState {
  const DailySchedule_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DailyScheduleState.loading()';
}


}




/// @nodoc


class LoadedDailySchedule implements DailyScheduleState {
  const LoadedDailySchedule(this.dailySchedule);
  

 final  DailySchedule dailySchedule;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedDailyScheduleCopyWith<LoadedDailySchedule> get copyWith => _$LoadedDailyScheduleCopyWithImpl<LoadedDailySchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedDailySchedule&&(identical(other.dailySchedule, dailySchedule) || other.dailySchedule == dailySchedule));
}


@override
int get hashCode => Object.hash(runtimeType,dailySchedule);

@override
String toString() {
  return 'DailyScheduleState.loadedDailySchedule(dailySchedule: $dailySchedule)';
}


}

/// @nodoc
abstract mixin class $LoadedDailyScheduleCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $LoadedDailyScheduleCopyWith(LoadedDailySchedule value, $Res Function(LoadedDailySchedule) _then) = _$LoadedDailyScheduleCopyWithImpl;
@useResult
$Res call({
 DailySchedule dailySchedule
});


$DailyScheduleCopyWith<$Res> get dailySchedule;

}
/// @nodoc
class _$LoadedDailyScheduleCopyWithImpl<$Res>
    implements $LoadedDailyScheduleCopyWith<$Res> {
  _$LoadedDailyScheduleCopyWithImpl(this._self, this._then);

  final LoadedDailySchedule _self;
  final $Res Function(LoadedDailySchedule) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dailySchedule = null,}) {
  return _then(LoadedDailySchedule(
null == dailySchedule ? _self.dailySchedule : dailySchedule // ignore: cast_nullable_to_non_nullable
as DailySchedule,
  ));
}

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyScheduleCopyWith<$Res> get dailySchedule {
  
  return $DailyScheduleCopyWith<$Res>(_self.dailySchedule, (value) {
    return _then(_self.copyWith(dailySchedule: value));
  });
}
}

/// @nodoc


class DailySchedule_LoadingMore implements DailyScheduleState {
  const DailySchedule_LoadingMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule_LoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DailyScheduleState.loadingMore()';
}


}




/// @nodoc


class LoadedDailySchedules implements DailyScheduleState {
  const LoadedDailySchedules(final  List<DailySchedule> dailySchedules, this.currentPage, this.limit, this.hasMore): _dailySchedules = dailySchedules;
  

 final  List<DailySchedule> _dailySchedules;
 List<DailySchedule> get dailySchedules {
  if (_dailySchedules is EqualUnmodifiableListView) return _dailySchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dailySchedules);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedDailySchedulesCopyWith<LoadedDailySchedules> get copyWith => _$LoadedDailySchedulesCopyWithImpl<LoadedDailySchedules>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedDailySchedules&&const DeepCollectionEquality().equals(other._dailySchedules, _dailySchedules)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dailySchedules),currentPage,limit,hasMore);

@override
String toString() {
  return 'DailyScheduleState.loadedDailySchedules(dailySchedules: $dailySchedules, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedDailySchedulesCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $LoadedDailySchedulesCopyWith(LoadedDailySchedules value, $Res Function(LoadedDailySchedules) _then) = _$LoadedDailySchedulesCopyWithImpl;
@useResult
$Res call({
 List<DailySchedule> dailySchedules, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedDailySchedulesCopyWithImpl<$Res>
    implements $LoadedDailySchedulesCopyWith<$Res> {
  _$LoadedDailySchedulesCopyWithImpl(this._self, this._then);

  final LoadedDailySchedules _self;
  final $Res Function(LoadedDailySchedules) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dailySchedules = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedDailySchedules(
null == dailySchedules ? _self._dailySchedules : dailySchedules // ignore: cast_nullable_to_non_nullable
as List<DailySchedule>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadedAllDailySchedulesByCreatorId implements DailyScheduleState {
  const LoadedAllDailySchedulesByCreatorId(final  List<DailySchedule> schedules, final  Map<String, User> userMap): _schedules = schedules,_userMap = userMap;
  

 final  List<DailySchedule> _schedules;
 List<DailySchedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}

 final  Map<String, User> _userMap;
 Map<String, User> get userMap {
  if (_userMap is EqualUnmodifiableMapView) return _userMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_userMap);
}


/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAllDailySchedulesByCreatorIdCopyWith<LoadedAllDailySchedulesByCreatorId> get copyWith => _$LoadedAllDailySchedulesByCreatorIdCopyWithImpl<LoadedAllDailySchedulesByCreatorId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAllDailySchedulesByCreatorId&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&const DeepCollectionEquality().equals(other._userMap, _userMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules),const DeepCollectionEquality().hash(_userMap));

@override
String toString() {
  return 'DailyScheduleState.loadedAllDailySchedulesByCreatorId(schedules: $schedules, userMap: $userMap)';
}


}

/// @nodoc
abstract mixin class $LoadedAllDailySchedulesByCreatorIdCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $LoadedAllDailySchedulesByCreatorIdCopyWith(LoadedAllDailySchedulesByCreatorId value, $Res Function(LoadedAllDailySchedulesByCreatorId) _then) = _$LoadedAllDailySchedulesByCreatorIdCopyWithImpl;
@useResult
$Res call({
 List<DailySchedule> schedules, Map<String, User> userMap
});




}
/// @nodoc
class _$LoadedAllDailySchedulesByCreatorIdCopyWithImpl<$Res>
    implements $LoadedAllDailySchedulesByCreatorIdCopyWith<$Res> {
  _$LoadedAllDailySchedulesByCreatorIdCopyWithImpl(this._self, this._then);

  final LoadedAllDailySchedulesByCreatorId _self;
  final $Res Function(LoadedAllDailySchedulesByCreatorId) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedules = null,Object? userMap = null,}) {
  return _then(LoadedAllDailySchedulesByCreatorId(
null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<DailySchedule>,null == userMap ? _self._userMap : userMap // ignore: cast_nullable_to_non_nullable
as Map<String, User>,
  ));
}


}

/// @nodoc


class DailySchedule_Error implements DailyScheduleState {
  const DailySchedule_Error(this.message);
  

 final  String message;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailySchedule_ErrorCopyWith<DailySchedule_Error> get copyWith => _$DailySchedule_ErrorCopyWithImpl<DailySchedule_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DailyScheduleState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DailySchedule_ErrorCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $DailySchedule_ErrorCopyWith(DailySchedule_Error value, $Res Function(DailySchedule_Error) _then) = _$DailySchedule_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DailySchedule_ErrorCopyWithImpl<$Res>
    implements $DailySchedule_ErrorCopyWith<$Res> {
  _$DailySchedule_ErrorCopyWithImpl(this._self, this._then);

  final DailySchedule_Error _self;
  final $Res Function(DailySchedule_Error) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DailySchedule_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DailySchedule_Success implements DailyScheduleState {
  const DailySchedule_Success(this.message);
  

 final  String message;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailySchedule_SuccessCopyWith<DailySchedule_Success> get copyWith => _$DailySchedule_SuccessCopyWithImpl<DailySchedule_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySchedule_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DailyScheduleState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $DailySchedule_SuccessCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $DailySchedule_SuccessCopyWith(DailySchedule_Success value, $Res Function(DailySchedule_Success) _then) = _$DailySchedule_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DailySchedule_SuccessCopyWithImpl<$Res>
    implements $DailySchedule_SuccessCopyWith<$Res> {
  _$DailySchedule_SuccessCopyWithImpl(this._self, this._then);

  final DailySchedule_Success _self;
  final $Res Function(DailySchedule_Success) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DailySchedule_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedAllDailySchedulesByUserId implements DailyScheduleState {
  const LoadedAllDailySchedulesByUserId(final  List<DailySchedule> schedules, final  Map<String, User> userMap): _schedules = schedules,_userMap = userMap;
  

 final  List<DailySchedule> _schedules;
 List<DailySchedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}

 final  Map<String, User> _userMap;
 Map<String, User> get userMap {
  if (_userMap is EqualUnmodifiableMapView) return _userMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_userMap);
}


/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAllDailySchedulesByUserIdCopyWith<LoadedAllDailySchedulesByUserId> get copyWith => _$LoadedAllDailySchedulesByUserIdCopyWithImpl<LoadedAllDailySchedulesByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAllDailySchedulesByUserId&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&const DeepCollectionEquality().equals(other._userMap, _userMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules),const DeepCollectionEquality().hash(_userMap));

@override
String toString() {
  return 'DailyScheduleState.loadedAllDailySchedulesByUserId(schedules: $schedules, userMap: $userMap)';
}


}

/// @nodoc
abstract mixin class $LoadedAllDailySchedulesByUserIdCopyWith<$Res> implements $DailyScheduleStateCopyWith<$Res> {
  factory $LoadedAllDailySchedulesByUserIdCopyWith(LoadedAllDailySchedulesByUserId value, $Res Function(LoadedAllDailySchedulesByUserId) _then) = _$LoadedAllDailySchedulesByUserIdCopyWithImpl;
@useResult
$Res call({
 List<DailySchedule> schedules, Map<String, User> userMap
});




}
/// @nodoc
class _$LoadedAllDailySchedulesByUserIdCopyWithImpl<$Res>
    implements $LoadedAllDailySchedulesByUserIdCopyWith<$Res> {
  _$LoadedAllDailySchedulesByUserIdCopyWithImpl(this._self, this._then);

  final LoadedAllDailySchedulesByUserId _self;
  final $Res Function(LoadedAllDailySchedulesByUserId) _then;

/// Create a copy of DailyScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? schedules = null,Object? userMap = null,}) {
  return _then(LoadedAllDailySchedulesByUserId(
null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<DailySchedule>,null == userMap ? _self._userMap : userMap // ignore: cast_nullable_to_non_nullable
as Map<String, User>,
  ));
}


}

// dart format on
