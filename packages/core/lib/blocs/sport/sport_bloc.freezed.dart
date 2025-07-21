// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SportEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportEvent()';
}


}

/// @nodoc
class $SportEventCopyWith<$Res>  {
$SportEventCopyWith(SportEvent _, $Res Function(SportEvent) __);
}


/// Adds pattern-matching-related methods to [SportEvent].
extension SportEventPatterns on SportEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateSport value)?  createSport,TResult Function( GetSportById value)?  getSportById,TResult Function( GetAllSports value)?  getAllSports,TResult Function( UpdateSport value)?  updateSport,TResult Function( DeleteSport value)?  deleteSport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateSport() when createSport != null:
return createSport(_that);case GetSportById() when getSportById != null:
return getSportById(_that);case GetAllSports() when getAllSports != null:
return getAllSports(_that);case UpdateSport() when updateSport != null:
return updateSport(_that);case DeleteSport() when deleteSport != null:
return deleteSport(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateSport value)  createSport,required TResult Function( GetSportById value)  getSportById,required TResult Function( GetAllSports value)  getAllSports,required TResult Function( UpdateSport value)  updateSport,required TResult Function( DeleteSport value)  deleteSport,}){
final _that = this;
switch (_that) {
case CreateSport():
return createSport(_that);case GetSportById():
return getSportById(_that);case GetAllSports():
return getAllSports(_that);case UpdateSport():
return updateSport(_that);case DeleteSport():
return deleteSport(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateSport value)?  createSport,TResult? Function( GetSportById value)?  getSportById,TResult? Function( GetAllSports value)?  getAllSports,TResult? Function( UpdateSport value)?  updateSport,TResult? Function( DeleteSport value)?  deleteSport,}){
final _that = this;
switch (_that) {
case CreateSport() when createSport != null:
return createSport(_that);case GetSportById() when getSportById != null:
return getSportById(_that);case GetAllSports() when getAllSports != null:
return getAllSports(_that);case UpdateSport() when updateSport != null:
return updateSport(_that);case DeleteSport() when deleteSport != null:
return deleteSport(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Sport sport)?  createSport,TResult Function( String id)?  getSportById,TResult Function( int page,  int limit)?  getAllSports,TResult Function( String id,  Sport sport)?  updateSport,TResult Function( String id)?  deleteSport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateSport() when createSport != null:
return createSport(_that.sport);case GetSportById() when getSportById != null:
return getSportById(_that.id);case GetAllSports() when getAllSports != null:
return getAllSports(_that.page,_that.limit);case UpdateSport() when updateSport != null:
return updateSport(_that.id,_that.sport);case DeleteSport() when deleteSport != null:
return deleteSport(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Sport sport)  createSport,required TResult Function( String id)  getSportById,required TResult Function( int page,  int limit)  getAllSports,required TResult Function( String id,  Sport sport)  updateSport,required TResult Function( String id)  deleteSport,}) {final _that = this;
switch (_that) {
case CreateSport():
return createSport(_that.sport);case GetSportById():
return getSportById(_that.id);case GetAllSports():
return getAllSports(_that.page,_that.limit);case UpdateSport():
return updateSport(_that.id,_that.sport);case DeleteSport():
return deleteSport(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Sport sport)?  createSport,TResult? Function( String id)?  getSportById,TResult? Function( int page,  int limit)?  getAllSports,TResult? Function( String id,  Sport sport)?  updateSport,TResult? Function( String id)?  deleteSport,}) {final _that = this;
switch (_that) {
case CreateSport() when createSport != null:
return createSport(_that.sport);case GetSportById() when getSportById != null:
return getSportById(_that.id);case GetAllSports() when getAllSports != null:
return getAllSports(_that.page,_that.limit);case UpdateSport() when updateSport != null:
return updateSport(_that.id,_that.sport);case DeleteSport() when deleteSport != null:
return deleteSport(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class CreateSport implements SportEvent {
  const CreateSport(this.sport);
  

 final  Sport sport;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSportCopyWith<CreateSport> get copyWith => _$CreateSportCopyWithImpl<CreateSport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSport&&(identical(other.sport, sport) || other.sport == sport));
}


@override
int get hashCode => Object.hash(runtimeType,sport);

@override
String toString() {
  return 'SportEvent.createSport(sport: $sport)';
}


}

/// @nodoc
abstract mixin class $CreateSportCopyWith<$Res> implements $SportEventCopyWith<$Res> {
  factory $CreateSportCopyWith(CreateSport value, $Res Function(CreateSport) _then) = _$CreateSportCopyWithImpl;
@useResult
$Res call({
 Sport sport
});


$SportCopyWith<$Res> get sport;

}
/// @nodoc
class _$CreateSportCopyWithImpl<$Res>
    implements $CreateSportCopyWith<$Res> {
  _$CreateSportCopyWithImpl(this._self, this._then);

  final CreateSport _self;
  final $Res Function(CreateSport) _then;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sport = null,}) {
  return _then(CreateSport(
null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as Sport,
  ));
}

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportCopyWith<$Res> get sport {
  
  return $SportCopyWith<$Res>(_self.sport, (value) {
    return _then(_self.copyWith(sport: value));
  });
}
}

/// @nodoc


class GetSportById implements SportEvent {
  const GetSportById(this.id);
  

 final  String id;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSportByIdCopyWith<GetSportById> get copyWith => _$GetSportByIdCopyWithImpl<GetSportById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSportById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportEvent.getSportById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetSportByIdCopyWith<$Res> implements $SportEventCopyWith<$Res> {
  factory $GetSportByIdCopyWith(GetSportById value, $Res Function(GetSportById) _then) = _$GetSportByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetSportByIdCopyWithImpl<$Res>
    implements $GetSportByIdCopyWith<$Res> {
  _$GetSportByIdCopyWithImpl(this._self, this._then);

  final GetSportById _self;
  final $Res Function(GetSportById) _then;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetSportById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllSports implements SportEvent {
  const GetAllSports({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllSportsCopyWith<GetAllSports> get copyWith => _$GetAllSportsCopyWithImpl<GetAllSports>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllSports&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'SportEvent.getAllSports(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetAllSportsCopyWith<$Res> implements $SportEventCopyWith<$Res> {
  factory $GetAllSportsCopyWith(GetAllSports value, $Res Function(GetAllSports) _then) = _$GetAllSportsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$GetAllSportsCopyWithImpl<$Res>
    implements $GetAllSportsCopyWith<$Res> {
  _$GetAllSportsCopyWithImpl(this._self, this._then);

  final GetAllSports _self;
  final $Res Function(GetAllSports) _then;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(GetAllSports(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateSport implements SportEvent {
  const UpdateSport(this.id, this.sport);
  

 final  String id;
 final  Sport sport;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSportCopyWith<UpdateSport> get copyWith => _$UpdateSportCopyWithImpl<UpdateSport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSport&&(identical(other.id, id) || other.id == id)&&(identical(other.sport, sport) || other.sport == sport));
}


@override
int get hashCode => Object.hash(runtimeType,id,sport);

@override
String toString() {
  return 'SportEvent.updateSport(id: $id, sport: $sport)';
}


}

/// @nodoc
abstract mixin class $UpdateSportCopyWith<$Res> implements $SportEventCopyWith<$Res> {
  factory $UpdateSportCopyWith(UpdateSport value, $Res Function(UpdateSport) _then) = _$UpdateSportCopyWithImpl;
@useResult
$Res call({
 String id, Sport sport
});


$SportCopyWith<$Res> get sport;

}
/// @nodoc
class _$UpdateSportCopyWithImpl<$Res>
    implements $UpdateSportCopyWith<$Res> {
  _$UpdateSportCopyWithImpl(this._self, this._then);

  final UpdateSport _self;
  final $Res Function(UpdateSport) _then;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sport = null,}) {
  return _then(UpdateSport(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as Sport,
  ));
}

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportCopyWith<$Res> get sport {
  
  return $SportCopyWith<$Res>(_self.sport, (value) {
    return _then(_self.copyWith(sport: value));
  });
}
}

/// @nodoc


class DeleteSport implements SportEvent {
  const DeleteSport(this.id);
  

 final  String id;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteSportCopyWith<DeleteSport> get copyWith => _$DeleteSportCopyWithImpl<DeleteSport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSport&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SportEvent.deleteSport(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteSportCopyWith<$Res> implements $SportEventCopyWith<$Res> {
  factory $DeleteSportCopyWith(DeleteSport value, $Res Function(DeleteSport) _then) = _$DeleteSportCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteSportCopyWithImpl<$Res>
    implements $DeleteSportCopyWith<$Res> {
  _$DeleteSportCopyWithImpl(this._self, this._then);

  final DeleteSport _self;
  final $Res Function(DeleteSport) _then;

/// Create a copy of SportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteSport(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SportState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportState()';
}


}

/// @nodoc
class $SportStateCopyWith<$Res>  {
$SportStateCopyWith(SportState _, $Res Function(SportState) __);
}


/// Adds pattern-matching-related methods to [SportState].
extension SportStatePatterns on SportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Sport_Initial value)?  initial,TResult Function( Sport_Loading value)?  loading,TResult Function( LoadedSport value)?  loadedSport,TResult Function( LoadedSports value)?  loadedSports,TResult Function( Sport_Error value)?  error,TResult Function( Sport_Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Sport_Initial() when initial != null:
return initial(_that);case Sport_Loading() when loading != null:
return loading(_that);case LoadedSport() when loadedSport != null:
return loadedSport(_that);case LoadedSports() when loadedSports != null:
return loadedSports(_that);case Sport_Error() when error != null:
return error(_that);case Sport_Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Sport_Initial value)  initial,required TResult Function( Sport_Loading value)  loading,required TResult Function( LoadedSport value)  loadedSport,required TResult Function( LoadedSports value)  loadedSports,required TResult Function( Sport_Error value)  error,required TResult Function( Sport_Success value)  success,}){
final _that = this;
switch (_that) {
case Sport_Initial():
return initial(_that);case Sport_Loading():
return loading(_that);case LoadedSport():
return loadedSport(_that);case LoadedSports():
return loadedSports(_that);case Sport_Error():
return error(_that);case Sport_Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Sport_Initial value)?  initial,TResult? Function( Sport_Loading value)?  loading,TResult? Function( LoadedSport value)?  loadedSport,TResult? Function( LoadedSports value)?  loadedSports,TResult? Function( Sport_Error value)?  error,TResult? Function( Sport_Success value)?  success,}){
final _that = this;
switch (_that) {
case Sport_Initial() when initial != null:
return initial(_that);case Sport_Loading() when loading != null:
return loading(_that);case LoadedSport() when loadedSport != null:
return loadedSport(_that);case LoadedSports() when loadedSports != null:
return loadedSports(_that);case Sport_Error() when error != null:
return error(_that);case Sport_Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Sport? sport)?  loadedSport,TResult Function( List<Sport> sports,  int currentPage,  int limit,  bool hasMore)?  loadedSports,TResult Function( String message)?  error,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Sport_Initial() when initial != null:
return initial();case Sport_Loading() when loading != null:
return loading();case LoadedSport() when loadedSport != null:
return loadedSport(_that.sport);case LoadedSports() when loadedSports != null:
return loadedSports(_that.sports,_that.currentPage,_that.limit,_that.hasMore);case Sport_Error() when error != null:
return error(_that.message);case Sport_Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Sport? sport)  loadedSport,required TResult Function( List<Sport> sports,  int currentPage,  int limit,  bool hasMore)  loadedSports,required TResult Function( String message)  error,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case Sport_Initial():
return initial();case Sport_Loading():
return loading();case LoadedSport():
return loadedSport(_that.sport);case LoadedSports():
return loadedSports(_that.sports,_that.currentPage,_that.limit,_that.hasMore);case Sport_Error():
return error(_that.message);case Sport_Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Sport? sport)?  loadedSport,TResult? Function( List<Sport> sports,  int currentPage,  int limit,  bool hasMore)?  loadedSports,TResult? Function( String message)?  error,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case Sport_Initial() when initial != null:
return initial();case Sport_Loading() when loading != null:
return loading();case LoadedSport() when loadedSport != null:
return loadedSport(_that.sport);case LoadedSports() when loadedSports != null:
return loadedSports(_that.sports,_that.currentPage,_that.limit,_that.hasMore);case Sport_Error() when error != null:
return error(_that.message);case Sport_Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Sport_Initial implements SportState {
  const Sport_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportState.initial()';
}


}




/// @nodoc


class Sport_Loading implements SportState {
  const Sport_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SportState.loading()';
}


}




/// @nodoc


class LoadedSport implements SportState {
  const LoadedSport(this.sport);
  

 final  Sport? sport;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportCopyWith<LoadedSport> get copyWith => _$LoadedSportCopyWithImpl<LoadedSport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSport&&(identical(other.sport, sport) || other.sport == sport));
}


@override
int get hashCode => Object.hash(runtimeType,sport);

@override
String toString() {
  return 'SportState.loadedSport(sport: $sport)';
}


}

/// @nodoc
abstract mixin class $LoadedSportCopyWith<$Res> implements $SportStateCopyWith<$Res> {
  factory $LoadedSportCopyWith(LoadedSport value, $Res Function(LoadedSport) _then) = _$LoadedSportCopyWithImpl;
@useResult
$Res call({
 Sport? sport
});


$SportCopyWith<$Res>? get sport;

}
/// @nodoc
class _$LoadedSportCopyWithImpl<$Res>
    implements $LoadedSportCopyWith<$Res> {
  _$LoadedSportCopyWithImpl(this._self, this._then);

  final LoadedSport _self;
  final $Res Function(LoadedSport) _then;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sport = freezed,}) {
  return _then(LoadedSport(
freezed == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as Sport?,
  ));
}

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportCopyWith<$Res>? get sport {
    if (_self.sport == null) {
    return null;
  }

  return $SportCopyWith<$Res>(_self.sport!, (value) {
    return _then(_self.copyWith(sport: value));
  });
}
}

/// @nodoc


class LoadedSports implements SportState {
  const LoadedSports(final  List<Sport> sports, this.currentPage, this.limit, this.hasMore): _sports = sports;
  

 final  List<Sport> _sports;
 List<Sport> get sports {
  if (_sports is EqualUnmodifiableListView) return _sports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sports);
}

 final  int currentPage;
 final  int limit;
 final  bool hasMore;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSportsCopyWith<LoadedSports> get copyWith => _$LoadedSportsCopyWithImpl<LoadedSports>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSports&&const DeepCollectionEquality().equals(other._sports, _sports)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sports),currentPage,limit,hasMore);

@override
String toString() {
  return 'SportState.loadedSports(sports: $sports, currentPage: $currentPage, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadedSportsCopyWith<$Res> implements $SportStateCopyWith<$Res> {
  factory $LoadedSportsCopyWith(LoadedSports value, $Res Function(LoadedSports) _then) = _$LoadedSportsCopyWithImpl;
@useResult
$Res call({
 List<Sport> sports, int currentPage, int limit, bool hasMore
});




}
/// @nodoc
class _$LoadedSportsCopyWithImpl<$Res>
    implements $LoadedSportsCopyWith<$Res> {
  _$LoadedSportsCopyWithImpl(this._self, this._then);

  final LoadedSports _self;
  final $Res Function(LoadedSports) _then;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sports = null,Object? currentPage = null,Object? limit = null,Object? hasMore = null,}) {
  return _then(LoadedSports(
null == sports ? _self._sports : sports // ignore: cast_nullable_to_non_nullable
as List<Sport>,null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Sport_Error implements SportState {
  const Sport_Error(this.message);
  

 final  String message;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_ErrorCopyWith<Sport_Error> get copyWith => _$Sport_ErrorCopyWithImpl<Sport_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_ErrorCopyWith<$Res> implements $SportStateCopyWith<$Res> {
  factory $Sport_ErrorCopyWith(Sport_Error value, $Res Function(Sport_Error) _then) = _$Sport_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_ErrorCopyWithImpl<$Res>
    implements $Sport_ErrorCopyWith<$Res> {
  _$Sport_ErrorCopyWithImpl(this._self, this._then);

  final Sport_Error _self;
  final $Res Function(Sport_Error) _then;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Sport_Success implements SportState {
  const Sport_Success(this.message);
  

 final  String message;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Sport_SuccessCopyWith<Sport_Success> get copyWith => _$Sport_SuccessCopyWithImpl<Sport_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sport_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SportState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Sport_SuccessCopyWith<$Res> implements $SportStateCopyWith<$Res> {
  factory $Sport_SuccessCopyWith(Sport_Success value, $Res Function(Sport_Success) _then) = _$Sport_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Sport_SuccessCopyWithImpl<$Res>
    implements $Sport_SuccessCopyWith<$Res> {
  _$Sport_SuccessCopyWithImpl(this._self, this._then);

  final Sport_Success _self;
  final $Res Function(Sport_Success) _then;

/// Create a copy of SportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Sport_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
