import 'dart:convert';

import 'package:core/models/user/user.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String baseUrl;

  UserRepository({required this.baseUrl});

  Future<Map<String, dynamic>> getUsersByRoleWithPagination({
    required String role,
    int page = 1,
    int limit = 10,
  }) async {
    // API endpoint của bạn có thể khác, hãy thay đổi nếu cần
    final response = await http.get(
      Uri.parse('$baseUrl/users/role/$role?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      // Xử lý cả hai trường hợp JSON
      final List<dynamic> jsonList = data['data'] as List<dynamic>? ?? [];

      final users =
          jsonList
              .map((json) => User.fromJson(json as Map<String, dynamic>))
              .toList();

      // Nếu không có dữ liệu, totalCount sẽ là 0
      final totalCount = data['totalCount'] as int? ?? 0;
      final hasMore = (page * limit) < totalCount;

      return {'users': users, 'hasMore': hasMore};
    } else {
      // Ném lỗi để BLoC có thể bắt và hiển thị cho người dùng
      throw Exception(
        'Lấy danh sách người dùng thất bại: ${response.statusCode}',
      );
    }
  }

  // Create a new user
  Future<User> createUser(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return User.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create user: ${response.statusCode}');
    }
  }

  // Get user by ID
  Future<User> getUserById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return User.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get user: ${response.statusCode}');
    }
  }

  // Get user by email
  Future<User> getUserByEmail(String email) async {
    final response = await http.get(
      Uri.parse('$baseUrl/users/email/$email'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return User.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get user by email: ${response.statusCode}');
    }
  }

  // Get all users
  Future<Map<String, dynamic>> getAllUsers({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final users =
            jsonList
                .map((json) => User.fromJson(json as Map<String, dynamic>))
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'users': users, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get users: ${response.statusCode}');
    }
  }

  // Update user
  Future<User> updateUser(String id, User user) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return User.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update user: ${response.statusCode}');
    }
  }

  // Delete user
  Future<void> deleteUser(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    // ✅ SỬA LẠI HOÀN TOÀN LOGIC XỬ LÝ LỖI
    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Nếu thành công (mã 200, 201, 204, v.v.), thoát hàm.
      return;
    } else {
      // Nếu thất bại, bắt đầu xử lý lỗi.
      String errorMessage;

      // Cố gắng đọc nội dung lỗi từ response body.
      if (response.body.isNotEmpty) {
        try {
          // Thử giải mã JSON
          final errorData = jsonDecode(response.body) as Map<String, dynamic>;
          // Lấy lỗi từ key 'error' như bạn đã mô tả
          errorMessage =
              errorData['error']?.toString() ?? 'Lỗi không xác định.';
        } catch (e) {
          // Nếu response body không phải JSON, hãy lấy nội dung thô của nó.
          // Điều này rất hữu ích để debug.
          errorMessage = response.body;
        }
      } else {
        // Nếu body rỗng, trả về lỗi chung với status code
        errorMessage =
            'Yêu cầu thất bại với mã trạng thái: ${response.statusCode}';
      }

      // Ném ra Exception với thông báo lỗi đã được xử lý
      throw Exception(errorMessage);
    }
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final token = data['token'] as String?;

      if (token != null) {
        // Sau khi có token, gọi luôn hàm lấy thông tin user
        final user = await getUserByEmail(email);
        return {'token': token, 'user': user};
      } else {
        throw Exception('Không tìm thấy "token" trong phản hồi: $data');
      }
    } else {
      throw Exception(
        'Đăng nhập thất bại: ${response.statusCode} - ${response.body}',
      );
    }
  }

  Future<Map<String, dynamic>> getAllUserCoachBySportId(
    String sportId, {
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/users/coach/sport/$sportId?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final users =
            jsonList
                .map((json) => User.fromJson(json as Map<String, dynamic>))
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'users': users, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get users: ${response.statusCode}');
    }
  }
}
