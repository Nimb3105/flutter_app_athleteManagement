import 'dart:convert';

import 'package:core/models/message_group/group_member.dart';
import 'package:http/http.dart' as http;

class GroupMemberRepository {
  final String baseUrl;

  GroupMemberRepository({required this.baseUrl});

  // Create a new group member
  Future<GroupMember> createGroupMember(GroupMember groupMember) async {
    final response = await http.post(
      Uri.parse('$baseUrl/group-members'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(groupMember.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return GroupMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create group member: ${response.statusCode}');
    }
  }

  // Get group member by ID
  Future<GroupMember> getGroupMemberById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/group-members/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return GroupMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get group member: ${response.statusCode}');
    }
  }

  // Get group member by user ID
  Future<List<GroupMember>> getGroupMemberByUserId(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/group-members/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => GroupMember.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get team members by user ID: ${response.statusCode}',
      );
    }
  }

  // Get all group members
  Future<Map<String, dynamic>> getAllGroupMembers({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/group-members?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final groupMembers =
            jsonList
                .map(
                  (json) => GroupMember.fromJson(json as Map<String, dynamic>),
                )
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'groupMembers': groupMembers, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get group members: ${response.statusCode}');
    }
  }

  // Update group member
  Future<GroupMember> updateGroupMember(
    String id,
    GroupMember groupMember,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/group-members/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(groupMember.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return GroupMember.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update group member: ${response.statusCode}');
    }
  }

  // Delete group member
  Future<void> deleteGroupMember(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/group-members/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete group member: ${response.statusCode}');
    }
  }
}
