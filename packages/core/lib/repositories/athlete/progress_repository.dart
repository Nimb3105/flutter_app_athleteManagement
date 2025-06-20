// import 'dart:convert';

// import 'package:core/models/athlete/progress/progress.dart';
// import 'package:http/http.dart' as http;

// class ProgressRepository {
//   final String baseUrl;

//   ProgressRepository({required this.baseUrl});

//   // Create a new progress
//   Future<Progress> createProgress(Progress progress) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/progresses'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(progress.toJson()),
//     );

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Progress.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to create progress: ${response.statusCode}');
//     }
//   }

//   // Get progress by ID
//   Future<Progress> getProgressById(String id) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/progresses/$id'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Progress.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get progress: ${response.statusCode}');
//     }
//   }

//   // Get progresses by user ID
//   Future<List<Progress>> getProgressesByUserId(String userId) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/progresses/user/$userId'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is List<dynamic>) {
//         final List<dynamic> jsonList = data['data'];
//         return jsonList
//             .map((json) => Progress.fromJson(json as Map<String, dynamic>))
//             .toList();
//       } else {
//         throw Exception('No valid "data" list found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get progresses by user ID: ${response.statusCode}');
//     }
//   }

//   // Get all progresses
//   Future<Map<String, dynamic>> getAllProgresses({int page = 1, int limit = 10}) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/progresses?page=$page&limit=$limit'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is List<dynamic>) {
//         final List<dynamic> jsonList = data['data'];
//         final totalCount = data['totalCount'] as int? ?? 0;
//         final progresses = jsonList
//             .map((json) => Progress.fromJson(json as Map<String, dynamic>))
//             .toList();
//         final hasMore = (page * limit) < totalCount;
//         return {'progresses': progresses, 'hasMore': hasMore};
//       } else {
//         throw Exception('No valid "data" list found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get progresses: ${response.statusCode}');
//     }
//   }

//   // Update progress
//   Future<Progress> updateProgress(String id, Progress progress) async {
//     final response = await http.put(
//       Uri.parse('$baseUrl/progresses/$id'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(progress.toJson()),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Progress.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to update progress: ${response.statusCode}');
//     }
//   }

//   // Delete progress
//   Future<void> deleteProgress(String id) async {
//     final response = await http.delete(
//       Uri.parse('$baseUrl/progresses/$id'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode != 200 && response.statusCode != 204) {
//       throw Exception('Failed to delete progress: ${response.statusCode}');
//     }
//   }
// }