// import 'dart:convert';

// import 'package:core/models/performance/performance.dart';
// import 'package:http/http.dart' as http;

// class PerformanceRepository {
//   final String baseUrl;

//   PerformanceRepository({required this.baseUrl});

//   // Create a new performance
//   Future<Performance> createPerformance(Performance performance) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/performances'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(performance.toJson()),
//     );

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Performance.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to create performance: ${response.statusCode}');
//     }
//   }

//   // Get performance by ID
//   Future<Performance> getPerformanceById(String id) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/performances/$id'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Performance.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get performance: ${response.statusCode}');
//     }
//   }

//   // Get performances by user ID
//   Future<List<Performance>> getPerformancesByUserId(String userId) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/performances/user/$userId'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is List<dynamic>) {
//         final List<dynamic> jsonList = data['data'];
//         return jsonList
//             .map((json) => Performance.fromJson(json as Map<String, dynamic>))
//             .toList();
//       } else {
//         throw Exception('No valid "data" list found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get performances by user ID: ${response.statusCode}');
//     }
//   }

//   // Get all performances
//   Future<Map<String, dynamic>> getAllPerformances({int page = 1, int limit = 10}) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/performances?page=$page&limit=$limit'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is List<dynamic>) {
//         final List<dynamic> jsonList = data['data'];
//         final totalCount = data['totalCount'] as int? ?? 0;
//         final performances = jsonList
//             .map((json) => Performance.fromJson(json as Map<String, dynamic>))
//             .toList();
//         final hasMore = (page * limit) < totalCount;
//         return {'performances': performances, 'hasMore': hasMore};
//       } else {
//         throw Exception('No valid "data" list found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to get performances: ${response.statusCode}');
//     }
//   }

//   // Update performance
//   Future<Performance> updatePerformance(String id, Performance performance) async {
//     final response = await http.put(
//       Uri.parse('$baseUrl/performances/$id'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(performance.toJson()),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as Map<String, dynamic>;
//       if (data['data'] != null && data['data'] is Map<String, dynamic>) {
//         return Performance.fromJson(data['data'] as Map<String, dynamic>);
//       } else {
//         throw Exception('No valid "data" object found in response: $data');
//       }
//     } else {
//       throw Exception('Failed to update performance: ${response.statusCode}');
//     }
//   }

//   // Delete performance
//   Future<void> deletePerformance(String id) async {
//     final response = await http.delete(
//       Uri.parse('$baseUrl/performances/$id'),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode != 200 && response.statusCode != 204) {
//       throw Exception('Failed to delete performance: ${response.statusCode}');
//     }
//   }
// }