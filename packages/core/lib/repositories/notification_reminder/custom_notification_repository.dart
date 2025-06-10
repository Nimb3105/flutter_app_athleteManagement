import 'dart:convert';

import 'package:core/models/notification_reminder/custom_notification.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CustomNotificationRepository {
  final String baseUrl;

  CustomNotificationRepository({required this.baseUrl});

  Future<CustomNotification> createNotification(CustomNotification notification) async {
    debugPrint(
      'POST $baseUrl/notifications, Body: ${jsonEncode(notification.toJson())}',
    );
    final response = await http.post(
      Uri.parse('$baseUrl/notifications'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(notification.toJson()),
    );
    debugPrint(
      'Phản hồi POST: Status ${response.statusCode}, Body: ${response.body}',
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CustomNotification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Tạo thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to create notification: ${response.statusCode}');
    }
  }

  Future<CustomNotification> getNotificationById(String id) async {
    debugPrint('GET $baseUrl/notifications/$id');
    final response = await http.get(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint(
      'Phản hồi GET: Status ${response.statusCode}, Body: ${response.body}',
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CustomNotification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint('Lỗi: Lấy thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to get notification: ${response.statusCode}');
    }
  }

  Future<List<CustomNotification>> getNotificationsByUserId(String userId) async {
    debugPrint('GET $baseUrl/notifications/user/$userId');
    final response = await http.get(
      Uri.parse('$baseUrl/notifications/user/$userId'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint(
      'Phản hồi GET: Status ${response.statusCode}, Body: ${response.body}',
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => CustomNotification.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        debugPrint(
          'Lỗi: Không tìm thấy danh sách "data" trong phản hồi: $data',
        );
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      debugPrint(
        'Lỗi: Lấy danh sách thông báo thất bại: ${response.statusCode}',
      );
      throw Exception('Failed to get notifications: ${response.statusCode}');
    }
  }

  Future<Map<String,dynamic>> getAllNotification({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/notifications?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final totalCount = data['totalCount'] as int? ?? 0;
        final notifications =
            jsonList
                .map((json) => CustomNotification.fromJson(json as Map<String, dynamic>))
                .toList();
        final hasMore = (page * limit) < totalCount;
        return {'notifications': notifications, 'hasMore': hasMore};
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get athletes: ${response.statusCode}');
    }
  }

  Future<CustomNotification> updateNotification(
    String id,
    CustomNotification notification,
  ) async {
    debugPrint(
      'PUT $baseUrl/notifications/$id, Body: ${jsonEncode(notification.toJson())}',
    );
    final response = await http.put(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(notification.toJson()),
    );
    debugPrint(
      'Phản hồi PUT: Status ${response.statusCode}, Body: ${response.body}',
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CustomNotification.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        debugPrint('Lỗi: Không tìm thấy "data" trong phản hồi: $data');
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      debugPrint(
        'Lỗi: Cập nhật thông báo thất bại: ${response.statusCode}, Body: ${response.body}',
      );
      throw Exception('Failed to update notification: ${response.statusCode}');
    }
  }

  Future<void> deleteNotification(String id) async {
    debugPrint('DELETE $baseUrl/notifications/$id');
    final response = await http.delete(
      Uri.parse('$baseUrl/notifications/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    debugPrint(
      'Phản hồi DELETE: Status ${response.statusCode}, Body: ${response.body}',
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      debugPrint('Lỗi: Xóa thông báo thất bại: ${response.statusCode}');
      throw Exception('Failed to delete notification: ${response.statusCode}');
    }
  }


}
