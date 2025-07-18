// lib/repositories/images/images_repository.dart

import 'dart:convert';
import 'dart:io';
import 'package:core/core.dart';
import 'package:http/http.dart' as http;

class ImageRepository {
  /// Tải một tệp media lên backend của bạn.
  /// Trả về URL của tệp đã tải lên nếu thành công.
  /// Ném ra một Exception với thông báo lỗi nếu thất bại.
  Future<String> uploadImage(File file) async {
    final uri = Uri.parse(
      '${ApiConstants.baseUrl}/images/upload',
    ); // Sửa lại endpoint cho đúng

    try {
      final request = http.MultipartRequest('POST', uri);

      // Sửa lại tên trường thành 'file' để khớp với backend
      request.files.add(await http.MultipartFile.fromPath('file', file.path));

      final streamedResponse = await request.send().timeout(
        const Duration(minutes: 60),
        onTimeout:
            () =>
                throw Exception('Hết thời gian tải tệp lên. Vui lòng thử lại.'),
      );

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;

        // --- THAY ĐỔI QUAN TRỌNG Ở ĐÂY ---
        // Lấy URL từ key "url" mà backend đã trả về
        final url = data['url'];

        if (url != null && url is String) {
          return url;
        } else {
          throw Exception('Phản hồi từ server không chứa URL hợp lệ.');
        }
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage =
            errorData['error'] ?? 'Lỗi không xác định từ server.';
        throw Exception(
          'Tải tệp lên thất bại: $errorMessage (Mã lỗi: ${response.statusCode})',
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Xóa một tệp media khỏi backend của bạn bằng URL của nó.
  Future<String> deleteImage(String fileUrl) async {
    try {
      final fileName = fileUrl.split('/').last;

      // Sửa lại endpoint để khớp với backend
      final uri = Uri.parse('${ApiConstants.baseUrl}/images/$fileName');

      final response = await http
          .delete(uri)
          .timeout(
            const Duration(seconds: 30),
            onTimeout: () => throw Exception('Hết thời gian yêu cầu xóa tệp.'),
          );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return 'Xóa tệp thành công';
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage =
            errorData['error'] ?? 'Lỗi không xác định từ server.';
        throw Exception(
          'Xóa tệp thất bại: $errorMessage (Mã lỗi: ${response.statusCode})',
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
