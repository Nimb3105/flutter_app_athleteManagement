// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageEvent()';
}


}

/// @nodoc
class $ImageEventCopyWith<$Res>  {
$ImageEventCopyWith(ImageEvent _, $Res Function(ImageEvent) __);
}


/// Adds pattern-matching-related methods to [ImageEvent].
extension ImageEventPatterns on ImageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UploadImage value)?  uploadImage,TResult Function( DeleteImage value)?  deleteImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UploadImage() when uploadImage != null:
return uploadImage(_that);case DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UploadImage value)  uploadImage,required TResult Function( DeleteImage value)  deleteImage,}){
final _that = this;
switch (_that) {
case UploadImage():
return uploadImage(_that);case DeleteImage():
return deleteImage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UploadImage value)?  uploadImage,TResult? Function( DeleteImage value)?  deleteImage,}){
final _that = this;
switch (_that) {
case UploadImage() when uploadImage != null:
return uploadImage(_that);case DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( File file)?  uploadImage,TResult Function( String fileUrl)?  deleteImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UploadImage() when uploadImage != null:
return uploadImage(_that.file);case DeleteImage() when deleteImage != null:
return deleteImage(_that.fileUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( File file)  uploadImage,required TResult Function( String fileUrl)  deleteImage,}) {final _that = this;
switch (_that) {
case UploadImage():
return uploadImage(_that.file);case DeleteImage():
return deleteImage(_that.fileUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( File file)?  uploadImage,TResult? Function( String fileUrl)?  deleteImage,}) {final _that = this;
switch (_that) {
case UploadImage() when uploadImage != null:
return uploadImage(_that.file);case DeleteImage() when deleteImage != null:
return deleteImage(_that.fileUrl);case _:
  return null;

}
}

}

/// @nodoc


class UploadImage implements ImageEvent {
  const UploadImage(this.file);
  

 final  File file;

/// Create a copy of ImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadImageCopyWith<UploadImage> get copyWith => _$UploadImageCopyWithImpl<UploadImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadImage&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'ImageEvent.uploadImage(file: $file)';
}


}

/// @nodoc
abstract mixin class $UploadImageCopyWith<$Res> implements $ImageEventCopyWith<$Res> {
  factory $UploadImageCopyWith(UploadImage value, $Res Function(UploadImage) _then) = _$UploadImageCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class _$UploadImageCopyWithImpl<$Res>
    implements $UploadImageCopyWith<$Res> {
  _$UploadImageCopyWithImpl(this._self, this._then);

  final UploadImage _self;
  final $Res Function(UploadImage) _then;

/// Create a copy of ImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(UploadImage(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class DeleteImage implements ImageEvent {
  const DeleteImage(this.fileUrl);
  

 final  String fileUrl;

/// Create a copy of ImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteImageCopyWith<DeleteImage> get copyWith => _$DeleteImageCopyWithImpl<DeleteImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteImage&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}


@override
int get hashCode => Object.hash(runtimeType,fileUrl);

@override
String toString() {
  return 'ImageEvent.deleteImage(fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class $DeleteImageCopyWith<$Res> implements $ImageEventCopyWith<$Res> {
  factory $DeleteImageCopyWith(DeleteImage value, $Res Function(DeleteImage) _then) = _$DeleteImageCopyWithImpl;
@useResult
$Res call({
 String fileUrl
});




}
/// @nodoc
class _$DeleteImageCopyWithImpl<$Res>
    implements $DeleteImageCopyWith<$Res> {
  _$DeleteImageCopyWithImpl(this._self, this._then);

  final DeleteImage _self;
  final $Res Function(DeleteImage) _then;

/// Create a copy of ImageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileUrl = null,}) {
  return _then(DeleteImage(
null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ImageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageState()';
}


}

/// @nodoc
class $ImageStateCopyWith<$Res>  {
$ImageStateCopyWith(ImageState _, $Res Function(ImageState) __);
}


/// Adds pattern-matching-related methods to [ImageState].
extension ImageStatePatterns on ImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Image_Initial value)?  initial,TResult Function( Image_Loading value)?  loading,TResult Function( Image_Success value)?  success,TResult Function( Image_Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Image_Initial() when initial != null:
return initial(_that);case Image_Loading() when loading != null:
return loading(_that);case Image_Success() when success != null:
return success(_that);case Image_Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Image_Initial value)  initial,required TResult Function( Image_Loading value)  loading,required TResult Function( Image_Success value)  success,required TResult Function( Image_Error value)  error,}){
final _that = this;
switch (_that) {
case Image_Initial():
return initial(_that);case Image_Loading():
return loading(_that);case Image_Success():
return success(_that);case Image_Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Image_Initial value)?  initial,TResult? Function( Image_Loading value)?  loading,TResult? Function( Image_Success value)?  success,TResult? Function( Image_Error value)?  error,}){
final _that = this;
switch (_that) {
case Image_Initial() when initial != null:
return initial(_that);case Image_Loading() when loading != null:
return loading(_that);case Image_Success() when success != null:
return success(_that);case Image_Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String fileUrl)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Image_Initial() when initial != null:
return initial();case Image_Loading() when loading != null:
return loading();case Image_Success() when success != null:
return success(_that.fileUrl);case Image_Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String fileUrl)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case Image_Initial():
return initial();case Image_Loading():
return loading();case Image_Success():
return success(_that.fileUrl);case Image_Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String fileUrl)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case Image_Initial() when initial != null:
return initial();case Image_Loading() when loading != null:
return loading();case Image_Success() when success != null:
return success(_that.fileUrl);case Image_Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Image_Initial implements ImageState {
  const Image_Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image_Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageState.initial()';
}


}




/// @nodoc


class Image_Loading implements ImageState {
  const Image_Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image_Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageState.loading()';
}


}




/// @nodoc


class Image_Success implements ImageState {
  const Image_Success(this.fileUrl);
  

 final  String fileUrl;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Image_SuccessCopyWith<Image_Success> get copyWith => _$Image_SuccessCopyWithImpl<Image_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image_Success&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}


@override
int get hashCode => Object.hash(runtimeType,fileUrl);

@override
String toString() {
  return 'ImageState.success(fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class $Image_SuccessCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory $Image_SuccessCopyWith(Image_Success value, $Res Function(Image_Success) _then) = _$Image_SuccessCopyWithImpl;
@useResult
$Res call({
 String fileUrl
});




}
/// @nodoc
class _$Image_SuccessCopyWithImpl<$Res>
    implements $Image_SuccessCopyWith<$Res> {
  _$Image_SuccessCopyWithImpl(this._self, this._then);

  final Image_Success _self;
  final $Res Function(Image_Success) _then;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileUrl = null,}) {
  return _then(Image_Success(
null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Image_Error implements ImageState {
  const Image_Error(this.message);
  

 final  String message;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Image_ErrorCopyWith<Image_Error> get copyWith => _$Image_ErrorCopyWithImpl<Image_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image_Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ImageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Image_ErrorCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory $Image_ErrorCopyWith(Image_Error value, $Res Function(Image_Error) _then) = _$Image_ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Image_ErrorCopyWithImpl<$Res>
    implements $Image_ErrorCopyWith<$Res> {
  _$Image_ErrorCopyWithImpl(this._self, this._then);

  final Image_Error _self;
  final $Res Function(Image_Error) _then;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Image_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
