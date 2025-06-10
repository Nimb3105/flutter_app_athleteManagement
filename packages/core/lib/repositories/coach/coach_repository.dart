import 'dart:convert';

import 'package:core/models/coach/coach.dart';
import 'package:http/http.dart' as http;

class CoachRepository {
  final String baseUrl;

  CoachRepository({required this.baseUrl});

  // Create a new coach
  Future<Coach> createCoach(Coach coach) async {
    final response = await http.post(
      Uri.parse('$baseUrl/coachs'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coach.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Coach.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create coach: ${response.statusCode}');
    }
  }

  // Get coach by ID
  Future<Coach> getCoachById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coachs/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Coach.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach: ${response.statusCode}');
    }
  }

  // Get coach by user ID
  Future<Coach> getCoachByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coachs/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Coach.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach by user ID: ${response.statusCode}');
    }
  }

  // Get all coaches
  Future<Map<String, dynamic>> getAllCoaches({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coachs?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final coaches =
            jsonList
                .map((json) => Coach.fromJson(json as Map<String, dynamic>))
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'coaches': coaches, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get coaches: ${response.statusCode}');
    }
  }

  // Update coach
  Future<Coach> updateCoach(String id, Coach coach) async {
    final response = await http.put(
      Uri.parse('$baseUrl/coachs/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coach.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Coach.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update coach: ${response.statusCode}');
    }
  }

  // Delete coach
  Future<void> deleteCoach(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/coachs/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete coach: ${response.statusCode}');
    }
  }
}
