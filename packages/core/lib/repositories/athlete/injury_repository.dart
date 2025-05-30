import 'dart:convert';

import 'package:core/models/athlete/injury/injury.dart';
import 'package:http/http.dart' as http;

class InjuryRepository {
  final String baseUrl;

  InjuryRepository({required this.baseUrl});

  // Create a new injury
  Future<Injury> createInjury(Injury injury) async {
    final response = await http.post(
      Uri.parse('$baseUrl/injurys'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(injury.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Injury.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create injury: ${response.statusCode}');
    }
  }

  // Get injury by ID
  Future<Injury> getInjuryById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/injurys/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Injury.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get injury: ${response.statusCode}');
    }
  }

  // Get injury by user ID
  Future<Injury> getInjuryByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/injurys/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Injury.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get injury by user ID: ${response.statusCode}');
    }
  }

  // Get all injuries
  Future<Map<String, dynamic>> getAllInjuries({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/injurys?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final injuries = jsonList
            .map((json) => Injury.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'injuries': injuries, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get injuries: ${response.statusCode}');
    }
  }

  // Update injury
  Future<Injury> updateInjury(String id, Injury injury) async {
    final response = await http.put(
      Uri.parse('$baseUrl/injurys/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(injury.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Injury.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update injury: ${response.statusCode}');
    }
  }

  // Delete injury
  Future<void> deleteInjury(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/injurys/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete injury: ${response.statusCode}');
    }
  }
}