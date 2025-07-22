// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuggestionEvent {

 String get goal; String get muscleGroup; String get equipment; int get numberOfExercises; String get sportName;
/// Create a copy of SuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionEventCopyWith<SuggestionEvent> get copyWith => _$SuggestionEventCopyWithImpl<SuggestionEvent>(this as SuggestionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionEvent&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.muscleGroup, muscleGroup) || other.muscleGroup == muscleGroup)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&(identical(other.numberOfExercises, numberOfExercises) || other.numberOfExercises == numberOfExercises)&&(identical(other.sportName, sportName) || other.sportName == sportName));
}


@override
int get hashCode => Object.hash(runtimeType,goal,muscleGroup,equipment,numberOfExercises,sportName);

@override
String toString() {
  return 'SuggestionEvent(goal: $goal, muscleGroup: $muscleGroup, equipment: $equipment, numberOfExercises: $numberOfExercises, sportName: $sportName)';
}


}

/// @nodoc
abstract mixin class $SuggestionEventCopyWith<$Res>  {
  factory $SuggestionEventCopyWith(SuggestionEvent value, $Res Function(SuggestionEvent) _then) = _$SuggestionEventCopyWithImpl;
@useResult
$Res call({
 String goal, String muscleGroup, String equipment, int numberOfExercises, String sportName
});




}
/// @nodoc
class _$SuggestionEventCopyWithImpl<$Res>
    implements $SuggestionEventCopyWith<$Res> {
  _$SuggestionEventCopyWithImpl(this._self, this._then);

  final SuggestionEvent _self;
  final $Res Function(SuggestionEvent) _then;

/// Create a copy of SuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goal = null,Object? muscleGroup = null,Object? equipment = null,Object? numberOfExercises = null,Object? sportName = null,}) {
  return _then(_self.copyWith(
goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,muscleGroup: null == muscleGroup ? _self.muscleGroup : muscleGroup // ignore: cast_nullable_to_non_nullable
as String,equipment: null == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as String,numberOfExercises: null == numberOfExercises ? _self.numberOfExercises : numberOfExercises // ignore: cast_nullable_to_non_nullable
as int,sportName: null == sportName ? _self.sportName : sportName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestionEvent].
extension SuggestionEventPatterns on SuggestionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSuggestions value)?  fetchSuggestions,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSuggestions() when fetchSuggestions != null:
return fetchSuggestions(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSuggestions value)  fetchSuggestions,}){
final _that = this;
switch (_that) {
case FetchSuggestions():
return fetchSuggestions(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSuggestions value)?  fetchSuggestions,}){
final _that = this;
switch (_that) {
case FetchSuggestions() when fetchSuggestions != null:
return fetchSuggestions(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String goal,  String muscleGroup,  String equipment,  int numberOfExercises,  String sportName)?  fetchSuggestions,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSuggestions() when fetchSuggestions != null:
return fetchSuggestions(_that.goal,_that.muscleGroup,_that.equipment,_that.numberOfExercises,_that.sportName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String goal,  String muscleGroup,  String equipment,  int numberOfExercises,  String sportName)  fetchSuggestions,}) {final _that = this;
switch (_that) {
case FetchSuggestions():
return fetchSuggestions(_that.goal,_that.muscleGroup,_that.equipment,_that.numberOfExercises,_that.sportName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String goal,  String muscleGroup,  String equipment,  int numberOfExercises,  String sportName)?  fetchSuggestions,}) {final _that = this;
switch (_that) {
case FetchSuggestions() when fetchSuggestions != null:
return fetchSuggestions(_that.goal,_that.muscleGroup,_that.equipment,_that.numberOfExercises,_that.sportName);case _:
  return null;

}
}

}

/// @nodoc


class FetchSuggestions implements SuggestionEvent {
  const FetchSuggestions({required this.goal, required this.muscleGroup, required this.equipment, required this.numberOfExercises, required this.sportName});
  

@override final  String goal;
@override final  String muscleGroup;
@override final  String equipment;
@override final  int numberOfExercises;
@override final  String sportName;

/// Create a copy of SuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSuggestionsCopyWith<FetchSuggestions> get copyWith => _$FetchSuggestionsCopyWithImpl<FetchSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSuggestions&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.muscleGroup, muscleGroup) || other.muscleGroup == muscleGroup)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&(identical(other.numberOfExercises, numberOfExercises) || other.numberOfExercises == numberOfExercises)&&(identical(other.sportName, sportName) || other.sportName == sportName));
}


@override
int get hashCode => Object.hash(runtimeType,goal,muscleGroup,equipment,numberOfExercises,sportName);

@override
String toString() {
  return 'SuggestionEvent.fetchSuggestions(goal: $goal, muscleGroup: $muscleGroup, equipment: $equipment, numberOfExercises: $numberOfExercises, sportName: $sportName)';
}


}

/// @nodoc
abstract mixin class $FetchSuggestionsCopyWith<$Res> implements $SuggestionEventCopyWith<$Res> {
  factory $FetchSuggestionsCopyWith(FetchSuggestions value, $Res Function(FetchSuggestions) _then) = _$FetchSuggestionsCopyWithImpl;
@override @useResult
$Res call({
 String goal, String muscleGroup, String equipment, int numberOfExercises, String sportName
});




}
/// @nodoc
class _$FetchSuggestionsCopyWithImpl<$Res>
    implements $FetchSuggestionsCopyWith<$Res> {
  _$FetchSuggestionsCopyWithImpl(this._self, this._then);

  final FetchSuggestions _self;
  final $Res Function(FetchSuggestions) _then;

/// Create a copy of SuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goal = null,Object? muscleGroup = null,Object? equipment = null,Object? numberOfExercises = null,Object? sportName = null,}) {
  return _then(FetchSuggestions(
goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,muscleGroup: null == muscleGroup ? _self.muscleGroup : muscleGroup // ignore: cast_nullable_to_non_nullable
as String,equipment: null == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as String,numberOfExercises: null == numberOfExercises ? _self.numberOfExercises : numberOfExercises // ignore: cast_nullable_to_non_nullable
as int,sportName: null == sportName ? _self.sportName : sportName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SuggestionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuggestionState()';
}


}

/// @nodoc
class $SuggestionStateCopyWith<$Res>  {
$SuggestionStateCopyWith(SuggestionState _, $Res Function(SuggestionState) __);
}


/// Adds pattern-matching-related methods to [SuggestionState].
extension SuggestionStatePatterns on SuggestionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SuggestionInitial value)?  initial,TResult Function( SuggestionLoading value)?  loading,TResult Function( SuggestionLoaded value)?  loaded,TResult Function( SuggestionError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SuggestionInitial() when initial != null:
return initial(_that);case SuggestionLoading() when loading != null:
return loading(_that);case SuggestionLoaded() when loaded != null:
return loaded(_that);case SuggestionError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SuggestionInitial value)  initial,required TResult Function( SuggestionLoading value)  loading,required TResult Function( SuggestionLoaded value)  loaded,required TResult Function( SuggestionError value)  error,}){
final _that = this;
switch (_that) {
case SuggestionInitial():
return initial(_that);case SuggestionLoading():
return loading(_that);case SuggestionLoaded():
return loaded(_that);case SuggestionError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SuggestionInitial value)?  initial,TResult? Function( SuggestionLoading value)?  loading,TResult? Function( SuggestionLoaded value)?  loaded,TResult? Function( SuggestionError value)?  error,}){
final _that = this;
switch (_that) {
case SuggestionInitial() when initial != null:
return initial(_that);case SuggestionLoading() when loading != null:
return loading(_that);case SuggestionLoaded() when loaded != null:
return loaded(_that);case SuggestionError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Map<String, dynamic>> suggestions)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SuggestionInitial() when initial != null:
return initial();case SuggestionLoading() when loading != null:
return loading();case SuggestionLoaded() when loaded != null:
return loaded(_that.suggestions);case SuggestionError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Map<String, dynamic>> suggestions)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case SuggestionInitial():
return initial();case SuggestionLoading():
return loading();case SuggestionLoaded():
return loaded(_that.suggestions);case SuggestionError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Map<String, dynamic>> suggestions)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case SuggestionInitial() when initial != null:
return initial();case SuggestionLoading() when loading != null:
return loading();case SuggestionLoaded() when loaded != null:
return loaded(_that.suggestions);case SuggestionError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SuggestionInitial implements SuggestionState {
  const SuggestionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuggestionState.initial()';
}


}




/// @nodoc


class SuggestionLoading implements SuggestionState {
  const SuggestionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SuggestionState.loading()';
}


}




/// @nodoc


class SuggestionLoaded implements SuggestionState {
  const SuggestionLoaded(final  List<Map<String, dynamic>> suggestions): _suggestions = suggestions;
  

 final  List<Map<String, dynamic>> _suggestions;
 List<Map<String, dynamic>> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of SuggestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionLoadedCopyWith<SuggestionLoaded> get copyWith => _$SuggestionLoadedCopyWithImpl<SuggestionLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionLoaded&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'SuggestionState.loaded(suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $SuggestionLoadedCopyWith<$Res> implements $SuggestionStateCopyWith<$Res> {
  factory $SuggestionLoadedCopyWith(SuggestionLoaded value, $Res Function(SuggestionLoaded) _then) = _$SuggestionLoadedCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> suggestions
});




}
/// @nodoc
class _$SuggestionLoadedCopyWithImpl<$Res>
    implements $SuggestionLoadedCopyWith<$Res> {
  _$SuggestionLoadedCopyWithImpl(this._self, this._then);

  final SuggestionLoaded _self;
  final $Res Function(SuggestionLoaded) _then;

/// Create a copy of SuggestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? suggestions = null,}) {
  return _then(SuggestionLoaded(
null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class SuggestionError implements SuggestionState {
  const SuggestionError(this.message);
  

 final  String message;

/// Create a copy of SuggestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionErrorCopyWith<SuggestionError> get copyWith => _$SuggestionErrorCopyWithImpl<SuggestionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SuggestionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SuggestionErrorCopyWith<$Res> implements $SuggestionStateCopyWith<$Res> {
  factory $SuggestionErrorCopyWith(SuggestionError value, $Res Function(SuggestionError) _then) = _$SuggestionErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SuggestionErrorCopyWithImpl<$Res>
    implements $SuggestionErrorCopyWith<$Res> {
  _$SuggestionErrorCopyWithImpl(this._self, this._then);

  final SuggestionError _self;
  final $Res Function(SuggestionError) _then;

/// Create a copy of SuggestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SuggestionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
