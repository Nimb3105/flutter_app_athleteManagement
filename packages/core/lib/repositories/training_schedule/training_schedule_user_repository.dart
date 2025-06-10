import 'dart:convert';

import 'package:core/models/training_schedule/training_schedule_user.dart';
import 'package:http/http.dart' as http;

class TrainingScheduleUserRepository {
  final String baseUrl;

  TrainingScheduleUserRepository({required this.baseUrl});

  // Create a new training schedule athlete
  Future<TrainingScheduleUser> createTrainingScheduleUser(
    TrainingScheduleUser scheduleAthlete,
  ) async {
    final response = await http.post(
      Uri.parse('$baseUrl/training-schedule-users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(scheduleAthlete.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingScheduleUser.fromJson(
          data['data'] as Map<String, dynamic>,
        );
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to create training schedule athlete: ${response.statusCode}',
      );
    }
  }

  // Get training schedule athlete by ID
  Future<TrainingScheduleUser> getTrainingScheduleUserById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedule-users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingScheduleUser.fromJson(
          data['data'] as Map<String, dynamic>,
        );
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training schedule athlete: ${response.statusCode}',
      );
    }
  }

  // Get all training schedule athletes
  Future<List<TrainingScheduleUser>> getAllTrainingScheduleUsers() async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedule-users'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map(
              (json) =>
                  TrainingScheduleUser.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training schedule athletes: ${response.statusCode}',
      );
    }
  }

  // Update training schedule athlete
  Future<TrainingScheduleUser> updateTrainingScheduleUser(
    String id,
    TrainingScheduleUser scheduleAthlete,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/training-schedule-users/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(scheduleAthlete.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingScheduleUser.fromJson(
          data['data'] as Map<String, dynamic>,
        );
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to update training schedule athlete: ${response.statusCode}',
      );
    }
  }

  // Delete training schedule athlete
  Future<void> deleteTrainingScheduleUser(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/training-schedule-users/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
        'Failed to delete training schedule athlete: ${response.statusCode}',
      );
    }
  }

  // Get all sport athletes by user ID
  Future<List<TrainingScheduleUser>> getAllTrainingScheduleUserByUserId(
    String userId,
  ) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-schedule-users/user/$userId/all'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final dynamic decodedData = jsonDecode(response.body);
      List<dynamic> jsonList;

      // Kiểm tra xem dữ liệu trả về là List hay Map
      if (decodedData is List<dynamic>) {
        jsonList = decodedData;
      } else if (decodedData is Map<String, dynamic>) {
        if (decodedData['data'] != null &&
            decodedData['data'] is List<dynamic>) {
          jsonList = decodedData['data'];
        } else {
          throw Exception(
            'No valid "data" list found in response: $decodedData',
          );
        }
      } else {
        throw Exception('Unexpected response format: $decodedData');
      }

      // Ánh xạ danh sách JSON thành List<SportAthlete>
      return jsonList.map((json) {
        if (json is Map<String, dynamic>) {
          return TrainingScheduleUser.fromJson(json);
        } else {
          throw Exception('Expected Map<String, dynamic> but got: $json');
        }
      }).toList();
    } else {
      throw Exception(
        'Failed to get sport athletes by user ID: ${response.statusCode}',
      );
    }
  }
}
