import 'dart:convert';

import 'package:core/models/notification_reminder/reminder.dart';
import 'package:http/http.dart' as http;

class ReminderRepository {
  final String baseUrl;

  ReminderRepository({required this.baseUrl});

  // Create a new reminder
  Future<Reminder> createReminder(Reminder reminder) async {
    final response = await http.post(
      Uri.parse('$baseUrl/reminders'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(reminder.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Reminder.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create reminder: ${response.statusCode}');
    }
  }

  // Get reminder by ID
  Future<Reminder> getReminderById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/reminders/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Reminder.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get reminder: ${response.statusCode}');
    }
  }

  // Get reminders by user ID
  Future<List<Reminder>> getRemindersByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/reminders/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Reminder.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get reminders: ${response.statusCode}');
    }
  }

  // Update reminder
  Future<Reminder> updateReminder(String id, Reminder reminder) async {
    final response = await http.put(
      Uri.parse('$baseUrl/reminders/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(reminder.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Reminder.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update reminder: ${response.statusCode}');
    }
  }

  // Delete reminder
  Future<void> deleteReminder(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/reminders/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete reminder: ${response.statusCode}');
    }
  }
}
