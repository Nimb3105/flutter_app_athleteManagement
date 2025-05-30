import 'dart:convert';
import 'package:core/models/nutrition_plan/plan_food.dart';
import 'package:http/http.dart' as http;

class PlanFoodRepository {
  final String baseUrl;

  PlanFoodRepository({required this.baseUrl});

  // Create a new plan food
  Future<PlanFood> createPlanFood(PlanFood planFood) async {
    final response = await http.post(
      Uri.parse('$baseUrl/plan-foods'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(planFood.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return PlanFood.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to create plan food: ${response.statusCode}');
    }
  }

  // Get plan food by ID
  Future<PlanFood> getPlanFoodById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/plan-foods/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return PlanFood.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get plan food: ${response.statusCode}');
    }
  }

  // Get all plan foods
  Future<List<PlanFood>> getAllPlanFoods({int page = 1, int limit = 10}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/plan-foods?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => PlanFood.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get plan foods: ${response.statusCode}');
    }
  }

  // Get all plan foods by nutrition plan ID
  Future<List<PlanFood>> getAllByNutritionPlanId(String nutritionPlanId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/plan-foods/nutrition/$nutritionPlanId/all'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => PlanFood.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get plan foods by nutrition plan ID: ${response.statusCode}');
    }
  }

  // Update plan food
  Future<PlanFood> updatePlanFood(String id, PlanFood planFood) async {
    final response = await http.put(
      Uri.parse('$baseUrl/plan-foods/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(planFood.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return PlanFood.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to update plan food: ${response.statusCode}');
    }
  }

  // Delete plan food
  Future<void> deletePlanFood(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/plan-foods/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete plan food: ${response.statusCode}');
    }
  }
}