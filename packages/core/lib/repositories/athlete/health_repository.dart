import 'dart:convert';

import 'package:core/models/athlete/health/health.dart';
import 'package:http/http.dart' as http;

class HealthRepository {
  final String baseUrl;

  HealthRepository({required this.baseUrl});

  // Create a new health record
  Future<Health> createHealth(Health health) async {
    final response = await http.post(
      Uri.parse('$baseUrl/health-records'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(health.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Health.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create health record: ${response.statusCode}');
    }
  }

  // Get health record by ID
  Future<Health> getHealthById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/health-records/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Health.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get health record: ${response.statusCode}');
    }
  }

  // Get health record by user ID
  Future<Health> getHealthByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/health-records/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Health.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get health record by user ID: ${response.statusCode}');
    }
  }

  // Get all health records
  Future<Map<String, dynamic>> getAllHealthRecords({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/health-records?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final healthRecords = jsonList
            .map((json) => Health.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'healthRecords': healthRecords, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get health records: ${response.statusCode}');
    }
  }

  // Update health record
  Future<Health> updateHealth(String id, Health health) async {
    final response = await http.put(
      Uri.parse('$baseUrl/health-records/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(health.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Health.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update health record: ${response.statusCode}');
    }
  }

  // Delete health record
  Future<void> deleteHealth(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/health-records/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete health record: ${response.statusCode}');
    }
  }
}