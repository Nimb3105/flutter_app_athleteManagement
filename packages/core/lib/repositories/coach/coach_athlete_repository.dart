import 'dart:convert';
import 'package:core/models/coach/coach_athlete.dart';
import 'package:http/http.dart' as http;

class CoachAthleteRepository {
  final String baseUrl;

  CoachAthleteRepository({required this.baseUrl});

  // Create a new coach-athlete relationship
  Future<CoachAthlete> createCoachAthlete(CoachAthlete coachAthlete) async {
    final response = await http.post(
      Uri.parse('$baseUrl/coach-athletes'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coachAthlete.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create coach-athlete: ${response.statusCode}');
    }
  }

  // Get coach-athlete by ID
  Future<CoachAthlete> getCoachAthleteById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach-athlete: ${response.statusCode}');
    }
  }

  Future<CoachAthlete?> getByAthleteId(String athleteId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes/athlete/$athleteId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      }
      return null;
    } else {
      throw Exception(
        'Failed to get coach-athlete by user ID: ${response.statusCode}',
      );
    }
  }

  // Get all coach-athlete relationships
  Future<List<CoachAthlete>> getAllCoachAthletes({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => CoachAthlete.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach-athletes: ${response.statusCode}');
    }
  }

  // Update coach-athlete
  Future<CoachAthlete> updateCoachAthlete(
    String id,
    CoachAthlete coachAthlete,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coachAthlete.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update coach-athlete: ${response.statusCode}');
    }
  }

  // Delete coach-athlete
  Future<void> deleteCoachAthlete(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete coach-athlete: ${response.statusCode}');
    }
  }

  // Get coach-athlete relationships by coach ID with pagination
  Future<Map<String, dynamic>> getAllByCoachId(
    String coachId, {
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl/coach-athletes/user/$coachId?page=$page&limit=$limit',
      ),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final coachAthletes =
            jsonList
                .map(
                  (json) => CoachAthlete.fromJson(json as Map<String, dynamic>),
                )
                .toList();
        final hasMore = coachAthletes.length == limit;
        return {'coachAthletes': coachAthletes, 'hasMore': hasMore};
      } else {
        return {'coachAthletes': [], 'hasMore': false};
      }
    } else {
      throw Exception(
        'Failed to get coach-athletes by coach ID: ${response.statusCode}',
      );
    }
  }
}
