
import 'dart:io';

import 'package:core/repositories/images/images_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_bloc.freezed.dart';

@freezed
sealed class ImageEvent with _$ImageEvent {
  const factory ImageEvent.uploadImage(File file) = UploadImage;
  const factory ImageEvent.deleteImage(String filename) = DeleteImage;
}

@freezed
sealed class ImageState with _$ImageState {
  const factory ImageState.initial() = Image_Initial;
  const factory ImageState.loading() = Image_Loading;
  const factory ImageState.success(String message) = Image_Success;
  const factory ImageState.error(String message) = Image_Error;
}

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImageRepository imageRepository;

  ImageBloc({required this.imageRepository}) : super(const ImageState.initial()) {
    on<UploadImage>(_onUploadImage);
    on<DeleteImage>(_onDeleteImage);
  }

  Future<void> _onUploadImage(UploadImage event, Emitter<ImageState> emit) async {
    emit(const ImageState.loading());
    try {
      final response = await imageRepository.uploadImage(event.file);
      emit(ImageState.success(response));
    } catch (e) {
      emit(ImageState.error(e.toString()));
    }
  }

  Future<void> _onDeleteImage(DeleteImage event, Emitter<ImageState> emit) async {
    emit(const ImageState.loading());
    try {
      final response = await imageRepository.deleteImage(event.filename);
      emit(ImageState.success(response));
    } catch (e) {
      emit(ImageState.error(e.toString()));
    }
  }
}