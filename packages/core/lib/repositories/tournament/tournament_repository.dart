import 'dart:convert';

import 'package:core/models/tournament/tournament.dart';
import 'package:http/http.dart' as http;

class TournamentRepository {
  final String baseUrl;

  TournamentRepository({required this.baseUrl});

  // Create a new tournament
  Future<Tournament> createTournament(Tournament tournament) async {
    final response = await http.post(
      Uri.parse('$baseUrl/tournaments'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(tournament.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Tournament.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create tournament: ${response.statusCode}');
    }
  }

  // Get tournament by ID
  Future<Tournament> getTournamentById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/tournaments/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Tournament.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get tournament: ${response.statusCode}');
    }
  }

  // Get all tournaments
  Future<Map<String, dynamic>> getAllTournaments({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/tournaments?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final tournaments = jsonList
            .map((json) => Tournament.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'tournaments': tournaments, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get tournaments: ${response.statusCode}');
    }
  }

  // Update tournament
  Future<Tournament> updateTournament(String id, Tournament tournament) async {
    final response = await http.put(
      Uri.parse('$baseUrl/tournaments/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(tournament.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Tournament.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update tournament: ${response.statusCode}');
    }
  }

  // Delete tournament
  Future<void> deleteTournament(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/tournaments/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete tournament: ${response.statusCode}');
    }
  }
}