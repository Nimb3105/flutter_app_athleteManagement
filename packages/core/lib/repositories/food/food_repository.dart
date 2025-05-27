import 'dart:convert';

import 'package:core/models/food/food.dart';
import 'package:http/http.dart' as http;

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

  // Get all foods
  Future<List<Food>> getAllFoods({int page = 1, int limit = 10}) async {
  final response = await http.get(
    Uri.parse('$baseUrl/foods?page=$page&limit=$limit'),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    if (data['data'] != null && data['data'] is List<dynamic>) {
      final List<dynamic> jsonList = data['data'];
      return jsonList
          .map((json) => Food.fromJson(json as Map<String, dynamic>))
          .toList();
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
