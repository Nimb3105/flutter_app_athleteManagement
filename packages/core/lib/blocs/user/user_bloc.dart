import 'package:core/models/user/user.dart';
import 'package:core/repositories/user/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.createUser(User user) = CreateUser;
  const factory UserEvent.getUserById(String id) = GetUserById;
  const factory UserEvent.getUserByEmail(String email) = GetUserByEmail;
  const factory UserEvent.logout() = Logout;
  const factory UserEvent.getAllUsers({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllUsers;
  const factory UserEvent.updateUser(String id, User user) = UpdateUser;
  const factory UserEvent.deleteUser(String id) = DeleteUser;
  const factory UserEvent.login(String email, String password) = Login;
  const factory UserEvent.getAllUserCoachBySportId(
    String sportId, {
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllUserCoachBySportId;

  const factory UserEvent.getUsersByRoleWithPagination({
    required String role,
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetUsersByRoleWithPagination;
}

@freezed
sealed class UserState with _$UserState {
  const factory UserState.initial() = User_Initial;
  const factory UserState.loading() = User_Loading;
  const factory UserState.loadedUser(User user) = LoadedUser;
  const factory UserState.loadedUsers(
    List<User> users,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedUsers;
  const factory UserState.error(String message) = User_Error;
  const factory UserState.success(String message) = User_Success;
  const factory UserState.loggedIn(String token) = LoggedIn;
  const factory UserState.loadedMultipleUsers(
    Map<String, User> users,
    Map<String, String> errors,
  ) = LoadedMultipleUsers;

  const factory UserState.loginSuccess({
    required User user,
    required String token,
  }) = LoginSuccess;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
// Lưu trữ users đã tải
// Lưu trữ lỗi theo userId

  UserBloc({required this.userRepository}) : super(const UserState.initial()) {
    on<CreateUser>(_onCreateUser);
    on<GetUserById>(_onGetUserById);
    on<GetUserByEmail>(_onGetUserByEmail);
    on<GetAllUsers>(_onGetAllUsers);
    on<UpdateUser>(_onUpdateUser);
    on<DeleteUser>(_onDeleteUser);
    on<Login>(_onLogin);
    on<Logout>(_onLogout);
    on<GetAllUserCoachBySportId>(_onGetAllUserCoachBySportId);
    on<GetUsersByRoleWithPagination>(_onGetUsersByRoleWithPagination);
  }

  Future<void> _onGetUsersByRoleWithPagination(
    GetUsersByRoleWithPagination event,
    Emitter<UserState> emit,
  ) async {
    // Giữ lại trạng thái cũ nếu đang tải thêm trang
    final currentState = state;
    List<User> oldUsers = [];
    if (currentState is LoadedUsers && event.page > 1) {
      oldUsers = currentState.users;
    }

    // Chỉ hiển thị loading toàn màn hình ở lần tải đầu tiên
    if (event.page == 1) {
      emit(const UserState.loading());
    }

    try {
      final result = await userRepository.getUsersByRoleWithPagination(
        role: event.role,
        page: event.page,
        limit: event.limit,
      );
      final newUsers = result['users'] as List<User>;
      final hasMore = result['hasMore'] as bool;

      // Kết hợp danh sách cũ và mới
      final combinedUsers = oldUsers + newUsers;

      emit(
        UserState.loadedUsers(combinedUsers, event.page, event.limit, hasMore),
      );
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onGetAllUserCoachBySportId(
    GetAllUserCoachBySportId event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final result = await userRepository.getAllUserCoachBySportId(
        event.sportId,
        page: event.page,
        limit: event.limit,
      );
      emit(
        UserState.loadedUsers(
          result['users'] as List<User>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
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

  // Future<void> _onGetUserById(
  //   GetUserById event,
  //   Emitter<UserState> emit,
  // ) async {
  //   emit(const UserState.loading());
  //   try {
  //     final user = await userRepository.getUserById(event.id);
  //     _users[event.id] = user; // Lưu user vào map
  //     emit(UserState.loadedMultipleUsers(Map.from(_users), Map.from(_errors)));
  //   } catch (e) {
  //     _errors[event.id] = e.toString(); // Lưu lỗi vào map
  //     emit(UserState.loadedMultipleUsers(Map.from(_users), Map.from(_errors)));
  //   }
  // }

  Future<void> _onGetUserById(
    GetUserById event,
    Emitter<UserState> emit,
  ) async {
    // Không emit loading ở đây để tránh xóa state cũ
    try {
      final user = await userRepository.getUserById(event.id);
      
      // Lấy danh sách user hiện tại từ state
      final currentState = state;
      final currentUsers = currentState is LoadedMultipleUsers ? currentState.users : <String, User>{};
      final currentErrors = currentState is LoadedMultipleUsers ? currentState.errors : <String, String>{};

      // Thêm hoặc cập nhật user mới vào map
      final newUsers = Map<String, User>.from(currentUsers);
      newUsers[event.id] = user;

      // Emit state mới với danh sách user đã được cập nhật
      emit(UserState.loadedMultipleUsers(newUsers, Map.from(currentErrors)));

    } catch (e) {
      final currentState = state;
      final currentUsers = currentState is LoadedMultipleUsers ? currentState.users : <String, User>{};
      final currentErrors = currentState is LoadedMultipleUsers ? currentState.errors : <String, String>{};
      
      final newErrors = Map<String, String>.from(currentErrors);
      newErrors[event.id] = e.toString();
      
      emit(UserState.loadedMultipleUsers(Map.from(currentUsers), newErrors));
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
      emit(
        UserState.loadedUsers(
          users as List<User>,
          event.page,
          event.limit,
          users['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onUpdateUser(UpdateUser event, Emitter<UserState> emit) async {
    // Vẫn phát ra loading ở đầu
    emit(const UserState.loading());
    try {
      final updatedUser = await userRepository.updateUser(event.id, event.user);

      // ✅ THAY ĐỔI: Phát ra trạng thái loadedUser với dữ liệu mới
      emit(UserState.loadedUser(updatedUser));
      // THAY ĐỔI: Thay vì phát LoadedUser, hãy phát ra trạng thái success
      emit(const UserState.success('Cập nhật thông tin User thành công'));
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
      // Gọi phương thức login đã được sửa đổi trong Repository
      final result = await userRepository.login(event.email, event.password);
      final user = result['user'] as User;
      final token = result['token'] as String;

      // Chỉ phát ra MỘT trạng thái thành công duy nhất
      emit(UserState.loginSuccess(user: user, token: token));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onLogout(Logout event, Emitter<UserState> emit) async {
    // Trong ứng dụng thực tế, bạn sẽ cần xóa token và dữ liệu người dùng khỏi bộ nhớ.
    // Ở đây, chúng ta chỉ cần phát ra một trạng thái thành công để kích hoạt điều hướng.
    emit(const UserState.success('Đăng xuất thành công'));
  }
}
