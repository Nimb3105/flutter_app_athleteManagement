// lib/repositories/suggestion_repository.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class SuggestionRepository {
  // Thay thế bằng API Key của bạn
  final String _apiKey = 'AIzaSyDUT7k97htRqykCAMGYa23LJMz4dYVXVMM';
  final String _geminiUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent';

  Future<List<Map<String, dynamic>>> getExerciseSuggestions({
    required String goal,
    required String muscleGroup,
    required String equipment,
    required int numberOfExercises,
    required String sportName,
  }) async {
    final prompt = """
      Hãy gợi ý cho tôi $numberOfExercises bài tập cho môn thể thao "$sportName" với các tiêu chí sau:
      - Mục tiêu: $goal
      - Nhóm cơ chính: $muscleGroup
      - Dụng cụ có sẵn: $equipment

      Vui lòng trả về kết quả dưới dạng một mảng JSON thuần túy, không có bất kỳ ký tự định dạng nào khác (như ```json).
      Mỗi đối tượng trong mảng phải có các trường sau: "name", "bodyPart", "target", "equipment", "unitType" (chỉ có thể là "Hiệp" hoặc "Thời gian"), "instructions", "secondaryMuscles".

      - Nếu "unitType" là "Hiệp", hãy thêm các trường: "reps" (số lần lặp, integer), "sets" (số hiệp, integer), "weight" (cân nặng đề xuất, double).
      - Nếu "unitType" là "Thời gian", hãy thêm các trường: "duration" (thời gian thực hiện tính bằng phút, integer), "distance" (khoảng cách tính bằng mét, double), "weight" (cân nặng đề xuất, double).

      Ví dụ cho "Hiệp":
      [
        {
          "bodyPart": "Ngực",
          "equipment": "Tạ đơn",
          "name": "Đẩy ngực với tạ đơn",
          "target": "Cơ ngực",
          "secondaryMuscles": ["Vai", "Cơ tay sau"],
          "instructions": ["Nằm trên ghế phẳng...", "Hạ tạ xuống từ từ..."],
          "unitType": "Hiệp",
          "reps": 12,
          "sets": 4,
          "weight": 10.5
        }
      ]

      Ví dụ cho "Thời gian":
      [
        {
          "bodyPart": "Toàn thân",
          "equipment": "Hồ bơi",
          "name": "Bơi sải cơ bản",
          "target": "Sức bền tim mạch",
          "secondaryMuscles": ["Vai", "Lưng", "Cơ bụng", "Chân"],
          "instructions": ["Khởi động...", "Bơi 4x50m..."],
          "unitType": "Thời gian",
          "duration": 30,
          "distance": 1500.0,
          "weight": 3
        }
      ]
    """;

    try {
      final response = await http.post(
        Uri.parse('$_geminiUrl?key=$_apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                {'text': prompt},
              ],
            },
          ],
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final content = data['candidates'][0]['content']['parts'][0]['text'];

        // Làm sạch và phân tích cú pháp JSON
        final cleanedContent =
            content.replaceAll('```json', '').replaceAll('```', '').trim();
        final List<dynamic> suggestionsJson = jsonDecode(cleanedContent);

        return suggestionsJson.cast<Map<String, dynamic>>();
      } else {
        throw Exception(
          'Lỗi khi gọi Gemini API: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('Lỗi khi xử lý yêu cầu gợi ý: $e');
    }
  }
}
