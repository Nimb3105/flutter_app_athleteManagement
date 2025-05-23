

import 'dart:convert';

import 'package:core/models/athlete/athlete.dart';
import 'package:http/http.dart' as http;

class AthleteRepository {
  final String baseUrl;

  AthleteRepository({required this.baseUrl});

  // Create a new athlete
  Future<Athlete> createAthlete(Athlete athlete) async {
    final response = await http.post(
      Uri.parse('$baseUrl/athletes'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(athlete.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Athlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create athlete: ${response.statusCode}');
    }
  }

  // Get athlete by ID
  Future<Athlete> getAthleteById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Athlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get athlete: ${response.statusCode}');
    }
  }

  // Get athlete by user ID
  Future<Athlete> getAthleteByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/athletes/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Athlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
          'Failed to get athlete by user ID: ${response.statusCode}');
    }
  }

  // Get all athletes
  Future<List<Athlete>> getAllAthletes() async {
    final response = await http.get(
      Uri.parse('$baseUrl/athletes'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Athlete.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get athletes: ${response.statusCode}');
    }
  }

  // Update athlete
  Future<Athlete> updateAthlete(String id, Athlete athlete) async {
    final response = await http.put(
      Uri.parse('$baseUrl/athletes/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(athlete.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Athlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update athlete: ${response.statusCode}');
    }
  }

  // Delete athlete
  Future<void> deleteAthlete(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete athlete: ${response.statusCode}');
    }
  }
}
