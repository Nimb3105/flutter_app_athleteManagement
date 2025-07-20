// lib/screens/app/coach/exercises/widgets/exercise_form_content.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:core/core.dart'; // Import ApiConstants

class ExerciseFormContent extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController targetController;
  final TextEditingController secondaryMusclesController;
  final TextEditingController instructionsController;
  final String? selectedBodyPart;
  final String? selectedEquipment;
  final String? selectedUnitType;
  final Function(String?) onBodyPartChanged;
  final Function(String?) onEquipmentChanged;
  final Function(String?) onUnitTypeChanged;
  final VoidCallback onPickMedia;
  final bool isUploading;
  final File? selectedMediaFile;
  final bool isLocalVideo;
  final VideoPlayerController? localVideoController;
  final String? networkMediaUrl;

  const ExerciseFormContent({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.targetController,
    required this.secondaryMusclesController,
    required this.instructionsController,
    required this.selectedBodyPart,
    required this.selectedEquipment,
    required this.selectedUnitType,
    required this.onBodyPartChanged,
    required this.onEquipmentChanged,
    required this.onUnitTypeChanged,
    required this.onPickMedia,
    required this.isUploading,
    this.selectedMediaFile,
    required this.isLocalVideo,
    this.localVideoController,
    this.networkMediaUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          _buildMediaPicker(),
          const SizedBox(height: 24),
          _buildTextFormField(
            controller: nameController,
            labelText: 'Tên bài tập',
          ),
          const SizedBox(height: 20),
          _buildDropdown(
            labelText: 'Nhóm cơ chính',
            value: selectedBodyPart,
            items: const [
              'Lưng',
              'Chân',
              'Vai',
              'Ngực',
              'Tay',
              'Bụng',
              'Toàn thân',
            ],
            onChanged: onBodyPartChanged,
          ),
          const SizedBox(height: 20),
          _buildTextFormField(
            controller: targetController,
            labelText: 'Cơ mục tiêu',
          ),
          const SizedBox(height: 20),
          _buildTextFormField(
            controller: secondaryMusclesController,
            labelText: 'Cơ phụ (cách nhau bởi dấu phẩy)',
          ),
          const SizedBox(height: 20),
          _buildTextFormField(
            controller: instructionsController,
            labelText: 'Hướng dẫn (cách nhau bởi dấu phẩy)',
            maxLines: 3,
          ),
          const SizedBox(height: 20),
          _buildDropdown(
            labelText: 'Dụng cụ',
            value: selectedEquipment,
            items: const [
              'Trọng lượng cơ thể',
              'Tạ đơn',
              'Tạ đòn',
              'Dây kháng lực',
              'Máy tập',
            ],
            onChanged: onEquipmentChanged,
          ),
          const SizedBox(height: 20),
          _buildDropdown(
            labelText: 'Đơn vị tính',
            value: selectedUnitType,
            items: const ['Thời gian', 'Hiệp'],
            onChanged: onUnitTypeChanged,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  // Các hàm build UI phụ trợ
  Widget _buildMediaPicker() {
    return GestureDetector(
      onTap: onPickMedia,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300, width: 2),
        ),
        child:
            isUploading
                ? const Center(child: CircularProgressIndicator())
                : selectedMediaFile != null
                ? _buildLocalMediaPreview()
                : networkMediaUrl != null && networkMediaUrl!.isNotEmpty
                ? _buildNetworkMediaPreview()
                : _buildPlaceholder(),
      ),
    );
  }

  Widget _buildLocalMediaPreview() {
    if (isLocalVideo && localVideoController?.value.isInitialized == true) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: VideoPlayer(localVideoController!),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.file(selectedMediaFile!, fit: BoxFit.cover),
    );
  }

  Widget _buildNetworkMediaPreview() {
    final fullUrl = _getFullUrl(networkMediaUrl!);
    if (_isUrlVideo(fullUrl)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.videocam, size: 50),
          Text("Video hiện tại"),
        ],
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.network(fullUrl, fit: BoxFit.cover),
    );
  }

  Widget _buildPlaceholder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cloud_upload_outlined, size: 50, color: Colors.grey[600]),
        const SizedBox(height: 8),
        Text(
          'Nhấn để chọn ảnh/video',
          style: GoogleFonts.poppins(color: Colors.grey[700]),
        ),
      ],
    );
  }

  String _getFullUrl(String path) =>
      path.startsWith('http') ? path : '${ApiConstants.baseUrl}$path';
  bool _isUrlVideo(String url) =>
      ['.mp4', '.mov', '.avi'].any((ext) => url.toLowerCase().endsWith(ext));

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    int? maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText),
      validator:
          (value) =>
              (value == null || value.trim().isEmpty)
                  ? 'Vui lòng không để trống trường này'
                  : null,
      maxLines: maxLines,
    );
  }

  Widget _buildDropdown({
    required String labelText,
    required String? value,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: labelText),
      value: value,
      items:
          items
              .map(
                (item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)),
              )
              .toList(),
      onChanged: onChanged,
      validator:
          (value) =>
              (value == null || value.isEmpty) ? 'Vui lòng chọn một mục' : null,
    );
  }
}
