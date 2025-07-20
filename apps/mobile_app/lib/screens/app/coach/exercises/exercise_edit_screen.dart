// lib/screens/app/coach/exercises/exercise_edit_screen.dart
// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_form_content.dart';
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

  File? _selectedMediaFile;
  String? _mediaUrl;
  bool _isUploading = false;
  bool _isLocalVideo = false;
  VideoPlayerController? _localVideoController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.exercise.name);
    _targetController = TextEditingController(text: widget.exercise.target);
    _secondaryMusclesController = TextEditingController(
      text: widget.exercise.secondaryMuscles.join(', '),
    );
    _instructionsController = TextEditingController(
      text: widget.exercise.instructions.join(', '),
    );
    _selectedBodyPart = widget.exercise.bodyPart;
    _selectedEquipment = widget.exercise.equipment;
    _selectedUnitType = widget.exercise.unitType;
    _mediaUrl = widget.exercise.gifUrl;
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
    final media = await ImagePicker().pickMedia();
    if (media == null) return;

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
    context.read<ImageBloc>().add(UploadImage(_selectedMediaFile!));
  }

  void _updateExercise() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final updatedExercise = widget.exercise.copyWith(
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
      gifUrl: _mediaUrl!,
      unitType: _selectedUnitType!,
      updatedAt: DateTime.now(),
    );
    context.read<ExerciseBloc>().add(
      UpdateExercise(widget.exercise.id!, updatedExercise),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chỉnh Sửa Bài Tập')),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ExerciseBloc, ExerciseState>(
            listener: (context, state) {
              if (state is LoadedExercise) {
                Navigator.of(context).pop(state.exercise);
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
                setState(() => _mediaUrl = state.fileUrl);
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
                isLocalVideo: _isLocalVideo,
                localVideoController: _localVideoController,
                networkMediaUrl: _mediaUrl,
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
                          (isLoading || _isUploading) ? null : _updateExercise,
                      child:
                          (isLoading || _isUploading)
                              ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                              : const Text('CẬP NHẬT'),
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
