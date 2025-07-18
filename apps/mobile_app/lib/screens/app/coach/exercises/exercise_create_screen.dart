// lib/screens/app/coach/exercises/exercise_create_screen.dart

// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ExerciseCreateScreen extends StatefulWidget {
  final String sportId;
  final String createdBy;
  const ExerciseCreateScreen({
    required this.sportId,
    super.key,
    required this.createdBy,
  });

  @override
  State<ExerciseCreateScreen> createState() => _ExerciseCreateScreenState();
}

class _ExerciseCreateScreenState extends State<ExerciseCreateScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final targetController = TextEditingController();
  final secondaryMusclesController = TextEditingController();
  final instructionsController = TextEditingController();

  File? _selectedMediaFile;
  String? _uploadedMediaUrl;
  bool _isUploading = false;
  bool _isVideoFile = false;
  VideoPlayerController? _localVideoController;

  String? selectedBodyPart;
  String? selectedEquipment;
  String? selectedUnitType;

  final List<String> bodyParts = [
    'Lưng',
    'Chân',
    'Vai',
    'Ngực',
    'Tay',
    'Bụng',
    'Toàn thân',
  ];
  final List<String> equipmentOptions = [
    'Trọng lượng cơ thể',
    'Tạ đơn',
    'Tạ đòn',
    'Dây kháng lực',
    'Máy tập',
  ];
  final List<String> unitTypeOptions = ['Thời gian', 'Hiệp'];

  @override
  void dispose() {
    nameController.dispose();
    targetController.dispose();
    secondaryMusclesController.dispose();
    instructionsController.dispose();
    _localVideoController?.dispose();
    super.dispose();
  }

  Future<void> _pickMedia() async {
    final ImagePicker picker = ImagePicker();
    final XFile? media = await picker.pickMedia();

    if (media != null) {
      // Dọn dẹp controller video cũ trước khi tạo cái mới
      await _localVideoController?.dispose();
      _localVideoController = null;

      final isVideo =
          media.path.toLowerCase().endsWith('.mp4') ||
          media.path.toLowerCase().endsWith('.mov');

      setState(() {
        _selectedMediaFile = File(media.path);
        _uploadedMediaUrl = null;
        _isVideoFile = isVideo;
      });

      // Nếu là video, khởi tạo trình phát
      if (isVideo) {
        _localVideoController = VideoPlayerController.file(_selectedMediaFile!)
          ..initialize().then((_) {
            if (!mounted) return;
            setState(() {}); // Cập nhật UI khi video đã sẵn sàng
            _localVideoController?.play();
            _localVideoController?.setLooping(true);
          });
      }

      // Bắt đầu tải tệp lên server
      context.read<ImageBloc>().add(UploadImage(_selectedMediaFile!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tạo Bài Tập Mới',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      // BlocListener sẽ xử lý các tác vụ một lần như hiển thị SnackBar và điều hướng
      body: MultiBlocListener(
        listeners: [
          BlocListener<ExerciseBloc, ExerciseState>(
            listener: (context, state) {
              if (state is Exercise_Success) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.green,
                    ),
                  );
                Navigator.pop(context);
              } else if (state is Exercise_Error) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text('Lỗi tạo bài tập: ${state.message}'),
                      backgroundColor: Colors.red,
                    ),
                  );
              }
            },
          ),
          BlocListener<ImageBloc, ImageState>(
            listener: (context, state) {
              setState(() {
                _isUploading = state is Image_Loading;
              });

              if (state is Image_Success) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text("Tải tệp lên thành công!"),
                      backgroundColor: Colors.green,
                    ),
                  );
                setState(() {
                  _uploadedMediaUrl = state.fileUrl;
                });
              } else if (state is Image_Error) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text('Lỗi tải tệp lên: ${state.message}'),
                      backgroundColor: Colors.red,
                    ),
                  );
              }
            },
          ),
        ],
        child: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              _buildTextFormField(
                controller: nameController,
                labelText: 'Tên bài tập',
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 20),
              _buildDropdown(
                labelText: 'Nhóm cơ chính',
                value: selectedBodyPart,
                items: bodyParts,
                onChanged: (value) => setState(() => selectedBodyPart = value),
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                controller: targetController,
                labelText: 'Cơ mục tiêu',
                validator: _validateNonEmpty,
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
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 20),
              _buildDropdown(
                labelText: 'Dụng cụ',
                value: selectedEquipment,
                items: equipmentOptions,
                onChanged: (value) => setState(() => selectedEquipment = value),
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 20),
              _buildDropdown(
                labelText: 'Đơn vị tính',
                value: selectedUnitType,
                items: unitTypeOptions,
                onChanged: (value) => setState(() => selectedUnitType = value),
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 20),
              Text(
                "Ảnh/Video minh họa",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              _buildMediaPicker(),
              const SizedBox(height: 32),
              // BlocBuilder sẽ xây dựng lại nút bấm dựa trên trạng thái
              BlocBuilder<ExerciseBloc, ExerciseState>(
                builder: (context, state) {
                  final isCreatingExercise = state is Exercise_Loading;
                  return ElevatedButton(
                    onPressed:
                        (isCreatingExercise || _isUploading)
                            ? null
                            : _createExercise,
                    child:
                        (isCreatingExercise || _isUploading)
                            ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                            )
                            : const Text('TẠO BÀI TẬP'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMediaPicker() {
    return GestureDetector(
      onTap: _pickMedia,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child:
            _isUploading
                ? const Center(child: CircularProgressIndicator())
                : _selectedMediaFile != null
                ? _buildLocalMediaPreview() // Hiển thị preview từ file local
                : _buildPlaceholder(), // Hiển thị placeholder mặc định
      ),
    );
  }

  // Widget để hiển thị preview cho file đã chọn
  Widget _buildLocalMediaPreview() {
    // Nếu là video và đã sẵn sàng
    if (_isVideoFile &&
        _localVideoController != null &&
        _localVideoController!.value.isInitialized) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AspectRatio(
          aspectRatio: _localVideoController!.value.aspectRatio,
          child: VideoPlayer(_localVideoController!),
        ),
      );
    }
    // Nếu là video nhưng chưa sẵn sàng
    else if (_isVideoFile) {
      return const Center(child: CircularProgressIndicator());
    }
    // Nếu là ảnh
    else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.file(_selectedMediaFile!, fit: BoxFit.cover),
      );
    }
  }

  // Widget cho placeholder
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

  String? _validateNonEmpty(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Vui lòng không để trống trường này';
    }
    return null;
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    String? Function(String?)? validator,
    int? maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText),
      validator: validator,
      maxLines: maxLines,
    );
  }

  Widget _buildDropdown({
    required String labelText,
    required String? value,
    required List<String> items,
    required void Function(String?) onChanged,
    String? Function(String?)? validator,
  }) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: labelText),
      value: value,
      items:
          items.map((String item) {
            return DropdownMenuItem<String>(value: item, child: Text(item));
          }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }

  void _createExercise() {
    if (!(formKey.currentState?.validate() ?? false)) return;

    // Kiểm tra xem đã tải tệp lên chưa
    if (_uploadedMediaUrl == null || _uploadedMediaUrl!.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chọn và chờ tải lên tệp media.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    final exercise = Exercise(
      id: null,
      name: nameController.text.trim(),
      bodyPart: selectedBodyPart!,
      target: targetController.text.trim(),
      secondaryMuscles:
          secondaryMusclesController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList(),
      instructions:
          instructionsController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList(),
      equipment: selectedEquipment!,
      gifUrl: _uploadedMediaUrl!, // Sử dụng URL đã tải lên
      sportId: widget.sportId,
      unitType: selectedUnitType!,
      createdBy: widget.createdBy,
      createdAt: null,
      updatedAt: null,
    );

    context.read<ExerciseBloc>().add(CreateExercise(exercise));
  }
}
