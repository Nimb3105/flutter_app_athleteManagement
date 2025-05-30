import 'dart:convert';

import 'package:core/models/athlete/achievement/achievement.dart';
import 'package:http/http.dart' as http;

class AchievementRepository {
  final String baseUrl;

  AchievementRepository({required this.baseUrl});

  // Create a new achievement
  Future<Achievement> createAchievement(Achievement achievement) async {
    final response = await http.post(
      Uri.parse('$baseUrl/achievements'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(achievement.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Achievement.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create achievement: ${response.statusCode}');
    }
  }

  // Get achievement by ID
  Future<Achievement> getAchievementById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/achievements/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Achievement.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get achievement: ${response.statusCode}');
    }
  }

  // Get achievement by user ID
  Future<Achievement> getAchievementByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/achievements/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Achievement.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get achievement by user ID: ${response.statusCode}');
    }
  }

  // Get all achievements
  Future<Map<String, dynamic>> getAllAchievements({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/achievements?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final achievements = jsonList
            .map((json) => Achievement.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'achievements': achievements, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get achievements: ${response.statusCode}');
    }
  }

  // Update achievement
  Future<Achievement> updateAchievement(String id, Achievement achievement) async {
    final response = await http.put(
      Uri.parse('$baseUrl/achievements/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(achievement.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Achievement.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update achievement: ${response.statusCode}');
    }
  }

  // Delete achievement
  Future<void> deleteAchievement(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/achievements/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete achievement: ${response.statusCode}');
    }
  }
}