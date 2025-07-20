// lib/screens/app/coach/exercises/exercise_create_screen.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_form_content.dart';
import 'package:video_player/video_player.dart';
class ExerciseCreateScreen extends StatefulWidget {
  final String sportId;
  final String createdBy;
  const ExerciseCreateScreen({
    required this.sportId,
    required this.createdBy,
    super.key,
  });

  @override
  State<ExerciseCreateScreen> createState() => _ExerciseCreateScreenState();
}

class _ExerciseCreateScreenState extends State<ExerciseCreateScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _targetController = TextEditingController();
  final _secondaryMusclesController = TextEditingController();
  final _instructionsController = TextEditingController();

  String? _selectedBodyPart;
  String? _selectedEquipment;
  String? _selectedUnitType;

  File? _selectedMediaFile;
  String? _uploadedMediaUrl;
  bool _isUploading = false;
  bool _isVideoFile = false;
  VideoPlayerController? _localVideoController;

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
    final media = await ImagePicker().pickMedia();
    if (media == null) return;

    await _localVideoController?.dispose();
    final isVideo = media.path.toLowerCase().endsWith('.mp4');

    setState(() {
      _selectedMediaFile = File(media.path);
      _uploadedMediaUrl = null;
      _isVideoFile = isVideo;
    });

    if (isVideo) {
      _localVideoController = VideoPlayerController.file(_selectedMediaFile!)
        ..initialize().then((_) {
          if (mounted) setState(() {});
          _localVideoController?.play();
          _localVideoController?.setLooping(true);
        });
    }
    // ignore: use_build_context_synchronously
    context.read<ImageBloc>().add(UploadImage(_selectedMediaFile!));
  }

  void _createExercise() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_uploadedMediaUrl == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chờ tải lên tệp media.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    final exercise = Exercise(
      id: null,
      name: _nameController.text.trim(),
      bodyPart: _selectedBodyPart!,
      target: _targetController.text.trim(),
      secondaryMuscles:
          _secondaryMusclesController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList(),
      instructions:
          _instructionsController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList(),
      equipment: _selectedEquipment!,
      gifUrl: _uploadedMediaUrl!,
      sportId: widget.sportId,
      unitType: _selectedUnitType!,
      createdBy: widget.createdBy,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    context.read<ExerciseBloc>().add(CreateExercise(exercise));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tạo Bài Tập Mới')),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ExerciseBloc, ExerciseState>(
            listener: (context, state) {
              if (state is Exercise_Success) {
                Navigator.pop(
                  context,
                  true,
                ); // Trả về true để báo hiệu cần làm mới
              } else if (state is Exercise_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lỗi: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          BlocListener<ImageBloc, ImageState>(
            listener: (context, state) {
              setState(() => _isUploading = state is Image_Loading);
              if (state is Image_Success) {
                setState(() => _uploadedMediaUrl = state.fileUrl);
              } else if (state is Image_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lỗi tải tệp: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        ],
        child: Column(
          children: [
            Expanded(
              child: ExerciseFormContent(
                formKey: _formKey,
                nameController: _nameController,
                targetController: _targetController,
                secondaryMusclesController: _secondaryMusclesController,
                instructionsController: _instructionsController,
                selectedBodyPart: _selectedBodyPart,
                selectedEquipment: _selectedEquipment,
                selectedUnitType: _selectedUnitType,
                onBodyPartChanged:
                    (value) => setState(() => _selectedBodyPart = value),
                onEquipmentChanged:
                    (value) => setState(() => _selectedEquipment = value),
                onUnitTypeChanged:
                    (value) => setState(() => _selectedUnitType = value),
                onPickMedia: _pickMedia,
                isUploading: _isUploading,
                selectedMediaFile: _selectedMediaFile,
                isLocalVideo: _isVideoFile,
                localVideoController: _localVideoController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: BlocBuilder<ExerciseBloc, ExerciseState>(
                builder: (context, state) {
                  final isLoading = state is Exercise_Loading;
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          (isLoading || _isUploading) ? null : _createExercise,
                      child:
                          (isLoading || _isUploading)
                              ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                              : const Text('TẠO BÀI TẬP'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
