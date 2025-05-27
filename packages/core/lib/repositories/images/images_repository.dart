import 'dart:io';
import 'package:http/http.dart' as http;

class ImageRepository {
  /// Uploads any media file to Catbox.
  /// Returns the URL of the uploaded file on success.
  /// Throws an exception with the error message on failure.
  Future<String> uploadImage(File file) async {
    try {
      final uri = Uri.parse('https://catbox.moe/user/api.php');
      final request = http.MultipartRequest('POST', uri);

      // Add request type
      request.fields['reqtype'] = 'fileupload';

      // Add file to the request
      final fileStream = http.ByteStream(file.openRead());
      final fileLength = await file.length();
      final multipartFile = http.MultipartFile(
        'fileToUpload',
        fileStream,
        fileLength,
        filename: file.path.split('/').last,
      );
      request.files.add(multipartFile);

      // Send request with timeout
      // ignore: avoid_print
      print('Uploading file: ${file.path}, size: $fileLength bytes');
      final response = await request.send().timeout(
        const Duration(seconds: 1000), // Timeout sau 30 giây
        onTimeout: () {
          throw Exception('Hết thời gian tải tệp lên, kiểm tra kết nối mạng.');
        },
      );

      final responseBody = await http.Response.fromStream(response);
      // ignore: avoid_print
      print(
        'Response status: ${response.statusCode}, body: ${responseBody.body}',
      );

      if (response.statusCode == 200) {
        final imageUrl = responseBody.body.trim();
        if (imageUrl.startsWith('https://files.catbox.moe/')) {
          return imageUrl; // Return the Catbox URL
        } else {
          throw Exception('Lỗi tải tệp lên Catbox: $imageUrl');
        }
      } else {
        throw Exception('Lỗi tải tệp lên Catbox: ${responseBody.body}');
      }
    } catch (e) {
      // ignore: avoid_print
      print('Upload error: $e');
      rethrow;
    }
  }

  /// Deletes a media file from Catbox by its URL.
  /// Returns a success message on successful deletion.
  /// Throws an exception with the error message on failure.
  Future<String> deleteImage(String fileUrl) async {
    try {
      // Validate file URL
      if (fileUrl.isEmpty || !fileUrl.startsWith('https://files.catbox.moe/')) {
        throw Exception('URL tệp không hợp lệ');
      }

      final uri = Uri.parse('https://catbox.moe/user/api.php');
      final request = http.MultipartRequest('POST', uri);

      // Add request type and file URL
      request.fields['reqtype'] = 'deletefiles';
      request.fields['files'] = fileUrl;

      // Send request with timeout
      // ignore: avoid_print
      print('Deleting file: $fileUrl');
      final response = await request.send().timeout(
        const Duration(seconds: 100), // Timeout sau 15 giây
        onTimeout: () {
          throw Exception('Hết thời gian xóa tệp, kiểm tra kết nối mạng.');
        },
      );

      final responseBody = await http.Response.fromStream(response);
      // ignore: avoid_print
      print(
        'Delete response status: ${response.statusCode}, body: ${responseBody.body}',
      );

      if (response.statusCode == 200 &&
          responseBody.body.contains('successfully')) {
        return 'Xóa tệp thành công';
      } else {
        throw Exception('Lỗi xóa tệp trên Catbox: ${responseBody.body}');
      }
    } catch (e) {
      // ignore: avoid_print
      print('Delete error: $e');
      rethrow;
    }
  }
}
