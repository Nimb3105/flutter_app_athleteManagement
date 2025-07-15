import 'dart:convert';

import 'package:core/models/training_schedule/daily_schedule.dart';
import 'package:http/http.dart' as http;

class DailyScheduleNotFoundException implements Exception {
  @override
  String toString() => 'DailyScheduleNotFoundException';
}

class GetAllDailyScheduleRespone {
  final List<DailySchedule> items;
  final int totalCount;

  GetAllDailyScheduleRespone({required this.items, required this.totalCount});
}

class DailyScheduleRepository {
  final String baseUrl;

  DailyScheduleRepository({required this.baseUrl});

  Future<List<DailySchedule>> getAllDailySchedulesByUserId(
    String userId,
  ) async {
    final response = await http.get(
      Uri.parse('$baseUrl/dailySchedules/user/$userId/all'),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => DailySchedule.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        return []; // Trả về danh sách rỗng nếu không có dữ liệu
      }
    } else {
      throw Exception(
        'Failed to get daily schedules by user: ${response.statusCode}',
      );
    }
  }

  // Lấy tất cả lịch tập được tạo bởi một người dùng (huấn luyện viên)
  Future<List<DailySchedule>> getAllDailySchedulesByCreatorId(
    String creatorId,
  ) async {
    final response = await http.get(
      Uri.parse('$baseUrl/dailySchedules/creator/$creatorId'),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => DailySchedule.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        // Trả về danh sách rỗng nếu không có dữ liệu
        return [];
      }
    } else {
      throw Exception(
        'Failed to get daily schedules by creator: ${response.statusCode}',
      );
    }
  }

  Future<DailySchedule> createDailySchedule(DailySchedule dailySchedule) async {
    final response = await http.post(
      Uri.parse('$baseUrl/dailySchedules'),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(dailySchedule.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return DailySchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Tạo thất bại: ${response.statusCode}');
    }
  }

  Future<DailySchedule> getDailyScheduleById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/dailySchedule/$id'),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return DailySchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get dailySchedule: ${response.statusCode}');
    }
  }

  Future<DailySchedule> getDailyScheduleByUserId(
    String userId,
    String day,
  ) async {
    final response = await http.get(
      Uri.parse('$baseUrl/dailySchedules/user/$userId/$day'),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return DailySchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response');
      }
    }

    // 🧠 Phân tích lỗi 500 hoặc khác
    final rawBody = response.body;
    String? errorMessage;

    try {
      final errorBody = jsonDecode(rawBody);
      if (errorBody is Map<String, dynamic>) {
        errorMessage = (errorBody['error'] ?? '').toString().toLowerCase();
      }
      // ignore: empty_catches
    } catch (e) {}

    if (errorMessage != null &&
        errorMessage.contains('daily schedule not found')) {
      throw DailyScheduleNotFoundException(); // ✅ nằm ngoài try-catch
    }

    throw Exception('Failed to get dailySchedule: ${response.statusCode}');
  }

  Future<GetAllDailyScheduleRespone> getAllDailySchedule({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/dailySchedule?page=$page&limit=$limit'),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = data['data'];
        final dailySchedule =
            jsonList
                .map(
                  (json) =>
                      DailySchedule.fromJson(json as Map<String, dynamic>),
                )
                .toList();
        final totalCount = data['totalCount'] ?? 0;

        return GetAllDailyScheduleRespone(
          items: dailySchedule,
          totalCount: totalCount,
        );
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get dailyScheduel: ${response.statusCode}');
    }
  }

  Future<DailySchedule> updateDailySchedule(
    String id,
    DailySchedule dailySchedule,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/dailySchedule/$id'),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(dailySchedule.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return DailySchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get dailyScheduel: ${response.statusCode}');
    }
  }

  Future<void> deleteDailySchedule(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/dailySchedule/$id'),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete exercise: ${response.statusCode}');
    }
  }
}
