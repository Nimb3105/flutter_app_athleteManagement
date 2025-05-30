import 'dart:convert';

import 'package:core/models/message_group/message.dart';
import 'package:http/http.dart' as http;

class MessageRepository {
  final String baseUrl;

  MessageRepository({required this.baseUrl});

  // Create a new message
  Future<Message> createMessage(Message message) async {
    final response = await http.post(
      Uri.parse('$baseUrl/messages'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(message.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Message.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create message: ${response.statusCode}');
    }
  }

  // Get message by ID
  Future<Message> getMessageById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/messages/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Message.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get message: ${response.statusCode}');
    }
  }

  // Get messages by group ID
  Future<List<Message>> getMessagesByGroupId(String groupId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/messages/group/$groupId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Message.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get messages by group ID: ${response.statusCode}');
    }
  }

  // Get all messages
  Future<Map<String, dynamic>> getAllMessages({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/messages?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final messages = jsonList
            .map((json) => Message.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'messages': messages, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get messages: ${response.statusCode}');
    }
  }

  // Update message
  Future<Message> updateMessage(String id, Message message) async {
    final response = await http.put(
      Uri.parse('$baseUrl/messages/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(message.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Message.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update message: ${response.statusCode}');
    }
  }

  // Delete message
  Future<void> deleteMessage(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/messages/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete message: ${response.statusCode}');
    }
  }
}