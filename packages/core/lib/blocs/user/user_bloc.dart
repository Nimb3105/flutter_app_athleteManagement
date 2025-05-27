import 'package:core/models/user/user.dart';
import 'package:core/repositories/user/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.createUser(User user) = CreateUser;
  const factory UserEvent.getUserById(String id) = GetUserById;
  const factory UserEvent.getUserByEmail(String email) = GetUserByEmail;
  const factory UserEvent.getAllUsers() = GetAllUsers;
  const factory UserEvent.updateUser(String id, User user) = UpdateUser;
  const factory UserEvent.deleteUser(String id) = DeleteUser;
  const factory UserEvent.login(String email, String password) = Login;
}

@freezed
sealed class UserState with _$UserState {
  const factory UserState.initial() = User_Initial;
  const factory UserState.loading() = User_Loading;
  const factory UserState.loadedUser(User user) = LoadedUser;
  const factory UserState.loadedUsers(List<User> users) = LoadedUsers;
  const factory UserState.error(String message) = User_Error;
  const factory UserState.success(String message) = User_Success;
  const factory UserState.loggedIn(String token) = LoggedIn;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(const UserState.initial()) {
    on<CreateUser>(_onCreateUser);
    on<GetUserById>(_onGetUserById);
    on<GetUserByEmail>(_onGetUserByEmail);
    on<GetAllUsers>(_onGetAllUsers);
    on<UpdateUser>(_onUpdateUser);
    on<DeleteUser>(_onDeleteUser);
    on<Login>(_onLogin);
  }

  Future<void> _onCreateUser(CreateUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final createdUser = await userRepository.createUser(event.user);
      emit(UserState.loadedUser(createdUser));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onGetUserById(
    GetUserById event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final user = await userRepository.getUserById(event.id);
      emit(UserState.loadedUser(user));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onGetUserByEmail(
    GetUserByEmail event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final user = await userRepository.getUserByEmail(event.email);
      emit(UserState.loadedUser(user));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onGetAllUsers(
    GetAllUsers event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final users = await userRepository.getAllUsers();
      emit(UserState.loadedUsers(users));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onUpdateUser(UpdateUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final updatedUser = await userRepository.updateUser(event.id, event.user);
      emit(UserState.loadedUser(updatedUser));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onDeleteUser(DeleteUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      await userRepository.deleteUser(event.id);
      emit(const UserState.success('User deleted successfully'));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onLogin(Login event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final token = await userRepository.login(event.email, event.password);
      emit(UserState.loggedIn(token));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
