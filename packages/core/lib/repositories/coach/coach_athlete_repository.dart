import 'dart:convert';
import 'package:core/models/coach/coach_athlete.dart';
import 'package:http/http.dart' as http;

class CoachAthleteRepository {
  final String baseUrl;

  CoachAthleteRepository({required this.baseUrl});

  Future<List<CoachAthlete>> getAllCoachAthletes({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => CoachAthlete.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get coach-athletes: ${response.statusCode}');
    }
  }

  /// ✅ Tối ưu: Phương thức này giờ sẽ tự động tải TẤT CẢ vận động viên.
  /// Logic phân trang được xử lý nội bộ và ẩn đi khỏi BLoC.
  Future<List<CoachAthlete>> getAllByCoachId(String coachId) async {
    final List<CoachAthlete> allItems = [];
    int currentPage = 1;
    bool hasMorePages = true;

    while (hasMorePages) {
      // Tăng giới hạn (limit) để giảm số lần gọi API nếu có thể
      final response = await http.get(
        Uri.parse(
          '$baseUrl/coach-athletes/user/$coachId?page=$currentPage&limit=50',
        ),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 200) {
        throw Exception('Lỗi tải danh sách VĐV: ${response.statusCode}');
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final List<dynamic> jsonList = data['data'] as List<dynamic>? ?? [];

      final pageItems =
          jsonList
              .map(
                (json) => CoachAthlete.fromJson(json as Map<String, dynamic>),
              )
              .toList();

      allItems.addAll(pageItems);

      // Nếu API trả về ít item hơn limit, nghĩa là đã ở trang cuối
      if (pageItems.length < 50) {
        hasMorePages = false;
      } else {
        currentPage++; // Chuyển sang trang tiếp theo
      }
    }
    return allItems;
  }

  // --- Các phương thức khác giữ nguyên ---

  Future<CoachAthlete> createCoachAthlete(CoachAthlete coachAthlete) async {
    final response = await http.post(
      Uri.parse('$baseUrl/coach-athletes'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coachAthlete.toJson()),
    );

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

  Future<CoachAthlete> getCoachAthleteById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

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

  Future<CoachAthlete?> getByAthleteId(String athleteId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/coach-athletes/athlete/$athleteId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return CoachAthlete.fromJson(data['data'] as Map<String, dynamic>);
      }
      return null;
    } else {
      throw Exception(
        'Failed to get coach-athlete by user ID: ${response.statusCode}',
      );
    }
  }

  Future<CoachAthlete> updateCoachAthlete(
    String id,
    CoachAthlete coachAthlete,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(coachAthlete.toJson()),
    );

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
    final response = await http.delete(
      Uri.parse('$baseUrl/coach-athletes/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete coach-athlete: ${response.statusCode}');
    }
  }

  Future<void> deleteAllByCoachId(String coachId) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/coach-athletes/coach/$coachId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
          'Failed to delete coach-athletes by coach ID: ${response.statusCode}');
    }
  }
}
