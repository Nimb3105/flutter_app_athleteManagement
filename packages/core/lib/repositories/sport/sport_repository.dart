import 'dart:convert';

import 'package:core/models/sport/sport.dart';
import 'package:http/http.dart' as http;

class SportRepository {
  final String baseUrl;

  SportRepository({required this.baseUrl});

  // Create a new sport
  Future<Sport> createSport(Sport sport) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sports'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(sport.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Sport.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create sport: ${response.statusCode}');
    }
  }

  // Get sport by ID
  Future<Sport> getSportById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sports/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Sport.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get sport: ${response.statusCode}');
    }
  }

  // Get all sports
  Future<List<Sport>> getAllSports({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/sports?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Sport.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get sports: ${response.statusCode}');
    }
  }

  // Update sport
  Future<Sport> updateSport(String id, Sport sport) async {
    final response = await http.put(
      Uri.parse('$baseUrl/sports/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(sport.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Sport.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update sport: ${response.statusCode}');
    }
  }

  // Delete sport
  Future<void> deleteSport(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/sports/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete sport: ${response.statusCode}');
    }
  }
}
