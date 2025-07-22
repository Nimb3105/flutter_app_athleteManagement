// lib/screens/app/coach/daily_schedule/training_schedule/exercise_suggestion_screen.dart
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_detail.dart';

class ExerciseSuggestionScreen extends StatefulWidget {
  final String sportId;
  final String coachId;

  const ExerciseSuggestionScreen({super.key, required this.sportId, required this.coachId});

  @override
  State<ExerciseSuggestionScreen> createState() =>
      _ExerciseSuggestionScreenState();
}

class _ExerciseSuggestionScreenState extends State<ExerciseSuggestionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _goalController = TextEditingController();
  final _muscleGroupController = TextEditingController();
  final _equipmentController = TextEditingController();
  final _countController = TextEditingController(text: '5');

  final List<Map<String, dynamic>> _selectedExercises = [];

  void _getSuggestions() {
    if (_formKey.currentState!.validate()) {
      context.read<SuggestionBloc>().add(
        FetchSuggestions(
          goal: _goalController.text,
          muscleGroup: _muscleGroupController.text,
          equipment: _equipmentController.text,
          numberOfExercises: int.parse(_countController.text),
          sportName: widget.sportId,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gợi ý bài tập từ AI',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildForm(),
            const SizedBox(height: 20),
            Expanded(child: _buildResults()),
          ],
        ),
      ),
      floatingActionButton:
          _selectedExercises.isNotEmpty
              ? FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pop(context, _selectedExercises);
                },
                label: Text('Thêm (${_selectedExercises.length}) Bài Tập'),
                icon: const Icon(Icons.add),
              )
              : null,
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _goalController,
            decoration: const InputDecoration(
              labelText: 'Mục tiêu (Vd: Tăng cơ, giảm mỡ)',
            ),
            validator: (v) => v!.isEmpty ? 'Bắt buộc' : null,
          ),
          TextFormField(
            controller: _muscleGroupController,
            decoration: const InputDecoration(
              labelText: 'Nhóm cơ chính (Vd: Ngực, Lưng, Chân)',
            ),
            validator: (v) => v!.isEmpty ? 'Bắt buộc' : null,
          ),
          TextFormField(
            controller: _equipmentController,
            decoration: const InputDecoration(
              labelText: 'Dụng cụ có sẵn (Vd: Tạ đơn, không có gì)',
            ),
            validator: (v) => v!.isEmpty ? 'Bắt buộc' : null,
          ),
          TextFormField(
            controller: _countController,
            decoration: const InputDecoration(labelText: 'Số lượng bài tập'),
            keyboardType: TextInputType.number,
            validator: (v) => v!.isEmpty ? 'Bắt buộc' : null,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _getSuggestions,
            child: const Text('Gợi ý cho tôi'),
          ),
        ],
      ),
    );
  }

  Widget _buildResults() {
    return BlocBuilder<SuggestionBloc, SuggestionState>(
      builder: (context, state) {
        return state.when(
          initial:
              () => const Center(child: Text('Nhập thông tin để nhận gợi ý.')),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text('Lỗi: $message')),
          loaded: (suggestions) {
            if (suggestions.isEmpty) {
              return const Center(child: Text('Không tìm thấy gợi ý nào.'));
            }
            return ListView.builder(
              itemCount: suggestions.length,
              itemBuilder: (context, index) {
                final suggestion = suggestions[index];
                final isSelected = _selectedExercises.any(
                  (e) => e['name'] == suggestion['name'],
                );

                // --- BẮT ĐẦU THAY ĐỔI TRONG ITEMBUILDER ---
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(suggestion['name'] ?? 'Không có tên'),
                    subtitle: Text(suggestion['bodyPart'] ?? ''),
                    value: isSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedExercises.add(suggestion);
                        } else {
                          _selectedExercises.removeWhere(
                            (e) => e['name'] == suggestion['name'],
                          );
                        }
                      });
                    },
                    // Thêm nút xem chi tiết
                    secondary: IconButton(
                      icon: const Icon(Icons.info_outline, color: Colors.grey),
                      onPressed: () {
                        // Tạo đối tượng Exercise tạm thời từ suggestion
                        final exerciseFromSuggestion = Exercise(
                          id: null, // Không có ID vì là bài tập mới
                          name: suggestion['name'] ?? '',
                          bodyPart: suggestion['bodyPart'] ?? '',
                          target: suggestion['target'] ?? '',
                          secondaryMuscles:
                              (suggestion['secondaryMuscles'] as List<dynamic>?)
                                  ?.map((e) => e.toString())
                                  .toList() ??
                              [],
                          instructions:
                              (suggestion['instructions'] as List<dynamic>?)
                                  ?.map((e) => e.toString())
                                  .toList() ??
                              [],
                          equipment: suggestion['equipment'] ?? '',
                          gifUrl: '', // AI không trả về gifUrl
                          sportId: widget.sportId,
                          unitType: suggestion['unitType'] ?? 'Reps',
                          createdBy: widget.coachId,
                          createdAt: null,
                          updatedAt: null,
                        );

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ExerciseDetailScreen(
                                  exercise: exerciseFromSuggestion,
                                  coachId: widget.coachId,
                                ),
                          ),
                        );
                      },
                    ),
                  ),
                );
                // --- KẾT THÚC THAY ĐỔI ---
              },
            );
          },
        );
      },
    );
  }
}
