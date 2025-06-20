import 'dart:convert';

import 'package:core/models/exercise/exercise.dart';
import 'package:http/http.dart' as http;

class GetAllExerciseResponse {
  final List<Exercise> items;
  final int totalCount;

  GetAllExerciseResponse({required this.items, required this.totalCount});
}

class ExerciseRepository {
  final String baseUrl;

  ExerciseRepository({required this.baseUrl});

  // Create a new exercise
  Future<Exercise> createExercise(Exercise exercise) async {
    final response = await http.post(
      Uri.parse('$baseUrl/exercises'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(exercise.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Exercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create exercise: ${response.statusCode}');
    }
  }

  // Get exercise by ID
  Future<Exercise> getExerciseById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/exercises/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Exercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get exercise: ${response.statusCode}');
    }
  }

  Future<GetAllExerciseResponse> getAllExercisesByBodyPart(
    String bodyPart, {
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl/exercises/bodyPart/$bodyPart?page=$page&limit=$limit',
      ),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final exercises =
            jsonList
                .map((json) => Exercise.fromJson(json as Map<String, dynamic>))
                .toList();

        final totalCount = data['totalCount'] ?? 0;

        return GetAllExerciseResponse(items: exercises, totalCount: totalCount);
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get exercises: ${response.statusCode}');
    }
  }

  Future<GetAllExerciseResponse> getAllExercisesBySportName(
    String sportName, {
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/exercises/sport/$sportName?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final exercises =
            jsonList
                .map((json) => Exercise.fromJson(json as Map<String, dynamic>))
                .toList();

        final totalCount = data['totalCount'] ?? 0;

        return GetAllExerciseResponse(items: exercises, totalCount: totalCount);
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get exercises: ${response.statusCode}');
    }
  }

  // Get all exercises
  Future<GetAllExerciseResponse> getAllExercises({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/exercises?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final exercises =
            jsonList
                .map((json) => Exercise.fromJson(json as Map<String, dynamic>))
                .toList();

        final totalCount = data['totalCount'] ?? 0;

        return GetAllExerciseResponse(items: exercises, totalCount: totalCount);
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get exercises: ${response.statusCode}');
    }
  }

  // Update exercise
  Future<Exercise> updateExercise(String id, Exercise exercise) async {
    final response = await http.put(
      Uri.parse('$baseUrl/exercises/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(exercise.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Exercise.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update exercise: ${response.statusCode}');
    }
  }

  // Delete exercise
  Future<void> deleteExercise(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/exercises/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete exercise: ${response.statusCode}');
    }
  }
}
