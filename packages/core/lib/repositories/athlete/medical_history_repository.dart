import 'dart:convert';

import 'package:core/models/athlete/health/medical_history.dart';
import 'package:http/http.dart' as http;

class MedicalHistoryRepository {
  final String baseUrl;

  MedicalHistoryRepository({required this.baseUrl});

  // Create a new medical history
  Future<MedicalHistory> createMedicalHistory(MedicalHistory medicalHistory) async {
    final response = await http.post(
      Uri.parse('$baseUrl/medical-historys'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(medicalHistory.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MedicalHistory.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create medical history: ${response.statusCode}');
    }
  }

  // Get medical history by ID
  Future<MedicalHistory> getMedicalHistoryById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/medical-historys/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MedicalHistory.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get medical history: ${response.statusCode}');
    }
  }

  // Get medical history by health ID
  Future<MedicalHistory> getMedicalHistoryByHealthId(String healthId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/medical-historys/health/$healthId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MedicalHistory.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get medical history by health ID: ${response.statusCode}');
    }
  }

  // Get all medical histories
  Future<Map<String, dynamic>> getAllMedicalHistories({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/medical-historys?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final medicalHistories = jsonList
            .map((json) => MedicalHistory.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'medicalHistories': medicalHistories, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get medical histories: ${response.statusCode}');
    }
  }

  // Update medical history
  Future<MedicalHistory> updateMedicalHistory(String id, MedicalHistory medicalHistory) async {
    final response = await http.put(
      Uri.parse('$baseUrl/medical-historys/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(medicalHistory.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return MedicalHistory.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update medical history: ${response.statusCode}');
    }
  }

  // Delete medical history
  Future<void> deleteMedicalHistory(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/medical-historys/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete medical history: ${response.statusCode}');
    }
  }
}