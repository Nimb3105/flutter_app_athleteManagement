import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class ImageRepository {
  final String baseUrl;

  ImageRepository({required this.baseUrl});

  /// Uploads an image or video file to the server.
  /// Returns a success message on successful upload.
  /// Throws an exception with the error message on failure.
  Future<String> uploadImage(File file) async {
    final uri = Uri.parse('$baseUrl/images/upload');
    final request = http.MultipartRequest('POST', uri);

    // Validate file extension
    final extension = path.extension(file.path).toLowerCase();
    const allowedExtensions = ['.gif', '.jpg', '.png', '.mp4', '.mov', '.avi'];
    if (!allowedExtensions.contains(extension)) {
      throw Exception('Định dạng tệp không hợp lệ. Chỉ chấp nhận: ${allowedExtensions.join(', ')}');
    }

    // Add file to the request
    final fileStream = http.ByteStream(file.openRead());
    final fileLength = await file.length();
    final multipartFile = http.MultipartFile(
      'file',
      fileStream,
      fileLength,
      filename: path.basename(file.path),
    );
    request.files.add(multipartFile);

    // Send request
    final response = await request.send();
    final responseBody = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      final responseData = responseBody.body;
      return responseData; // Returns JSON with "message": "Tải tệp thành công"
    } else {
      final errorData = responseBody.body;
      throw Exception(errorData); // Throws error message from server
    }
  }

  /// Deletes an image or video file from the server by its filename.
  /// Returns a success message on successful deletion.
  /// Throws an exception with the error message on failure.
  Future<String> deleteImage(String filename) async {
    // Validate filename to prevent path traversal
    if (filename.contains('..') || filename.contains('/') || filename.contains('\\')) {
      throw Exception('Tên tệp không hợp lệ');
    }

    // Validate file extension
    final extension = path.extension(filename).toLowerCase();
    const allowedExtensions = ['.gif', '.jpg', '.png', '.mp4', '.mov', '.avi'];
    if (!allowedExtensions.contains(extension)) {
      throw Exception('Chỉ được xóa tệp: ${allowedExtensions.join(', ')}');
    }

    final uri = Uri.parse('$baseUrl/images/$filename');
    final response = await http.delete(uri);

    if (response.statusCode == 200) {
      final responseData = response.body;
      return responseData; // Returns JSON with "message": "Xóa tệp thành công"
    } else {
      final errorData = response.body;
      throw Exception(errorData); // Throws error message from server
    }
  }
}