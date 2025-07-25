// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NutritionPlanEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlanEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NutritionPlanEvent()';
}


}

/// @nodoc
class $NutritionPlanEventCopyWith<$Res>  {
$NutritionPlanEventCopyWith(NutritionPlanEvent _, $Res Function(NutritionPlanEvent) __);
}


/// Adds pattern-matching-related methods to [NutritionPlanEvent].
extension NutritionPlanEventPatterns on NutritionPlanEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateNutritionPlan value)?  createNutritionPlan,TResult Function( GetNutritionPlanById value)?  getNutritionPlanById,TResult Function( GetNutritionPlansByUserId value)?  getNutritionPlansByUserId,TResult Function( GetAllNutritionPlans value)?  getAllNutritionPlans,TResult Function( UpdateNutritionPlan value)?  updateNutritionPlan,TResult Function( DeleteNutritionPlan value)?  deleteNutritionPlan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateNutritionPlan() when createNutritionPlan != null:
return createNutritionPlan(_that);case GetNutritionPlanById() when getNutritionPlanById != null:
return getNutritionPlanById(_that);case GetNutritionPlansByUserId() when getNutritionPlansByUserId != null:
return getNutritionPlansByUserId(_that);case GetAllNutritionPlans() when getAllNutritionPlans != null:
return getAllNutritionPlans(_that);case UpdateNutritionPlan() when updateNutritionPlan != null:
return updateNutritionPlan(_that);case DeleteNutritionPlan() when deleteNutritionPlan != null:
return deleteNutritionPlan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateNutritionPlan value)  createNutritionPlan,required TResult Function( GetNutritionPlanById value)  getNutritionPlanById,required TResult Function( GetNutritionPlansByUserId value)  getNutritionPlansByUserId,required TResult Function( GetAllNutritionPlans value)  getAllNutritionPlans,required TResult Function( UpdateNutritionPlan value)  updateNutritionPlan,required TResult Function( DeleteNutritionPlan value)  deleteNutritionPlan,}){
final _that = this;
switch (_that) {
case CreateNutritionPlan():
return createNutritionPlan(_that);case GetNutritionPlanById():
return getNutritionPlanById(_that);case GetNutritionPlansByUserId():
return getNutritionPlansByUserId(_that);case GetAllNutritionPlans():
return getAllNutritionPlans(_that);case UpdateNutritionPlan():
return updateNutritionPlan(_that);case DeleteNutritionPlan():
return deleteNutritionPlan(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateNutritionPlan value)?  createNutritionPlan,TResult? Function( GetNutritionPlanById value)?  getNutritionPlanById,TResult? Function( GetNutritionPlansByUserId value)?  getNutritionPlansByUserId,TResult? Function( GetAllNutritionPlans value)?  getAllNutritionPlans,TResult? Function( UpdateNutritionPlan value)?  updateNutritionPlan,TResult? Function( DeleteNutritionPlan value)?  deleteNutritionPlan,}){
final _that = this;
switch (_that) {
case CreateNutritionPlan() when createNutritionPlan != null:
return createNutritionPlan(_that);case GetNutritionPlanById() when getNutritionPlanById != null:
return getNutritionPlanById(_that);case GetNutritionPlansByUserId() when getNutritionPlansByUserId != null:
return getNutritionPlansByUserId(_that);case GetAllNutritionPlans() when getAllNutritionPlans != null:
return getAllNutritionPlans(_that);case UpdateNutritionPlan() when updateNutritionPlan != null:
return updateNutritionPlan(_that);case DeleteNutritionPlan() when deleteNutritionPlan != null:
return deleteNutritionPlan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NutritionPlan nutritionPlan)?  createNutritionPlan,TResult Function( String id)?  getNutritionPlanById,TResult Function( String userId)?  getNutritionPlansByUserId,TResult Function( int page,  int limit)?  getAllNutritionPlans,TResult Function( String id,  NutritionPlan nutritionPlan)?  updateNutritionPlan,TResult Function( String id)?  deleteNutritionPlan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateNutritionPlan() when createNutritionPlan != null:
return createNutritionPlan(_that.nutritionPlan);case GetNutritionPlanById() when getNutritionPlanById != null:
return getNutritionPlanById(_that.id);case GetNutritionPlansByUserId() when getNutritionPlansByUserId != null:
return getNutritionPlansByUserId(_that.userId);case GetAllNutritionPlans() when getAllNutritionPlans != null:
return getAllNutritionPlans(_that.page,_that.limit);case UpdateNutritionPlan() when updateNutritionPlan != null:
return updateNutritionPlan(_that.id,_that.nutritionPlan);case DeleteNutritionPlan() when deleteNutritionPlan != null:
return deleteNutritionPlan(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NutritionPlan nutritionPlan)  createNutritionPlan,required TResult Function( String id)  getNutritionPlanById,required TResult Function( String userId)  getNutritionPlansByUserId,required TResult Function( int page,  int limit)  getAllNutritionPlans,required TResult Function( String id,  NutritionPlan nutritionPlan)  updateNutritionPlan,required TResult Function( String id)  deleteNutritionPlan,}) {final _that = this;
switch (_that) {
case CreateNutritionPlan():
return createNutritionPlan(_that.nutritionPlan);case GetNutritionPlanById():
return getNutritionPlanById(_that.id);case GetNutritionPlansByUserId():
return getNutritionPlansByUserId(_that.userId);case GetAllNutritionPlans():
return getAllNutritionPlans(_that.page,_that.limit);case UpdateNutritionPlan():
return updateNutritionPlan(_that.id,_that.nutritionPlan);case DeleteNutritionPlan():
return deleteNutritionPlan(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NutritionPlan nutritionPlan)?  createNutritionPlan,TResult? Function( String id)?  getNutritionPlanById,TResult? Function( String userId)?  getNutritionPlansByUserId,TResult? Function( int page,  int limit)?  getAllNutritionPlans,TResult? Function( String id,  NutritionPlan nutritionPlan)?  updateNutritionPlan,TResult? Function( String id)?  deleteNutritionPlan,}) {final _that = this;
switch (_that) {
case CreateNutritionPlan() when createNutritionPlan != null:
return createNutritionPlan(_that.nutritionPlan);case GetNutritionPlanById() when getNutritionPlanById != null:
return getNutritionPlanById(_that.id);case GetNutritionPlansByUserId() when getNutritionPlansByUserId != null:
return getNutritionPlansByUserId(_that.userId);case GetAllNutritionPlans() when getAllNutritionPlans != null:
return getAllNutritionPlans(_that.page,_that.limit);case UpdateNutritionPlan() when updateNutritionPlan != null:
return updateNutritionPlan(_that.id,_that.nutritionPlan);case DeleteNutritionPlan() when deleteNutritionPlan != null:
return deleteNutritionPlan(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class CreateNutritionPlan implements NutritionPlanEvent {
  const CreateNutritionPlan(this.nutritionPlan);
  

 final  NutritionPlan nutritionPlan;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNutritionPlanCopyWith<CreateNutritionPlan> get copyWith => _$CreateNutritionPlanCopyWithImpl<CreateNutritionPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNutritionPlan&&(identical(other.nutritionPlan, nutritionPlan) || other.nutritionPlan == nutritionPlan));
}


@override
int get hashCode => Object.hash(runtimeType,nutritionPlan);

@override
String toString() {
  return 'NutritionPlanEvent.createNutritionPlan(nutritionPlan: $nutritionPlan)';
}


}

/// @nodoc
abstract mixin class $CreateNutritionPlanCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $CreateNutritionPlanCopyWith(CreateNutritionPlan value, $Res Function(CreateNutritionPlan) _then) = _$CreateNutritionPlanCopyWithImpl;
@useResult
$Res call({
 NutritionPlan nutritionPlan
});


$NutritionPlanCopyWith<$Res> get nutritionPlan;

}
/// @nodoc
class _$CreateNutritionPlanCopyWithImpl<$Res>
    implements $CreateNutritionPlanCopyWith<$Res> {
  _$CreateNutritionPlanCopyWithImpl(this._self, this._then);

  final CreateNutritionPlan _self;
  final $Res Function(CreateNutritionPlan) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nutritionPlan = null,}) {
  return _then(CreateNutritionPlan(
null == nutritionPlan ? _self.nutritionPlan : nutritionPlan // ignore: cast_nullable_to_non_nullable
as NutritionPlan,
  ));
}

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionPlanCopyWith<$Res> get nutritionPlan {
  
  return $NutritionPlanCopyWith<$Res>(_self.nutritionPlan, (value) {
    return _then(_self.copyWith(nutritionPlan: value));
  });
}
}

/// @nodoc


class GetNutritionPlanById implements NutritionPlanEvent {
  const GetNutritionPlanById(this.id);
  

 final  String id;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNutritionPlanByIdCopyWith<GetNutritionPlanById> get copyWith => _$GetNutritionPlanByIdCopyWithImpl<GetNutritionPlanById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNutritionPlanById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'NutritionPlanEvent.getNutritionPlanById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetNutritionPlanByIdCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $GetNutritionPlanByIdCopyWith(GetNutritionPlanById value, $Res Function(GetNutritionPlanById) _then) = _$GetNutritionPlanByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetNutritionPlanByIdCopyWithImpl<$Res>
    implements $GetNutritionPlanByIdCopyWith<$Res> {
  _$GetNutritionPlanByIdCopyWithImpl(this._self, this._then);

  final GetNutritionPlanById _self;
  final $Res Function(GetNutritionPlanById) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetNutritionPlanById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetNutritionPlansByUserId implements NutritionPlanEvent {
  const GetNutritionPlansByUserId(this.userId);
  

 final  String userId;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNutritionPlansByUserIdCopyWith<GetNutritionPlansByUserId> get copyWith => _$GetNutritionPlansByUserIdCopyWithImpl<GetNutritionPlansByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNutritionPlansByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'NutritionPlanEvent.getNutritionPlansByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetNutritionPlansByUserIdCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $GetNutritionPlansByUserIdCopyWith(GetNutritionPlansByUserId value, $Res Function(GetNutritionPlansByUserId) _then) = _$GetNutritionPlansByUserIdCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetNutritionPlansByUserIdCopyWithImpl<$Res>
    implements $GetNutritionPlansByUserIdCopyWith<$Res> {
  _$GetNutritionPlansByUserIdCopyWithImpl(this._self, this._then);

  final GetNutritionPlansByUserId _self;
  final $Res Function(GetNutritionPlansByUserId) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetNutritionPlansByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllNutritionPlans implements NutritionPlanEvent {
  const GetAllNutritionPlans({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllNutritionPlansCopyWith<GetAllNutritionPlans> get copyWith => _$GetAllNutritionPlansCopyWithImpl<GetAllNutritionPlans>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllNutritionPlans&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'NutritionPlanEvent.getAllNutritionPlans(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllNutritionPlansCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $GetAllNutritionPlansCopyWith(GetAllNutritionPlans value, $Res Function(GetAllNutritionPlans) _then) = _$GetAllNutritionPlansCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllNutritionPlansCopyWithImpl<$Res>
    implements $GetAllNutritionPlansCopyWith<$Res> {
  _$GetAllNutritionPlansCopyWithImpl(this._self, this._then);

  final GetAllNutritionPlans _self;
  final $Res Function(GetAllNutritionPlans) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllNutritionPlans(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateNutritionPlan implements NutritionPlanEvent {
  const UpdateNutritionPlan(this.id, this.nutritionPlan);
  

 final  String id;
 final  NutritionPlan nutritionPlan;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNutritionPlanCopyWith<UpdateNutritionPlan> get copyWith => _$UpdateNutritionPlanCopyWithImpl<UpdateNutritionPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNutritionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.nutritionPlan, nutritionPlan) || other.nutritionPlan == nutritionPlan));
}


@override
int get hashCode => Object.hash(runtimeType,id,nutritionPlan);

@override
String toString() {
  return 'NutritionPlanEvent.updateNutritionPlan(id: $id, nutritionPlan: $nutritionPlan)';
}


}

/// @nodoc
abstract mixin class $UpdateNutritionPlanCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $UpdateNutritionPlanCopyWith(UpdateNutritionPlan value, $Res Function(UpdateNutritionPlan) _then) = _$UpdateNutritionPlanCopyWithImpl;
@useResult
$Res call({
 String id, NutritionPlan nutritionPlan
});


$NutritionPlanCopyWith<$Res> get nutritionPlan;

}
/// @nodoc
class _$UpdateNutritionPlanCopyWithImpl<$Res>
    implements $UpdateNutritionPlanCopyWith<$Res> {
  _$UpdateNutritionPlanCopyWithImpl(this._self, this._then);

  final UpdateNutritionPlan _self;
  final $Res Function(UpdateNutritionPlan) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nutritionPlan = null,}) {
  return _then(UpdateNutritionPlan(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == nutritionPlan ? _self.nutritionPlan : nutritionPlan // ignore: cast_nullable_to_non_nullable
as NutritionPlan,
  ));
}

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionPlanCopyWith<$Res> get nutritionPlan {
  
  return $NutritionPlanCopyWith<$Res>(_self.nutritionPlan, (value) {
    return _then(_self.copyWith(nutritionPlan: value));
  });
}
}

/// @nodoc


class DeleteNutritionPlan implements NutritionPlanEvent {
  const DeleteNutritionPlan(this.id);
  

 final  String id;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNutritionPlanCopyWith<DeleteNutritionPlan> get copyWith => _$DeleteNutritionPlanCopyWithImpl<DeleteNutritionPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNutritionPlan&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'NutritionPlanEvent.deleteNutritionPlan(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteNutritionPlanCopyWith<$Res> implements $NutritionPlanEventCopyWith<$Res> {
  factory $DeleteNutritionPlanCopyWith(DeleteNutritionPlan value, $Res Function(DeleteNutritionPlan) _then) = _$DeleteNutritionPlanCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteNutritionPlanCopyWithImpl<$Res>
    implements $DeleteNutritionPlanCopyWith<$Res> {
  _$DeleteNutritionPlanCopyWithImpl(this._self, this._then);

  final DeleteNutritionPlan _self;
  final $Res Function(DeleteNutritionPlan) _then;

/// Create a copy of NutritionPlanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteNutritionPlan(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NutritionPlanState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlanState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NutritionPlanState()';
}


}

/// @nodoc
class $NutritionPlanStateCopyWith<$Res>  {
$NutritionPlanStateCopyWith(NutritionPlanState _, $Res Function(NutritionPlanState) __);
}


/// Adds pattern-matching-related methods to [NutritionPlanState].
extension NutritionPlanStatePatterns on NutritionPlanState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NutritionPlan_Initial value)?  initial,TResult Function( NutritionPlan_Loading value)?  loading,TResult Function( LoadedNutritionPlan value)?  loadedNutritionPlan,TResult Function( LoadedNutritionPlans value)?  loadedNutritionPlans,TResult Function( NutritionPlan_Error value)?  error,TResult Function( NutritionPlan_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NutritionPlan_Initial() when initial != null:
return initial(_that);case NutritionPlan_Loading() when loading != null:
return loading(_that);case LoadedNutritionPlan() when loadedNutritionPlan != null:
return loadedNutritionPlan(_that);case LoadedNutritionPlans() when loadedNutritionPlans != null:
return loadedNutritionPlans(_that);case NutritionPlan_Error() when error != null:
return error(_that);case NutritionPlan_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NutritionPlan_Initial value)  initial,required TResult Function( NutritionPlan_Loading value)  loading,required TResult Function( LoadedNutritionPlan value)  loadedNutritionPlan,required TResult Function( LoadedNutritionPlans value)  loadedNutritionPlans,required TResult Function( NutritionPlan_Error value)  error,required TResult Function( NutritionPlan_Success value)  success,}){
final _that = this;
switch (_that) {
case NutritionPlan_Initial():
return initial(_that);case NutritionPlan_Loading():
return loading(_that);case LoadedNutritionPlan():
return loadedNutritionPlan(_that);case LoadedNutritionPlans():
return loadedNutritionPlans(_that);case NutritionPlan_Error():
return error(_that);case NutritionPlan_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NutritionPlan_Initial value)?  initial,TResult? Function( NutritionPlan_Loading value)?  loading,TResult? Function( LoadedNutritionPlan value)?  loadedNutritionPlan,TResult? Function( LoadedNutritionPlans value)?  loadedNutritionPlans,TResult? Function( NutritionPlan_Error value)?  error,TResult? Function( NutritionPlan_Success value)?  success,}){
final _that = this;
switch (_that) {
case NutritionPlan_Initial() when initial != null:
return initial(_that);case NutritionPlan_Loading() when loading != null:
return loading(_that);case LoadedNutritionPlan() when loadedNutritionPlan != null:
return loadedNutritionPlan(_that);case LoadedNutritionPlans() when loadedNutritionPlans != null:
return loadedNutritionPlans(_that);case NutritionPlan_Error() when error != null:
return error(_that);case NutritionPlan_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( NutritionPlan nutritionPlan)?  loadedNutritionPlan,TResult Function( List<NutritionPlan> nutritionPlans,  int currentPage,  int limit,  bool hasMore)?  loadedNutritionPlans,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NutritionPlan_Initial() when initial != null:
return initial();case NutritionPlan_Loading() when loading != null:
return loading();case LoadedNutritionPlan() when loadedNutritionPlan != null:
return loadedNutritionPlan(_that.nutritionPlan);case LoadedNutritionPlans() when loadedNutritionPlans != null:
return loadedNutritionPlans(_that.nutritionPlans,_that.currentPage,_that.limit,_that.hasMore);case NutritionPlan_Error() when error != null:
return error(_that.message);case NutritionPlan_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( NutritionPlan nutritionPlan)  loadedNutritionPlan,required TResult Function( List<NutritionPlan> nutritionPlans,  int currentPage,  int limit,  bool hasMore)  loadedNutritionPlans,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case NutritionPlan_Initial():
return initial();case NutritionPlan_Loading():
return loading();case LoadedNutritionPlan():
return loadedNutritionPlan(_that.nutritionPlan);case LoadedNutritionPlans():
return loadedNutritionPlans(_that.nutritionPlans,_that.currentPage,_that.limit,_that.hasMore);case NutritionPlan_Error():
return error(_that.message);case NutritionPlan_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( NutritionPlan nutritionPlan)?  loadedNutritionPlan,TResult? Function( List<NutritionPlan> nutritionPlans,  int currentPage,  int limit,  bool hasMore)?  loadedNutritionPlans,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case NutritionPlan_Initial() when initial != null:
return initial();case NutritionPlan_Loading() when loading != null:
return loading();case LoadedNutritionPlan() when loadedNutritionPlan != null:
return loadedNutritionPlan(_that.nutritionPlan);case LoadedNutritionPlans() when loadedNutritionPlans != null:
return loadedNutritionPlans(_that.nutritionPlans,_that.currentPage,_that.limit,_that.hasMore);case NutritionPlan_Error() when error != null:
return error(_that.message);case NutritionPlan_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NutritionPlan_Initial implements NutritionPlanState {
  const NutritionPlan_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlan_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NutritionPlanState.initial()';
}


}




/// @nodoc


class NutritionPlan_Loading implements NutritionPlanState {
  const NutritionPlan_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlan_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NutritionPlanState.loading()';
}


}




/// @nodoc


class LoadedNutritionPlan implements NutritionPlanState {
  const LoadedNutritionPlan(this.nutritionPlan);
  

 final  NutritionPlan nutritionPlan;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNutritionPlanCopyWith<LoadedNutritionPlan> get copyWith => _$LoadedNutritionPlanCopyWithImpl<LoadedNutritionPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedNutritionPlan&&(identical(other.nutritionPlan, nutritionPlan) || other.nutritionPlan == nutritionPlan));
}


@override
int get hashCode => Object.hash(runtimeType,nutritionPlan);

@override
String toString() {
  return 'NutritionPlanState.loadedNutritionPlan(nutritionPlan: $nutritionPlan)';
}


}

/// @nodoc
abstract mixin class $LoadedNutritionPlanCopyWith<$Res> implements $NutritionPlanStateCopyWith<$Res> {
  factory $LoadedNutritionPlanCopyWith(LoadedNutritionPlan value, $Res Function(LoadedNutritionPlan) _then) = _$LoadedNutritionPlanCopyWithImpl;
@useResult
$Res call({
 NutritionPlan nutritionPlan
});


$NutritionPlanCopyWith<$Res> get nutritionPlan;

}
/// @nodoc
class _$LoadedNutritionPlanCopyWithImpl<$Res>
    implements $LoadedNutritionPlanCopyWith<$Res> {
  _$LoadedNutritionPlanCopyWithImpl(this._self, this._then);

  final LoadedNutritionPlan _self;
  final $Res Function(LoadedNutritionPlan) _then;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nutritionPlan = null,}) {
  return _then(LoadedNutritionPlan(
null == nutritionPlan ? _self.nutritionPlan : nutritionPlan // ignore: cast_nullable_to_non_nullable
as NutritionPlan,
  ));
}

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionPlanCopyWith<$Res> get nutritionPlan {
  
  return $NutritionPlanCopyWith<$Res>(_self.nutritionPlan, (value) {
    return _then(_self.copyWith(nutritionPlan: value));
  });
}
}

/// @nodoc


class LoadedNutritionPlans implements NutritionPlanState {
  const LoadedNutritionPlans(final  List<NutritionPlan> nutritionPlans, this.currentPage, this.limit, this.hasMore): _nutritionPlans = nutritionPlans;
  

 final  List<NutritionPlan> _nutritionPlans;
 List<NutritionPlan> get nutritionPlans {
  if (_nutritionPlans is EqualUnmodifiableListView) return _nutritionPlans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nutritionPlans);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedNutritionPlansCopyWith<LoadedNutritionPlans> get copyWith => _$LoadedNutritionPlansCopyWithImpl<LoadedNutritionPlans>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedNutritionPlans&&const DeepCollectionEquality().equals(other._nutritionPlans, _nutritionPlans)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nutritionPlans),currentPage,limit,hasMore);

@override
String toString() {
  return 'NutritionPlanState.loadedNutritionPlans(nutritionPlans: $nutritionPlans, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedNutritionPlansCopyWith<$Res> implements $NutritionPlanStateCopyWith<$Res> {
  factory $LoadedNutritionPlansCopyWith(LoadedNutritionPlans value, $Res Function(LoadedNutritionPlans) _then) = _$LoadedNutritionPlansCopyWithImpl;
@useResult
$Res call({
 List<NutritionPlan> nutritionPlans, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedNutritionPlansCopyWithImpl<$Res>
    implements $LoadedNutritionPlansCopyWith<$Res> {
  _$LoadedNutritionPlansCopyWithImpl(this._self, this._then);

  final LoadedNutritionPlans _self;
  final $Res Function(LoadedNutritionPlans) _then;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nutritionPlans = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedNutritionPlans(
null == nutritionPlans ? _self._nutritionPlans : nutritionPlans // ignore: cast_nullable_to_non_nullable
as List<NutritionPlan>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NutritionPlan_Error implements NutritionPlanState {
  const NutritionPlan_Error(this.message);
  

 final  String message;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionPlan_ErrorCopyWith<NutritionPlan_Error> get copyWith => _$NutritionPlan_ErrorCopyWithImpl<NutritionPlan_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlan_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NutritionPlanState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $NutritionPlan_ErrorCopyWith<$Res> implements $NutritionPlanStateCopyWith<$Res> {
  factory $NutritionPlan_ErrorCopyWith(NutritionPlan_Error value, $Res Function(NutritionPlan_Error) _then) = _$NutritionPlan_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NutritionPlan_ErrorCopyWithImpl<$Res>
    implements $NutritionPlan_ErrorCopyWith<$Res> {
  _$NutritionPlan_ErrorCopyWithImpl(this._self, this._then);

  final NutritionPlan_Error _self;
  final $Res Function(NutritionPlan_Error) _then;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NutritionPlan_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NutritionPlan_Success implements NutritionPlanState {
  const NutritionPlan_Success(this.message);
  

 final  String message;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionPlan_SuccessCopyWith<NutritionPlan_Success> get copyWith => _$NutritionPlan_SuccessCopyWithImpl<NutritionPlan_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionPlan_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NutritionPlanState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $NutritionPlan_SuccessCopyWith<$Res> implements $NutritionPlanStateCopyWith<$Res> {
  factory $NutritionPlan_SuccessCopyWith(NutritionPlan_Success value, $Res Function(NutritionPlan_Success) _then) = _$NutritionPlan_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NutritionPlan_SuccessCopyWithImpl<$Res>
    implements $NutritionPlan_SuccessCopyWith<$Res> {
  _$NutritionPlan_SuccessCopyWithImpl(this._self, this._then);

  final NutritionPlan_Success _self;
  final $Res Function(NutritionPlan_Success) _then;

/// Create a copy of NutritionPlanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NutritionPlan_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
