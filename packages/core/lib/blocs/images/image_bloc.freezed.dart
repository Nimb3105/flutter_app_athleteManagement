// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const DeleteImage(this.filename);
  

 final  String filename;

/// Create a copy of ImageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteImageCopyWith<DeleteImage> get copyWith => _$DeleteImageCopyWithImpl<DeleteImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteImage&&(identical(other.filename, filename) || other.filename == filename));
}


@override
int get hashCode => Object.hash(runtimeType,filename);

@override
String toString() {
  return 'ImageEvent.deleteImage(filename: $filename)';
}


}

/// @nodoc
abstract mixin class $DeleteImageCopyWith<$Res> implements $ImageEventCopyWith<$Res> {
  factory $DeleteImageCopyWith(DeleteImage value, $Res Function(DeleteImage) _then) = _$DeleteImageCopyWithImpl;
@useResult
$Res call({
 String filename
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
@pragma('vm:prefer-inline') $Res call({Object? filename = null,}) {
  return _then(DeleteImage(
null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
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
  const Image_Success(this.message);
  

 final  String message;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Image_SuccessCopyWith<Image_Success> get copyWith => _$Image_SuccessCopyWithImpl<Image_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image_Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ImageState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $Image_SuccessCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory $Image_SuccessCopyWith(Image_Success value, $Res Function(Image_Success) _then) = _$Image_SuccessCopyWithImpl;
@useResult
$Res call({
 String message
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
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Image_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
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
