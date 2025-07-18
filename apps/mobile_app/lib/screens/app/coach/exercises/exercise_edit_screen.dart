// lib/screens/app/coach/exercises/exercise_edit_screen.dart

import 'dart:io';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ExerciseEditScreen extends StatefulWidget {
  final Exercise exercise;

  const ExerciseEditScreen({required this.exercise, super.key});

  @override
  State<ExerciseEditScreen> createState() => _ExerciseEditScreenState();
}

class _ExerciseEditScreenState extends State<ExerciseEditScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _targetController;
  late TextEditingController _secondaryMusclesController;
  late TextEditingController _instructionsController;

  String? _selectedBodyPart;
  String? _selectedEquipment;
  String? _selectedUnitType;

  // Biến quản lý media
  File? _selectedMediaFile;
  String? _mediaUrl; // Sẽ giữ URL hiện tại hoặc URL mới được tải lên
  bool _isUploading = false;
  bool _isLocalVideo = false;
  VideoPlayerController? _localVideoController;

  final List<String> _bodyParts = ['Lưng', 'Chân', 'Vai', 'Ngực', 'Tay', 'Bụng', 'Toàn thân'];
  final List<String> _equipmentOptions = ['Trọng lượng cơ thể', 'Tạ đơn', 'Tạ đòn', 'Dây kháng lực', 'Máy tập'];
  final List<String> _unitTypeOptions = ['Thời gian', 'Hiệp'];

  @override
  void initState() {
    super.initState();
    // Khởi tạo controller với dữ liệu từ bài tập hiện có
    _nameController = TextEditingController(text: widget.exercise.name);
    _targetController = TextEditingController(text: widget.exercise.target);
    _secondaryMusclesController = TextEditingController(text: widget.exercise.secondaryMuscles.join(', '));
    _instructionsController = TextEditingController(text: widget.exercise.instructions.join(', '));
    _selectedBodyPart = widget.exercise.bodyPart;
    _selectedEquipment = widget.exercise.equipment;
    _selectedUnitType = widget.exercise.unitType;
    _mediaUrl = widget.exercise.gifUrl; // Gán URL ban đầu
  }

  @override
  void dispose() {
    _nameController.dispose();
    _targetController.dispose();
    _secondaryMusclesController.dispose();
    _instructionsController.dispose();
    _localVideoController?.dispose();
    super.dispose();
  }

  Future<void> _pickMedia() async {
    final XFile? media = await ImagePicker().pickMedia();
    if (media != null) {
      await _localVideoController?.dispose();
      final isVideo = media.path.toLowerCase().endsWith('.mp4');
      setState(() {
        _selectedMediaFile = File(media.path);
        _isLocalVideo = isVideo;
      });

      if (isVideo) {
        _localVideoController = VideoPlayerController.file(_selectedMediaFile!)
          ..initialize().then((_) {
            if (mounted) setState(() {});
            _localVideoController?.play();
            _localVideoController?.setLooping(true);
          });
      }
      // Bắt đầu tải lên ngay sau khi chọn
      context.read<ImageBloc>().add(UploadImage(_selectedMediaFile!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chỉnh Sửa Bài Tập', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ExerciseBloc, ExerciseState>(
            listener: (context, state) {
              if (state is Exercise_Success && state.message.contains('Cập nhật')) {
                // Khi cập nhật thành công, quay về màn hình chi tiết
                Navigator.of(context).pop();
              } else if (state is Exercise_Error) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}'), backgroundColor: Colors.red));
              }
            },
          ),
          BlocListener<ImageBloc, ImageState>(
            listener: (context, state) {
              setState(() => _isUploading = state is Image_Loading);
              if (state is Image_Success) {
                setState(() => _mediaUrl = state.fileUrl);
              } else if (state is Image_Error) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Lỗi tải tệp: ${state.message}'), backgroundColor: Colors.red));
              }
            },
          ),
        ],
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              _buildMediaPicker(),
              const SizedBox(height: 24),
              _buildTextFormField(controller: _nameController, labelText: 'Tên bài tập'),
              const SizedBox(height: 20),
              _buildDropdown(labelText: 'Nhóm cơ chính', value: _selectedBodyPart, items: _bodyParts, onChanged: (v) => setState(() => _selectedBodyPart = v)),
              const SizedBox(height: 20),
              _buildTextFormField(controller: _targetController, labelText: 'Cơ mục tiêu'),
              const SizedBox(height: 20),
              _buildTextFormField(controller: _secondaryMusclesController, labelText: 'Cơ phụ (cách nhau bởi dấu phẩy)'),
              const SizedBox(height: 20),
              _buildTextFormField(controller: _instructionsController, labelText: 'Hướng dẫn (cách nhau bởi dấu phẩy)', maxLines: 3),
              const SizedBox(height: 20),
              _buildDropdown(labelText: 'Dụng cụ', value: _selectedEquipment, items: _equipmentOptions, onChanged: (v) => setState(() => _selectedEquipment = v)),
              const SizedBox(height: 20),
              _buildDropdown(labelText: 'Đơn vị tính', value: _selectedUnitType, items: _unitTypeOptions, onChanged: (v) => setState(() => _selectedUnitType = v)),
              const SizedBox(height: 32),
              BlocBuilder<ExerciseBloc, ExerciseState>(
                builder: (context, state) {
                  final isLoading = state is Exercise_Loading;
                  return ElevatedButton(
                    onPressed: (isLoading || _isUploading) ? null : _updateExercise,
                    child: (isLoading || _isUploading)
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('CẬP NHẬT BÀI TẬP'),
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
        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
        child: _isUploading
            ? const Center(child: CircularProgressIndicator())
            : _selectedMediaFile != null
                ? _buildLocalMediaPreview()
                : _mediaUrl != null && _mediaUrl!.isNotEmpty
                    ? _buildNetworkMediaPreview()
                    : _buildPlaceholder(),
      ),
    );
  }

  Widget _buildLocalMediaPreview() {
    if (_isLocalVideo && _localVideoController?.value.isInitialized == true) {
      return ClipRRect(borderRadius: BorderRadius.circular(16), child: VideoPlayer(_localVideoController!));
    }
    return ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.file(_selectedMediaFile!, fit: BoxFit.cover));
  }

  Widget _buildNetworkMediaPreview() {
    final fullUrl = _getFullUrl(_mediaUrl!);
    if (_isUrlVideo(fullUrl)) {
      // For simplicity, we just show a "video icon" for network videos in edit mode.
      // You can implement a full network video player here if needed.
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.videocam, size: 50), Text("Video hiện tại")]);
    }
    return ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.network(fullUrl, fit: BoxFit.cover));
  }
  
  String _getFullUrl(String path) => path.startsWith('http') ? path : '${ApiConstants.baseUrl}$path';

  bool _isUrlVideo(String url) => ['.mp4', '.mov', '.avi'].any((ext) => url.toLowerCase().endsWith(ext));

  Widget _buildPlaceholder() => const Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.cloud_upload_outlined, size: 50), Text('Nhấn để thay đổi media')]);

  Widget _buildTextFormField({required TextEditingController controller, required String labelText, String? Function(String?)? validator, int? maxLines = 1}) {
    return TextFormField(controller: controller, decoration: InputDecoration(labelText: labelText), validator: validator, maxLines: maxLines);
  }

  Widget _buildDropdown({required String labelText, required String? value, required List<String> items, required void Function(String?) onChanged, String? Function(String?)? validator}) {
    return DropdownButtonFormField<String>(decoration: InputDecoration(labelText: labelText), value: value, items: items.map((String item) => DropdownMenuItem<String>(value: item, child: Text(item))).toList(), onChanged: onChanged, validator: validator);
  }

  void _updateExercise() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final updatedExercise = widget.exercise.copyWith(
      name: _nameController.text.trim(),
      bodyPart: _selectedBodyPart!,
      target: _targetController.text.trim(),
      secondaryMuscles: _secondaryMusclesController.text.split(',').map((e) => e.trim()).where((e) => e.isNotEmpty).toList(),
      instructions: _instructionsController.text.split(',').map((e) => e.trim()).where((e) => e.isNotEmpty).toList(),
      equipment: _selectedEquipment!,
      gifUrl: _mediaUrl!, 
      unitType: _selectedUnitType!,
      updatedAt: DateTime.now(),
    );

    context.read<ExerciseBloc>().add(UpdateExercise(widget.exercise.id!, updatedExercise));
  }
}