import 'dart:convert';

import 'package:core/models/sport/sport_user.dart';
import 'package:http/http.dart' as http;

class SportUserRepository {
  final String baseUrl;

  SportUserRepository({required this.baseUrl});

  // Create a new sport athlete
  Future<SportUser> createSportUser(SportUser sportUser) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sport-users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(sportUser.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return SportUser.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create sport athlete: ${response.statusCode}');
    }
  }

  // Get sport athlete by ID
  Future<SportUser> getSportUserById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sport-users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return SportUser.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get sport athlete: ${response.statusCode}');
    }
  }

  // Get sport athlete by user ID
  Future<SportUser> getSportUserByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sport-users/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return SportUser.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get sport athlete by user ID: ${response.statusCode}',
      );
    }
  }

  // Get sport athlete by sport ID
  Future<List<SportUser>> getSportUserBySportId(String sportId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sport-users/sport/$sportId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => SportUser.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get sport athletes by sport ID: ${response.statusCode}',
      );
    }
  }

  // Get all sport athletes
  Future<List<SportUser>> getAllSportUsers() async {
    final response = await http.get(
      Uri.parse('$baseUrl/sport-users'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => SportUser.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get sport athletes: ${response.statusCode}');
    }
  }

  // Update sport athlete
  Future<SportUser> updateSportUser(
    String id,
    SportUser sportUser,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/sport-users/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(sportUser.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return SportUser.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update sport athlete: ${response.statusCode}');
    }
  }

  // Delete sport athlete
  Future<void> deleteSportUser(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/sport-users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete sport athlete: ${response.statusCode}');
    }
  }

  // Get all sport athletes by user ID
  // Future<List<SportUser>> getAllSportUsersByUserId(String userId) async {
  //   final response = await http.get(
  //     Uri.parse('$baseUrl/sport-users/user/$userId/all'),
  //     headers: {'Content-Type': 'application/json'},
  //   );

  //   if (response.statusCode == 200) {
  //     final data = jsonDecode(response.body) as Map<String, dynamic>;
  //     if (data['data'] != null && data['data'] is List<dynamic>) {
  //       final List<dynamic> jsonList = data['data'];
  //       return jsonList
  //           .map((json) => SportUser.fromJson(json as Map<String, dynamic>))
  //           .toList();
  //     } else {
  //       throw Exception('No valid "data" list found in response: $data');
  //     }
  //   } else {
  //     throw Exception(
  //         'Failed to get sport athletes by user ID: ${response.statusCode}');
  //   }
  // }

  // Get all sport athletes by user ID
  Future<List<SportUser>> getAllSportUsersByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sport-users/user/$userId/all'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final dynamic decodedData = jsonDecode(response.body);
      List<dynamic> jsonList;

      // Kiểm tra xem dữ liệu trả về là List hay Map
      if (decodedData is List<dynamic>) {
        jsonList = decodedData;
      } else if (decodedData is Map<String, dynamic>) {
        if (decodedData['data'] != null &&
            decodedData['data'] is List<dynamic>) {
          jsonList = decodedData['data'];
        } else {
          jsonList = [];
        }
      } else {
        throw Exception('Unexpected response format: $decodedData');
      }

      // Ánh xạ danh sách JSON thành List<SportUser>
      return jsonList.map((json) {
        if (json is Map<String, dynamic>) {
          return SportUser.fromJson(json);
        } else {
          throw Exception('Expected Map<String, dynamic> but got: $json');
        }
      }).toList();
    } else {
      throw Exception(
        'Failed to get sport user by user ID: ${response.statusCode}',
      );
    }
  }
}
