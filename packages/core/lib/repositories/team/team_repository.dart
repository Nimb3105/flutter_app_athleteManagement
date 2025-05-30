import 'dart:convert';

import 'package:core/models/team/team.dart';
import 'package:http/http.dart' as http;

class TeamRepository {
  final String baseUrl;

  TeamRepository({required this.baseUrl});

  // Create a new team
  Future<Team> createTeam(Team team) async {
    final response = await http.post(
      Uri.parse('$baseUrl/teams'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(team.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Team.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create team: ${response.statusCode}');
    }
  }

  // Get team by ID
  Future<Team> getTeamById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/teams/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Team.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get team: ${response.statusCode}');
    }
  }

  // Get teams by sport ID
  Future<List<Team>> getTeamsBySportId(String sportId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/teams/sport/$sportId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Team.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get teams by sport ID: ${response.statusCode}');
    }
  }

  // Get all teams
  Future<Map<String, dynamic>> getAllTeams({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/teams?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final teams = jsonList
            .map((json) => Team.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'teams': teams, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get teams: ${response.statusCode}');
    }
  }

  // Update team
  Future<Team> updateTeam(String id, Team team) async {
    final response = await http.put(
      Uri.parse('$baseUrl/teams/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(team.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Team.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update team: ${response.statusCode}');
    }
  }

  // Delete team
  Future<void> deleteTeam(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/teams/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete team: ${response.statusCode}');
    }
  }
}