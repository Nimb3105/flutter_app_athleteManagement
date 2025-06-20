// import 'package:core/models/sport/sport.dart';
// import 'package:core/models/sport/sport_user.dart';
// import 'package:core/repositories/sport/sport_athlete_repository.dart';
// import 'package:core/repositories/sport/sport_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'sport_user_bloc.freezed.dart';

// @freezed
// sealed class SportUserEvent with _$SportUserEvent {
//   const factory SportUserEvent.createSportUser(SportUser sportUser) =
//       _CreateSportUser;
//   const factory SportUserEvent.getSportUserById(String id) = _GetSportUserById;
//   const factory SportUserEvent.getSportUserUserId(String userId) =
//       _GetSportUserByUserId;
//   const factory SportUserEvent.getAllSportUserByUserId(String userId) =
//       _GetAllSportUserByUserId;
//   const factory SportUserEvent.getSportUserBySportId(String sportId) =
//       _GetSportUserBySportId;
//   const factory SportUserEvent.getAllSportUsers() = _GetAllSportUsers;
//   const factory SportUserEvent.updateSportUser(String id, SportUser sportUser) =
//       _UpdateSportUser;
//   const factory SportUserEvent.deleteSportUser(String id) = _DeleteSportUser;
// }

// @freezed
// sealed class SportUserState with _$SportUserState {
//   const factory SportUserState.initial() = Sport_User_Initial;
//   const factory SportUserState.loading() = Sport_User_Loading;
//   const factory SportUserState.loadedSportUser(SportUser sportUser) =
//       LoadedSportUser;
//   const factory SportUserState.loadedSportUsers(
//     List<SportUser> sportUsers,
//     Map<String, Sport> sports, // Thêm Map<int, Sport> vào trạng thái
//   ) = LoadedSportUsers;
//   const factory SportUserState.error(String message) = Sport_User_Error;
//   const factory SportUserState.success(String message) = Sport_User_Success;
//   const factory SportUserState.loadedMultipleSportUsers(
//     Map<String, List<SportUser>> sportUsers,
//     Map<String, Sport> sports,
//     Map<String, String> errors,
//   ) = LoadedMultipleSportUsers;
// }

// class SportUserBloc extends Bloc<SportUserEvent, SportUserState> {
//   final SportUserRepository sportUserRepository;
//   final SportRepository sportRepository;
//   final Map<String, List<SportUser>> _sportUsers =
//       {}; // Lưu trữ sportUsers theo userId
//   final Map<String, Sport> _sports = {}; // Lưu trữ sports theo sportId
//   final Map<String, String> _errors = {}; // Lưu trữ lỗi theo userId

//   SportUserBloc({
//     required this.sportUserRepository,
//     required this.sportRepository,
//   }) : super(const SportUserState.initial()) {
//     on<_CreateSportUser>(_onCreateSportUser);
//     on<_GetSportUserById>(_onGetSportUserById);
//     on<_GetAllSportUserByUserId>(_onGetAllSportUserByUserId);
//     on<_GetSportUserByUserId>(_onGetSportUserByUserId);
//     // on<_GetSportUserBySportId>(_onGetSportUserBySportId);
//     // on<_GetAllSportUsers>(_onGetAllSportUsers);
//     on<_UpdateSportUser>(_onUpdateSportUser);
//     on<_DeleteSportUser>(_onDeleteSportUser);
//   }

//   Future<void> _onCreateSportUser(
//     _CreateSportUser event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       final createdSportUser = await sportUserRepository.createSportUser(
//         event.sportUser,
//       );
//       emit(const Sport_User_Success('gán môn thể thao kèm vị trí'));
//       emit(SportUserState.loadedSportUser(createdSportUser));
//     } catch (e) {
//       emit(SportUserState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetSportUserById(
//     _GetSportUserById event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       final sportUser = await sportUserRepository.getSportUserById(event.id);
//       emit(SportUserState.loadedSportUser(sportUser));
//     } catch (e) {
//       emit(SportUserState.error(e.toString()));
//     }
//   }

//   Future<void> _onGetSportUserByUserId(
//     _GetSportUserByUserId event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       final sportUser = await sportUserRepository.getSportUserByUserId(
//         event.userId,
//       );
//       emit(SportUserState.loadedSportUser(sportUser));
//     } catch (e) {
//       emit(SportUserState.error(e.toString()));
//     }
//   }
  

//   Future<void> _onGetAllSportUserByUserId(
//     _GetAllSportUserByUserId event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       final sportUsers = await sportUserRepository.getAllSportUsersByUserId(
//         event.userId,
//       );
//       _sportUsers[event.userId] = sportUsers; // Lưu sportUsers theo userId
//       for (var sportUser in sportUsers) {
//         if (!_sports.containsKey(sportUser.sportId)) {
//           final sport = await sportRepository.getSportById(sportUser.sportId);
//           _sports[sportUser.sportId] = sport;
//         }
//       }
//       emit(
//         SportUserState.loadedMultipleSportUsers(
//           Map.from(_sportUsers),
//           Map.from(_sports),
//           Map.from(_errors),
//         ),
//       );
//     } catch (e) {
//       _errors[event.userId] = e.toString(); // Lưu lỗi theo userId
//       emit(
//         SportUserState.loadedMultipleSportUsers(
//           Map.from(_sportUsers),
//           Map.from(_sports),
//           Map.from(_errors),
//         ),
//       );
//     }
//   }

//   // Future<void> _onGetSportUserBySportId(
//   //     _GetSportUserBySportId event, Emitter<SportUserState> emit) async {
//   //   emit(const SportUserState.loading());
//   //   try {
//   //     final sportUsers =
//   //         await sportUserRepository.getSportUserBySportId(event.sportId);
//   //     emit(SportUserState.loadedSportUsers(sportUsers));
//   //   } catch (e) {
//   //     emit(SportUserState.error(e.toString()));
//   //   }
//   // }

//   // Future<void> _onGetAllSportUsers(
//   //     _GetAllSportUsers event, Emitter<SportUserState> emit) async {
//   //   emit(const SportUserState.loading());
//   //   try {
//   //     final sportUsers = await sportUserRepository.getAllSportUsers();
//   //     emit(SportUserState.loadedSportUsers(sportUsers));
//   //   } catch (e) {
//   //     emit(SportUserState.error(e.toString()));
//   //   }
//   // }

//   Future<void> _onUpdateSportUser(
//     _UpdateSportUser event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       final updatedSportUser = await sportUserRepository.updateSportUser(
//         event.id,
//         event.sportUser,
//       );
//       emit(SportUserState.loadedSportUser(updatedSportUser));
//     } catch (e) {
//       emit(SportUserState.error(e.toString()));
//     }
//   }

//   Future<void> _onDeleteSportUser(
//     _DeleteSportUser event,
//     Emitter<SportUserState> emit,
//   ) async {
//     emit(const SportUserState.loading());
//     try {
//       await sportUserRepository.deleteSportUser(event.id);
//       emit(const SportUserState.success('Sport user deleted successfully'));
//     } catch (e) {
//       emit(SportUserState.error(e.toString()));
//     }
//   }
// }
