
// import 'package:core/models/athlete/progress/progress.dart';
// import 'package:core/repositories/athlete/progress_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'progress_bloc.freezed.dart';

// @freezed
// sealed class ProgressEvent with _$ProgressEvent {
//   const factory ProgressEvent.createProgress(Progress progress) = _CreateProgress;
//   const factory ProgressEvent.getProgressById(String id) = _GetProgressById;
//   const factory ProgressEvent.getProgressesByUserId(String userId) = _GetProgressesByUserId;
//   const factory ProgressEvent.getAllProgresses({
//     @Default(1) int page,
//     @Default(10) int limit,
//   }) = _GetAllProgresses;
//   const factory ProgressEvent.updateProgress(String id, Progress progress) = _UpdateProgress;
//   const factory ProgressEvent.deleteProgress(String id) = _DeleteProgress;
// }

// @freezed
// sealed class ProgressState with _$ProgressState {
//   const factory ProgressState.initial() = Progress_Initial;
//   const factory ProgressState.loading() = Progress_Loading;
//   const factory ProgressState.loadedProgress(Progress progress) = LoadedProgress;
//   const factory ProgressState.loadedProgresses(
//     List<Progress> progresses,
//     int currentPage,
//     int limit,
//     bool hasMore,
//   ) = LoadedProgresses;
//   const factory ProgressState.error(String message) = Progress_Error;
//   const factory ProgressState.success(String message) = Progress_Success;
// }

// class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
//   final ProgressRepository progressRepository;

//   ProgressBloc({required this.progressRepository})
//       : super(const ProgressState.initial()) {
//     on<_CreateProgress>(_onCreateProgress);
//     on<_GetProgressById>(_onGetProgressById);
//     on<_GetProgressesByUserId>(_onGetProgressesByUserId);
//     on<_GetAllProgresses>(_onGetAllProgresses);
//     on<_UpdateProgress>(_onUpdateProgress);
//     on<_DeleteProgress>(_onDeleteProgress);
//   }

//   Future<void> _onCreateProgress(
//     _CreateProgress event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       final createdProgress = await progressRepository.createProgress(event.progress);
//       emit(ProgressState.loadedProgress(createdProgress));
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetProgressById(
//     _GetProgressById event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       final progress = await progressRepository.getProgressById(event.id);
//       emit(ProgressState.loadedProgress(progress));
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetProgressesByUserId(
//     _GetProgressesByUserId event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       final progresses = await progressRepository.getProgressesByUserId(event.userId);
//       emit(ProgressState.loadedProgresses(progresses, 1, progresses.length, false));
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetAllProgresses(
//     _GetAllProgresses event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       final result = await progressRepository.getAllProgresses(
//         page: event.page,
//         limit: event.limit,
//       );
//       emit(
//         ProgressState.loadedProgresses(
//           result['progresses'] as List<Progress>,
//           event.page,
//           event.limit,
//           result['hasMore'] as bool,
//         ),
//       );
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }

//   Future<void> _onUpdateProgress(
//     _UpdateProgress event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       final updatedProgress = await progressRepository.updateProgress(
//         event.id,
//         event.progress,
//       );
//       emit(ProgressState.loadedProgress(updatedProgress));
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }

//   Future<void> _onDeleteProgress(
//     _DeleteProgress event,
//     Emitter<ProgressState> emit,
//   ) async {
//     emit(const ProgressState.loading());
//     try {
//       await progressRepository.deleteProgress(event.id);
//       emit(const ProgressState.success('Progress deleted successfully'));
//     } catch (e) {
//       emit(ProgressState.error(e.toString()));
//     }
//   }
// } 