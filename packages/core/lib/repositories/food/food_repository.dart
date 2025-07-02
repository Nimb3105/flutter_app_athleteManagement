import 'dart:convert';

import 'package:core/models/food/food.dart';
import 'package:http/http.dart' as http;

class GetAllFoodRespone {
  final List<Food> items;
  final int totalCount;

  GetAllFoodRespone({required this.items, required this.totalCount});
}

class FoodRepository {
  final String baseUrl;

  FoodRepository({required this.baseUrl});

  // Create a new food
  Future<Food> createFood(Food food) async {
    final response = await http.post(
      Uri.parse('$baseUrl/foods'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(food.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Food.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create food: ${response.statusCode}');
    }
  }

  // Get food by ID
  Future<Food> getFoodById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/foods/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Food.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get food: ${response.statusCode}');
    }
  }

  Future<GetAllFoodRespone> getFoodsByFilter({
    String? foodType,
    int? caloriesMin,
    int? caloriesMax,
    int? proteinMin,
    int? proteinMax,
    int? carbsMin,
    int? carbsMax,
    int? fatMin,
    int? fatMax,
    int page = 1,
    int limit = 10,
  }) async {
    // 1️⃣ Xây map query – chỉ thêm field khi cần
    final params = <String, String>{
      if (foodType != null && foodType.isNotEmpty) 'foodType': foodType,
      'caloriesMin': (caloriesMin ?? -1).toString(),
      'caloriesMax': (caloriesMax ?? -1).toString(),
      'proteinMin': (proteinMin ?? -1).toString(),
      'proteinMax': (proteinMax ?? -1).toString(),
      'carbsMin': (carbsMin ?? -1).toString(),
      'carbsMax': (carbsMax ?? -1).toString(),
      'fatMin': (fatMin ?? -1).toString(),
      'fatMax': (fatMax ?? -1).toString(),
      'page': page.toString(),
      'limit': limit.toString(),
    };

    // 2️⃣ Gọi API
    final uri = Uri.parse(
      '$baseUrl/foods/filter',
    ).replace(queryParameters: params);
    final response = await http.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    // 3️⃣ Xử lý kết quả
    if (response.statusCode != 200) {
      throw Exception('Failed to get foods: ${response.statusCode}');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final list =
        (data['data'] as List<dynamic>? ?? [])
            .map((json) => Food.fromJson(json as Map<String, dynamic>))
            .toList();
    final totalCount = data['totalCount'] ?? 0;

    return GetAllFoodRespone(items: list, totalCount: totalCount);
  }

  // Get all foods
  Future<GetAllFoodRespone> getAllFoods({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/foods?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        final foods =
            jsonList
                .map((json) => Food.fromJson(json as Map<String, dynamic>))
                .toList();

        final totalCount = data['totalCount'] ?? 0;
        return GetAllFoodRespone(items: foods, totalCount: totalCount);
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get foods: ${response.statusCode}');
    }
  }

  // Update food
  Future<Food> updateFood(String id, Food food) async {
    final response = await http.put(
      Uri.parse('$baseUrl/foods/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(food.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return Food.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update food: ${response.statusCode}');
    }
  }

  // Delete food
  Future<void> deleteFood(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/foods/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete food: ${response.statusCode}');
    }
  }
}
