import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:path/path.dart' as path;

class ExerciseCreateScreen extends StatefulWidget {
  const ExerciseCreateScreen({super.key});

  @override
  State<ExerciseCreateScreen> createState() => _ExerciseCreateScreenState();
}

class _ExerciseCreateScreenState extends State<ExerciseCreateScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController equipmentController = TextEditingController();
  final TextEditingController muscleController = TextEditingController();

  String? selectedType;
  String? selectedIntensity;
  File? selectedFile;
  String? uploadedFilePath;

  final List<String> exerciseTypes = [
    'Strength',
    'Cardio',
    'Flexibility',
    'Balance'
  ];
  final List<String> intensities = ['Low', 'Medium', 'High'];

  // Tạo ImageRepository với baseUrl
  final ImageRepository imageRepository = ImageRepository(
    baseUrl: ApiConstants.baseUrl,
  );

  @override
  void dispose() {
    nameController.dispose();
    durationController.dispose();
    descriptionController.dispose();
    equipmentController.dispose();
    muscleController.dispose();
    super.dispose();
  }

  Future<void> _pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'gif', 'mp4', 'mov', 'avi'],
    );

    if (result != null && result.files.single.path != null) {
      final newFile = File(result.files.single.path!);
      setState(() {
        selectedFile = newFile;
        uploadedFilePath = null; // Reset đường dẫn đã upload
      });
      // Kiểm tra trạng thái hiện tại của ImageBloc để tránh upload đồng thời
      // ignore: use_build_context_synchronously
      final imageBloc = context.read<ImageBloc>();
      if (imageBloc.state is! Image_Loading) {
        imageBloc.add(UploadImage(selectedFile!));
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đang tải tệp, vui lòng đợi...'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    }
  }

  // Hàm xóa ảnh trên server
  Future<void> _deleteUploadedImage() async {
    if (uploadedFilePath != null) {
      try {
        final filename = path.basename(uploadedFilePath!);
        await imageRepository.deleteImage(filename);
        setState(() {
          uploadedFilePath = null;
          selectedFile = null;
        });
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã xóa tệp thành công'),
            backgroundColor: Colors.green,
          ),
        );
      } catch (e) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Lỗi khi xóa tệp: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageBloc(imageRepository: imageRepository),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.shade100,
                Colors.white,
              ],
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24),
                    // Header
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.fitness_center,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Tạo Bài Tập Mới',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Điền thông tin để thêm bài tập mới',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // File Picker
                    Builder(
                      builder: (innerContext) => GestureDetector(
                        onTap: () => _pickFile(innerContext),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.upload_file, color: Colors.blue),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  selectedFile == null
                                      ? 'Chọn hình ảnh hoặc video'
                                      : path.basename(selectedFile!.path),
                                  style: TextStyle(
                                    color: selectedFile == null
                                        ? Colors.grey
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              if (selectedFile != null)
                                IconButton(
                                  onPressed: _deleteUploadedImage,
                                  icon: const Icon(Icons.clear,
                                      color: Colors.red),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (uploadedFilePath != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Đã tải lên: $uploadedFilePath',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                    const SizedBox(height: 32),
                    // Form Fields
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Tên',
                        prefixIcon: Icon(Icons.fitness_center),
                        hintText: 'Nhập tên bài tập',
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: selectedType,
                      decoration: const InputDecoration(
                        labelText: 'Loại',
                        prefixIcon: Icon(Icons.category),
                      ),
                      hint: const Text('Chọn loại bài tập'),
                      items: exerciseTypes.map((type) {
                        return DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedType = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: selectedIntensity,
                      decoration: const InputDecoration(
                        labelText: 'Cường độ',
                        prefixIcon: Icon(Icons.whatshot),
                      ),
                      hint: const Text('Chọn cường độ'),
                      items: intensities.map((intensity) {
                        return DropdownMenuItem(
                          value: intensity,
                          child: Text(intensity),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedIntensity = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: durationController,
                      decoration: const InputDecoration(
                        labelText: 'Thời gian (phút)',
                        prefixIcon: Icon(Icons.timer),
                        hintText: 'Nhập thời gian',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Mô tả',
                        prefixIcon: Icon(Icons.description),
                        hintText: 'Nhập mô tả',
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: equipmentController,
                      decoration: const InputDecoration(
                        labelText: 'Thiết bị',
                        prefixIcon: Icon(Icons.fitness_center),
                        hintText: 'Nhập thiết bị cần dùng',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: muscleController,
                      decoration: const InputDecoration(
                        labelText: 'Nhóm cơ',
                        prefixIcon: Icon(Icons.accessibility),
                        hintText: 'Nhập nhóm cơ được tập',
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Action Buttons
                    BlocConsumer<ImageBloc, ImageState>(
                      listener: (context, imageState) {
                        if (imageState is Image_Success) {
                          final filename = selectedFile != null
                              ? path.basename(selectedFile!.path)
                              : '';
                          setState(() {
                            uploadedFilePath = '/images/$filename';
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Tải file thành công!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        } else if (imageState is Image_Error) {
                          setState(() {
                            selectedFile = null;
                            uploadedFilePath = null;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Lỗi tải tệp: ${imageState.message}'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                      builder: (context, imageState) {
                        return BlocConsumer<ExerciseBloc, ExerciseState>(
                          listener: (context, exerciseState) {
                            if (exerciseState is LoadedExercise) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Tạo bài tập thành công!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              context
                                  .read<ExerciseBloc>()
                                  .add(const GetAllExercises());
                              Navigator.pop(context);
                            } else if (exerciseState is Exercise_Error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(exerciseState.message),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          builder: (context, exerciseState) {
                            return Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: (exerciseState
                                                is Exercise_Loading ||
                                            imageState is Image_Loading)
                                        ? null
                                        : () {
                                            if (nameController.text.isEmpty ||
                                                selectedType == null ||
                                                selectedIntensity == null ||
                                                durationController
                                                    .text.isEmpty ||
                                                descriptionController
                                                    .text.isEmpty ||
                                                equipmentController
                                                    .text.isEmpty ||
                                                muscleController.text.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      'Vui lòng điền đầy đủ các trường bắt buộc'),
                                                  backgroundColor:
                                                      Colors.orange,
                                                ),
                                              );
                                              return;
                                            }

                                            final exercise = Exercise(
                                              id: null,
                                              name: nameController.text.trim(),
                                              type: selectedType!,
                                              intensity: selectedIntensity!,
                                              duration: int.tryParse(
                                                      durationController.text
                                                          .trim()) ??
                                                  0,
                                              description: descriptionController
                                                  .text
                                                  .trim(),
                                              equipment: equipmentController
                                                  .text
                                                  .trim(),
                                              muscle:
                                                  muscleController.text.trim(),
                                              mediaUrl: uploadedFilePath ?? '',
                                              createdDate: DateTime.now(),
                                              createdAt: DateTime.now().toUtc(),
                                              updatedAt: DateTime.now().toUtc(),
                                            );

                                            context.read<ExerciseBloc>().add(
                                                  CreateExercise(exercise),
                                                );
                                          },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      elevation: 3,
                                      minimumSize:
                                          const Size(double.infinity, 50),
                                    ),
                                    child: (exerciseState is Exercise_Loading ||
                                            imageState is Image_Loading)
                                        ? const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  strokeWidth: 2,
                                                ),
                                              ),
                                              SizedBox(width: 16),
                                              Text('Đang xử lý...'),
                                            ],
                                          )
                                        : const Text(
                                            'TẠO BÀI TẬP',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed:
                                        (exerciseState is Exercise_Loading ||
                                                imageState is Image_Loading)
                                            ? null
                                            : () async {
                                                await _deleteUploadedImage();
                                                // ignore: use_build_context_synchronously
                                                Navigator.pop(context);
                                              },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade400,
                                      foregroundColor: Colors.black87,
                                      elevation: 3,
                                      minimumSize:
                                          const Size(double.infinity, 50),
                                    ),
                                    child: const Text(
                                      'HỦY',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
