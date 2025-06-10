import 'dart:convert';
import 'package:core/models/coach/coach_athlete.dart';
import 'package:http/http.dart' as http;

class CoachAthleteRepository {
  final String baseUrl;

  CoachAthleteRepository({required this.baseUrl});

  // Create a new coach-athlete relationship
  Future<CoachAthlete> createCoachAthlete(CoachAthlete coachAthlete) async {
    final response = await http.post(Uri.parse('$baseUrl/coach-athletes'), headers: {'Content-Type': 'application/json'}, body: jsonEncode(coachAthlete.toJson()));

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create coach-athlete: ${response.statusCode}');
    }
  }

  // Get coach-athlete by ID
  Future<CoachAthlete> getCoachAthleteById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/coach-athletes/$id'), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach-athlete: ${response.statusCode}');
    }
  }

  // Get all coach-athlete relationships
  Future<List<CoachAthlete>> getAllCoachAthletes({int page = 1, int limit = 10}) async {
    final response = await http.get(Uri.parse('$baseUrl/coach-athletes?page=$page&limit=$limit'), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList.map((json) => CoachAthlete.fromJson(json as Map<String, dynamic>)).toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach-athletes: ${response.statusCode}');
    }
  }

  // Update coach-athlete
  Future<CoachAthlete> updateCoachAthlete(String id, CoachAthlete coachAthlete) async {
    final response = await http.put(Uri.parse('$baseUrl/coach-athletes/$id'), headers: {'Content-Type': 'application/json'}, body: jsonEncode(coachAthlete.toJson()));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update coach-athlete: ${response.statusCode}');
    }
  }

  // Delete coach-athlete
  Future<void> deleteCoachAthlete(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/coach-athletes/$id'), headers: {'Content-Type': 'application/json'});

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete coach-athlete: ${response.statusCode}');
    }
  }

  Future<Map<String,dynamic>> getAllByAthleteId(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/coach-athletes/user/$userId'), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null) {
        // Kiểm tra nếu data['data'] là một đối tượng
        if (data['data'] is Map<String, dynamic>) {
          final coachAthletes = CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
          return {
            'coachAthletes': [coachAthletes],
          }; // Trả về danh sách chứa một Achievement
        }
        // Kiểm tra nếu data['data'] là một danh sách
        else if (data['data'] is List<dynamic>) {
          final List<dynamic> jsonList = data['data'];
          final coachAthletes = jsonList.map((json) => CoachAthlete.fromJson(json as Map<String, dynamic>)).toList();
          return {'coachAthletes': coachAthletes};
        } else {
          return {'coachAthletes': []}; // Trả về danh sách rỗng nếu không hợp lệ
        }
      } else {
        return {'coachAthletes': []}; // Trả về danh sách rỗng nếu data là null
      }
    } else {
      throw Exception('Failed to get achievement by user ID: ${response.statusCode}');
    }
  }
}
