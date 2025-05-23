// notification_repository.dart


import 'dart:convert';

import 'package:core/models/notification_reminder/notification.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NotificationRepository {
  final String baseUrl;

  NotificationRepository({required this.baseUrl});

  Future<Notification> createNotification(Notification notification) async {
    debugPrint('POST $baseUrl/notifications, Body: ${jsonEncode(notification.toJson())}');
    final response = await http.post(
      Uri.parse('$baseUrl/notifications'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(notification.toJson()),
    );
    debugPrint('Phản hồi POST: Status ${response.statusCode}, Body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Notification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Tạo thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to create notification: ${response.statusCode}');
    }
  }

  Future<Notification> getNotificationById(String id) async {
    debugPrint('GET $baseUrl/notifications/$id');
    final response = await http.get(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint('Phản hồi GET: Status ${response.statusCode}, Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Notification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Lấy thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to get notification: ${response.statusCode}');
    }
  }

  Future<List<Notification>> getNotificationsByUserId(String userId) async {
    debugPrint('GET $baseUrl/notifications/user/$userId');
    final response = await http.get(
      Uri.parse('$baseUrl/notifications/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint('Phản hồi GET: Status ${response.statusCode}, Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => Notification.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        debugPrint('Lỗi: Không tìm thấy danh sách "data" trong phản hồi: $data');
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Lấy danh sách thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to get notifications: ${response.statusCode}');
    }
  }

  Future<Notification> updateNotification(String id, Notification notification) async {
    debugPrint('PUT $baseUrl/notifications/$id, Body: ${jsonEncode(notification.toJson())}');
    final response = await http.put(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(notification.toJson()),
    );
    debugPrint('Phản hồi PUT: Status ${response.statusCode}, Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Notification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Cập nhật thông báo thất bại: ${response.statusCode}, Body: ${response.body}');
      throw Exception('Failed to update notification: ${response.statusCode}');
    }
  }

  Future<void> deleteNotification(String id) async {
    debugPrint('DELETE $baseUrl/notifications/$id');
    final response = await http.delete(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint('Phản hồi DELETE: Status ${response.statusCode}, Body: ${response.body}');

    if (response.statusCode != 200 && response.statusCode != 204) {
      debugPrint('Lỗi: Xóa thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to delete notification: ${response.statusCode}');
    }
  }
}