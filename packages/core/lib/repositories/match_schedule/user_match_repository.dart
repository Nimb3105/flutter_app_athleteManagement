import 'dart:convert';

import 'package:core/models/match_schedule/user_match.dart';
import 'package:http/http.dart' as http;

class UserMatchRepository {
  final String baseUrl;

  UserMatchRepository({required this.baseUrl});

  // Create a new user match
  Future<UserMatch> createUserMatch(UserMatch userMatch) async {
    final response = await http.post(
      Uri.parse('$baseUrl/user-matchs'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(userMatch.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return UserMatch.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create user match: ${response.statusCode}');
    }
  }

  // Get user match by ID
  Future<UserMatch> getUserMatchById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/user-matchs/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return UserMatch.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get user match: ${response.statusCode}');
    }
  }

  // Get user match by user ID
  Future<Map<String,dynamic>> getUserMatchByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/user-matchs/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null) {
        // Kiểm tra nếu data['data'] là một đối tượng
        if (data['data'] is Map<String, dynamic>) {
          final userMatches = UserMatch.fromJson(
            data['data'] as Map<String, dynamic>,
          );
          return {
            'userMatches': [userMatches],
          }; // Trả về danh sách chứa một Achievement
        }
        // Kiểm tra nếu data['data'] là một danh sách
        else if (data['data'] is List<dynamic>) {
          final List<dynamic> jsonList = data['data'];
          final userMatches =
              jsonList
                  .map(
                    (json) =>
                        UserMatch.fromJson(json as Map<String, dynamic>),
                  )
                  .toList();
          return {'userMatches': userMatches};
        } else {
          return {'userMatches': []}; // Trả về danh sách rỗng nếu không hợp lệ
        }
      } else {
        return {'userMatches': []}; // Trả về danh sách rỗng nếu data là null
      }
    } else {
      throw Exception(
        'Failed to get achievement by user ID: ${response.statusCode}',
      );
    }

  }

  // Get all user matches
  Future<Map<String, dynamic>> getAllUserMatches({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/user-matchs?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final userMatches =
            jsonList
                .map((json) => UserMatch.fromJson(json as Map<String, dynamic>))
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'userMatches': userMatches, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get user matches: ${response.statusCode}');
    }
  }

  // Update user match
  Future<UserMatch> updateUserMatch(String id, UserMatch userMatch) async {
    final response = await http.put(
      Uri.parse('$baseUrl/user-matchs/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(userMatch.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return UserMatch.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update user match: ${response.statusCode}');
    }
  }

  // Delete user match
  Future<void> deleteUserMatch(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/user-matchs/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete user match: ${response.statusCode}');
    }
  }
}
