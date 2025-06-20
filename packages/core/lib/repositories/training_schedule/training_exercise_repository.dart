import 'dart:convert';

import 'package:core/models/training_schedule/training_exercise.dart';
import 'package:http/http.dart' as http;

class TrainingExerciseRepository {
  final String baseUrl;

  TrainingExerciseRepository({required this.baseUrl});

  // Create a new training exercise
  Future<TrainingExercise> createTrainingExercise(
    TrainingExercise trainingExercise,
  ) async {
    final response = await http.post(
      Uri.parse('$baseUrl/training-exercises'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(trainingExercise.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingExercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to create training exercise: ${response.statusCode}',
      );
    }
  }

  // Get training exercise by ID
  Future<TrainingExercise> getTrainingExerciseById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-exercises/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingExercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training exercise: ${response.statusCode}',
      );
    }
  }

  // Get all training exercises
  Future<List<TrainingExercise>> getAllTrainingExercises() async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-exercises'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map(
              (json) => TrainingExercise.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get training exercises: ${response.statusCode}',
      );
    }
  }

  // Update training exercise
  Future<TrainingExercise> updateTrainingExercise(
    TrainingExercise trainingExercise,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/training-exercises'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(trainingExercise.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return TrainingExercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to update training exercise: ${response.statusCode}',
      );
    }
  }

  // Delete training exercise
  Future<void> deleteTrainingExercise(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/training-exercises/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
        'Failed to delete training exercise: ${response.statusCode}',
      );
    }
  }

  Future<List<TrainingExercise>> getAllTrainingExerciseByScheduleId(
    String scheduleId,
  ) async {
    final response = await http.get(
      Uri.parse('$baseUrl/training-exercises/schedule/$scheduleId/all'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final dynamic decodedData = jsonDecode(response.body);
      List<dynamic> jsonList;

      // Check if the response is a List or a Map
      if (decodedData is List<dynamic>) {
        jsonList = decodedData;
      } else if (decodedData is Map<String, dynamic>) {
        if (decodedData['data'] != null &&
            decodedData['data'] is List<dynamic>) {
          jsonList = decodedData['data'];
        } else {
          // Handle null or invalid data by returning an empty list
          return [];
        }
      } else {
        throw Exception('Unexpected response format: $decodedData');
      }

      // Return empty list if data is empty
      if (jsonList.isEmpty) {
        return [];
      }

      // Map the JSON list to List<TrainingExercise>
      return jsonList.map((json) {
        if (json is Map<String, dynamic>) {
          return TrainingExercise.fromJson(json);
        } else {
          throw Exception('Expected Map<String, dynamic> but got: $json');
        }
      }).toList();
    } else {
      throw Exception(
        'Failed to get training exercises by schedule ID: ${response.statusCode}',
      );
    }
  }
}
