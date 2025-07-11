// lib/screens/app/coach/exercises/exercise_create_screen.dart

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseCreateScreen extends StatefulWidget {
  final String sportId;
  const ExerciseCreateScreen({required this.sportId, super.key});

  @override
  State<ExerciseCreateScreen> createState() => _ExerciseCreateScreenState();
}

class _ExerciseCreateScreenState extends State<ExerciseCreateScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final targetController = TextEditingController();
  final secondaryMusclesController = TextEditingController();
  final instructionsController = TextEditingController();
  final gifUrlController = TextEditingController();

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
    gifUrlController.dispose();
    super.dispose();
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
      body: BlocListener<ExerciseBloc, ExerciseState>(
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
            // Tự động quay lại màn hình trước đó khi thành công
            Navigator.pop(context);
          } else if (state is Exercise_Error) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text('Lỗi: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
          }
        },
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
              _buildTextFormField(
                controller: gifUrlController,
                labelText: 'URL Ảnh/Video minh họa',
                validator: _validateNonEmpty,
              ),
              const SizedBox(height: 32),
              // BlocBuilder sẽ xây dựng lại nút bấm dựa trên trạng thái
              BlocBuilder<ExerciseBloc, ExerciseState>(
                builder: (context, state) {
                  final isLoading = state is Exercise_Loading;
                  return ElevatedButton(
                    onPressed: isLoading ? null : _createExercise,
                    child:
                        isLoading
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
    // Kiểm tra tính hợp lệ của form
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }

    // Tạo đối tượng Exercise từ dữ liệu người dùng
    final exercise = Exercise(
      id: null,
      name: nameController.text.trim(),
      bodyPart: selectedBodyPart!,
      target: targetController.text.trim(),
      secondaryMuscles:
          secondaryMusclesController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty) // Loại bỏ các chuỗi rỗng
              .toList(),
      instructions:
          instructionsController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty) // Loại bỏ các chuỗi rỗng
              .toList(),
      equipment: selectedEquipment!,
      gifUrl: gifUrlController.text.trim(),
      sportId: widget.sportId,
      unitType: selectedUnitType!,
      createdAt: DateTime.now(), // Không cần .toUtc() vì converter sẽ xử lý
      updatedAt: DateTime.now(),
    );

    // Thêm sự kiện CreateExercise vào BLoC
    context.read<ExerciseBloc>().add(CreateExercise(exercise));
  }
}
