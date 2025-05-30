import 'dart:convert';
import 'package:http/http.dart' as http;

typedef FromJson<T> = T Function(Map<String, dynamic> json);
typedef ToJson<T> = Map<String, dynamic> Function(T object);

class BaseRepository<T> {
  final String baseUrl;
  final String endpoint;
  final FromJson<T> fromJson;
  final ToJson<T> toJson;

  BaseRepository({
    required this.baseUrl,
    required this.endpoint,
    required this.fromJson,
    required this.toJson,
  });

  Future<T> create(T item) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(toJson(item)),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return fromJson(data['data']);
    } else {
      throw Exception('Failed to create item: ${response.statusCode}');
    }
  }

  Future<T> getById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint/$id'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return fromJson(data['data']);
    } else {
      throw Exception('Failed to get item: ${response.statusCode}');
    }
  }

  Future<List<T>> getAll() async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final items = data['data'] as List;
      return items.map((item) => fromJson(item)).toList();
    } else {
      throw Exception('Failed to get list: ${response.statusCode}');
    }
  }

  Future<T> update(String id, T item) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$endpoint/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(toJson(item)),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return fromJson(data['data']);
    } else {
      throw Exception('Failed to update item: ${response.statusCode}');
    }
  }

  Future<void> delete(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint/$id'));

    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Failed to delete item: ${response.statusCode}');
    }
  }
}
