import 'dart:convert';

import 'package:core/models/feedback/feedback.dart';
import 'package:http/http.dart' as http;

class FeedbackRepository {
  final String baseUrl;

  FeedbackRepository({required this.baseUrl});

  // Create a new feedback
  Future<Feedback> createFeedback(Feedback feedback) async {
    final response = await http.post(
      Uri.parse('$baseUrl/feedbacks'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(feedback.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Feedback.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create feedback: ${response.statusCode}');
    }
  }

  // Get feedback by ID
  Future<Feedback> getFeedbackById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/feedbacks/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Feedback.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get feedback: ${response.statusCode}');
    }
  }

  // Get feedback by user ID
  Future<Feedback> getFeedbackByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/feedbacks/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Feedback.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get feedback by user ID: ${response.statusCode}');
    }
  }

  // Get all feedbacks
  Future<Map<String, dynamic>> getAllFeedbacks({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/feedbacks?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final feedbacks = jsonList
            .map((json) => Feedback.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'feedbacks': feedbacks, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get feedbacks: ${response.statusCode}');
    }
  }

  // Update feedback
  Future<Feedback> updateFeedback(String id, Feedback feedback) async {
    final response = await http.put(
      Uri.parse('$baseUrl/feedbacks/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(feedback.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Feedback.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update feedback: ${response.statusCode}');
    }
  }

  // Delete feedback
  Future<void> deleteFeedback(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/feedbacks/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete feedback: ${response.statusCode}');
    }
  }
}