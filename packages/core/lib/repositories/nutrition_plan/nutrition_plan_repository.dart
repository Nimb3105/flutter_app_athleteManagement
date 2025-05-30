import 'dart:convert';
import 'package:core/models/nutrition_plan/nutrition_plan.dart';
import 'package:http/http.dart' as http;

class NutritionPlanRepository {
  final String baseUrl;

  NutritionPlanRepository({required this.baseUrl});

  // Create a new nutrition plan
  Future<NutritionPlan> createNutritionPlan(NutritionPlan nutritionPlan) async {
    final response = await http.post(
      Uri.parse('$baseUrl/nutrition-plans'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(nutritionPlan.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return NutritionPlan.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to create nutrition plan: ${response.statusCode}',
      );
    }
  }

  // Get nutrition plan by ID
  Future<NutritionPlan> getNutritionPlanById(String id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/nutrition-plans/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return NutritionPlan.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception('Failed to get nutrition plan: ${response.statusCode}');
    }
  }

  // Get nutrition plans by athlete ID
  Future<List<NutritionPlan>> getNutritionPlansByUserId(String usesrId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/nutrition-plans/user/$usesrId'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => NutritionPlan.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to get nutrition plans by athlete ID: ${response.statusCode}',
      );
    }
  }

  // Get all nutrition plans
  Future<List<NutritionPlan>> getAllNutritionPlans({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/nutrition-plans?page=$page&limit=$limit'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is List<dynamic>) {
        final List<dynamic> jsonList = data['data'];
        return jsonList
            .map((json) => NutritionPlan.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('No valid "data" list found in response: $data');
      }
    } else {
      throw Exception('Failed to get nutrition plans: ${response.statusCode}');
    }
  }

  // Update nutrition plan
  Future<NutritionPlan> updateNutritionPlan(
    String id,
    NutritionPlan nutritionPlan,
  ) async {
    final response = await http.put(
      Uri.parse('$baseUrl/nutrition-plans/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(nutritionPlan.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['data'] != null && data['data'] is Map<String, dynamic>) {
        return NutritionPlan.fromJson(data['data'] as Map<String, dynamic>);
      } else {
        throw Exception('No valid "data" object found in response: $data');
      }
    } else {
      throw Exception(
        'Failed to update nutrition plan: ${response.statusCode}',
      );
    }
  }

  // Delete nutrition plan
  Future<void> deleteNutritionPlan(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/nutrition-plans/$id'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
        'Failed to delete nutrition plan: ${response.statusCode}',
      );
    }
  }
}
