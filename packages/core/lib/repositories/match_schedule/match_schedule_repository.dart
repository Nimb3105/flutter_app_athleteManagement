import 'dart:convert';

import 'package:core/models/match_schedule/match_schedule.dart';
import 'package:http/http.dart' as http;

class MatchScheduleRepository {
  final String baseUrl;

  MatchScheduleRepository({required this.baseUrl});

  // Create a new match schedule
  Future<MatchSchedule> createMatchSchedule(MatchSchedule matchSchedule) async {
    final response = await http.post(
      Uri.parse('$baseUrl/match-schedules'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(matchSchedule.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MatchSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create match schedule: ${response.statusCode}');
    }
  }

  // Get match schedule by ID
  Future<MatchSchedule> getMatchScheduleById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/match-schedules/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MatchSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get match schedule: ${response.statusCode}');
    }
  }

  // Get match schedule by tournament ID
  Future<MatchSchedule> getMatchScheduleByTournamentId(String tournamentId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/match-schedules/tournament/$tournamentId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MatchSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get match schedule by tournament ID: ${response.statusCode}');
    }
  }

  // Get all match schedules
  Future<Map<String, dynamic>> getAllMatchSchedules({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/match-schedules?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final matchSchedules = jsonList
            .map((json) => MatchSchedule.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'matchSchedules': matchSchedules, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get match schedules: ${response.statusCode}');
    }
  }

  // Update match schedule
  Future<MatchSchedule> updateMatchSchedule(String id, MatchSchedule matchSchedule) async {
    final response = await http.put(
      Uri.parse('$baseUrl/match-schedules/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(matchSchedule.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MatchSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update match schedule: ${response.statusCode}');
    }
  }

  // Delete match schedule
  Future<void> deleteMatchSchedule(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/match-schedules/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete match schedule: ${response.statusCode}');
    }
  }
}