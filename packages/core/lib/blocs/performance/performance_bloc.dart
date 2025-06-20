// import 'package:core/models/performance/performance.dart';
// import 'package:core/repositories/performance/performance_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'performance_bloc.freezed.dart';

// @freezed
// sealed class PerformanceEvent with _$PerformanceEvent {
//   const factory PerformanceEvent.createPerformance(Performance performance) = _CreatePerformance;
//   const factory PerformanceEvent.getPerformanceById(String id) = _GetPerformanceById;
//   const factory PerformanceEvent.getPerformancesByUserId(String userId) = _GetPerformancesByUserId;
//   const factory PerformanceEvent.getAllPerformances({
//     @Default(1) int page,
//     @Default(10) int limit,
//   }) = _GetAllPerformances;
//   const factory PerformanceEvent.updatePerformance(String id, Performance performance) = _UpdatePerformance;
//   const factory PerformanceEvent.deletePerformance(String id) = _DeletePerformance;
// }

// @freezed
// sealed class PerformanceState with _$PerformanceState {
//   const factory PerformanceState.initial() = Performance_Initial;
//   const factory PerformanceState.loading() = Performance_Loading;
//   const factory PerformanceState.loadedPerformance(Performance performance) = LoadedPerformance;
//   const factory PerformanceState.loadedPerformances(
//     List<Performance> performances,
//     int currentPage,
//     int limit,
//     bool hasMore,
//   ) = LoadedPerformances;
//   const factory PerformanceState.error(String message) = Performance_Error;
//   const factory PerformanceState.success(String message) = Performance_Success;
// }

// class PerformanceBloc extends Bloc<PerformanceEvent, PerformanceState> {
//   final PerformanceRepository performanceRepository;

//   PerformanceBloc({required this.performanceRepository})
//       : super(const PerformanceState.initial()) {
//     on<_CreatePerformance>(_onCreatePerformance);
//     on<_GetPerformanceById>(_onGetPerformanceById);
//     on<_GetPerformancesByUserId>(_onGetPerformancesByUserId);
//     on<_GetAllPerformances>(_onGetAllPerformances);
//     on<_UpdatePerformance>(_onUpdatePerformance);
//     on<_DeletePerformance>(_onDeletePerformance);
//   }

//   Future<void> _onCreatePerformance(
//     _CreatePerformance event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       final createdPerformance = await performanceRepository.createPerformance(event.performance);
//       emit(PerformanceState.loadedPerformance(createdPerformance));
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetPerformanceById(
//     _GetPerformanceById event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       final performance = await performanceRepository.getPerformanceById(event.id);
//       emit(PerformanceState.loadedPerformance(performance));
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetPerformancesByUserId(
//     _GetPerformancesByUserId event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       final performances = await performanceRepository.getPerformancesByUserId(event.userId);
//       emit(PerformanceState.loadedPerformances(performances, 1, performances.length, false));
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetAllPerformances(
//     _GetAllPerformances event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       final result = await performanceRepository.getAllPerformances(
//         page: event.page,
//         limit: event.limit,
//       );
//       emit(
//         PerformanceState.loadedPerformances(
//           result['performances'] as List<Performance>,
//           event.page,
//           event.limit,
//           result['hasMore'] as bool,
//         ),
//       );
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }

//   Future<void> _onUpdatePerformance(
//     _UpdatePerformance event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       final updatedPerformance = await performanceRepository.updatePerformance(
//         event.id,
//         event.performance,
//       );
//       emit(PerformanceState.loadedPerformance(updatedPerformance));
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }

//   Future<void> _onDeletePerformance(
//     _DeletePerformance event,
//     Emitter<PerformanceState> emit,
//   ) async {
//     emit(const PerformanceState.loading());
//     try {
//       await performanceRepository.deletePerformance(event.id);
//       emit(const PerformanceState.success('Performance deleted successfully'));
//     } catch (e) {
//       emit(PerformanceState.error(e.toString()));
//     }
//   }
// }