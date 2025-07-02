import 'dart:convert';

import 'package:core/models/training_schedule/training_schedule.dart';
import 'package:http/http.dart' as http;

class TrainingScheduleRepository {
  final String baseUrl;

  TrainingScheduleRepository({required this.baseUrl});

  // Create a new training schedule
  Future<TrainingSchedule> createTrainingSchedule(
    TrainingSchedule schedule,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/training-schedules'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(schedule.toJson()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        if (data['data'] != null && data['data'] is Map<String, dynamic>) {
          return TrainingSchedule.fromJson(
            data['data'] as Map<String, dynamic>,
          );
        } else {
          throw Exception(
            'Không tìm thấy đối tượng "data" hợp lệ trong phản hồi: $data',
          );
        }
      } else {
        // Xử lý lỗi từ server
        final errorData = jsonDecode(response.body) as Map<String, dynamic>;
        final errorMessage =
            errorData['error'] as String? ??
            'Lỗi không xác định từ server: ${response.statusCode}';
        throw Exception(errorMessage);
      }
    } catch (e) {
      rethrow; // Ném lại lỗi để BLoC xử lý
    }
  }

  Future<List<TrainingSchedule>> getAllTrainingScheduleByDailyScheduleId(String dailyScheduleId, String date) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedules/daily/$dailyScheduleId/$date'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final trainingSchedules =
            jsonList
                .map((json) => TrainingSchedule.fromJson(json as Map<String, dynamic>))
                .toList();

        return trainingSchedules;
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get exercises: ${response.statusCode}');
    }
  }

  // Get training schedule by ID
  Future<TrainingSchedule> getTrainingScheduleById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedules/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training schedule: ${response.statusCode}',
      );
    }
  }

  // Get all training schedules
  Future<List<TrainingSchedule>> getAllTrainingSchedules() async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedules'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map(
              (json) => TrainingSchedule.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training schedules: ${response.statusCode}',
      );
    }
  }

  // Update training schedule
  Future<TrainingSchedule> updateTrainingSchedule(
    TrainingSchedule schedule,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/training-schedules'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(schedule.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingSchedule.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to update training schedule: ${response.statusCode}',
      );
    }
  }

  // Delete training schedule
  Future<void> deleteTrainingSchedule(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/training-schedules/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
        'Failed to delete training schedule: ${response.statusCode}',
      );
    }
  }
}
