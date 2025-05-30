import 'dart:convert';

import 'package:core/models/coach/coach_certification.dart';
import 'package:http/http.dart' as http;

class CoachCertificationRepository {
  final String baseUrl;

  CoachCertificationRepository({required this.baseUrl});

  // Create a new coach certification
  Future<CoachCertification> createCoachCertification(CoachCertification certification) async {
    final response = await http.post(
      Uri.parse('$baseUrl/coach-certifications'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(certification.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachCertification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create coach certification: ${response.statusCode}');
    }
  }

  // Get coach certification by ID
  Future<CoachCertification> getCoachCertificationById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-certifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachCertification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach certification: ${response.statusCode}');
    }
  }

  // Get coach certification by user ID
  Future<CoachCertification> getCoachCertificationByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-certifications/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachCertification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach certification by user ID: ${response.statusCode}');
    }
  }

  // Get all coach certifications
  Future<Map<String, dynamic>> getAllCoachCertifications({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-certifications?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final certifications = jsonList
            .map((json) => CoachCertification.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'certifications': certifications, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach certifications: ${response.statusCode}');
    }
  }

  // Update coach certification
  Future<CoachCertification> updateCoachCertification(String id, CoachCertification certification) async {
    final response = await http.put(
      Uri.parse('$baseUrl/coach-certifications/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(certification.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachCertification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update coach certification: ${response.statusCode}');
    }
  }

  // Delete coach certification
  Future<void> deleteCoachCertification(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/coach-certifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete coach certification: ${response.statusCode}');
    }
  }
}