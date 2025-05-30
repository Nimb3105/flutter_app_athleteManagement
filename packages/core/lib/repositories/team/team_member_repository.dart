import 'dart:convert';

import 'package:core/models/team/team_member.dart';
import 'package:http/http.dart' as http;

class TeamMemberRepository {
  final String baseUrl;

  TeamMemberRepository({required this.baseUrl});

  // Create a new team member
  Future<TeamMember> createTeamMember(TeamMember teamMember) async {
    final response = await http.post(
      Uri.parse('$baseUrl/team-members'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(teamMember.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TeamMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create team member: ${response.statusCode}');
    }
  }

  // Get team member by ID
  Future<TeamMember> getTeamMemberById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/team-members/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TeamMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get team member: ${response.statusCode}');
    }
  }

  // Get team members by team ID
  Future<List<TeamMember>> getTeamMembersByTeamId(String teamId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/team-members/team/$teamId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => TeamMember.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get team members by team ID: ${response.statusCode}');
    }
  }

  // Get team members by user ID
  Future<List<TeamMember>> getTeamMembersByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/team-members/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => TeamMember.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get team members by user ID: ${response.statusCode}');
    }
  }

  // Get all team members
  Future<Map<String, dynamic>> getAllTeamMembers({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/team-members?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final teamMembers = jsonList
            .map((json) => TeamMember.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'teamMembers': teamMembers, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get team members: ${response.statusCode}');
    }
  }

  // Update team member
  Future<TeamMember> updateTeamMember(String id, TeamMember teamMember) async {
    final response = await http.put(
      Uri.parse('$baseUrl/team-members/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(teamMember.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TeamMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update team member: ${response.statusCode}');
    }
  }

  // Delete team member
  Future<void> deleteTeamMember(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/team-members/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete team member: ${response.statusCode}');
    }
  }
}