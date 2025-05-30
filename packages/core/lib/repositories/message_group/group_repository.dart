import 'dart:convert';

import 'package:core/models/message_group/group.dart';
import 'package:http/http.dart' as http;

class GroupRepository {
  final String baseUrl;

  GroupRepository({required this.baseUrl});

  // Create a new group
  Future<Group> createGroup(Group group) async {
    final response = await http.post(
      Uri.parse('$baseUrl/groups'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(group.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Group.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create group: ${response.statusCode}');
    }
  }

  // Get group by ID
  Future<Group> getGroupById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/groups/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Group.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get group: ${response.statusCode}');
    }
  }

  // Get group by created by
  Future<Group> getGroupByCreatedBy(String createdBy) async {
    final response = await http.get(
      Uri.parse('$baseUrl/groups/created-by/$createdBy'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Group.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get group by created by: ${response.statusCode}');
    }
  }

  // Get all groups
  Future<Map<String, dynamic>> getAllGroups({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/groups?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final groups = jsonList
            .map((json) => Group.fromJson(json as Map<String, dynamic>))
            .toList();
        final hasMore = (page * limit) < totalCount;
        return {'groups': groups, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get groups: ${response.statusCode}');
    }
  }

  // Update group
  Future<Group> updateGroup(String id, Group group) async {
    final response = await http.put(
      Uri.parse('$baseUrl/groups/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(group.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Group.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update group: ${response.statusCode}');
    }
  }

  // Delete group
  Future<void> deleteGroup(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/groups/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete group: ${response.statusCode}');
    }
  }
}