// lib/screens/app/coach/daily_schedule/add_training_schedule_screen.dart

// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise/exercise_suggestion_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise_create_screen.dart';
import 'package:google_fonts/google_fonts.dart';

// Lớp helper để quản lý trạng thái của các bài tập trong UI
class _ExerciseHolder {
  final String tempId; // ID tạm thời để định danh
  final String name;
  final String unitType;
  final TrainingExercise trainingExercise;
  final bool isNewFromAI; // Đánh dấu nếu đây là bài tập mới từ AI
  final Exercise? exerciseDataToCreate; // Dữ liệu để tạo Exercise mới trong DB

  _ExerciseHolder({
    required this.tempId,
    required this.name,
    required this.unitType,
    required this.trainingExercise,
    this.isNewFromAI = false,
    this.exerciseDataToCreate,
  });

  // Thêm copyWith để dễ dàng cập nhật
  _ExerciseHolder copyWith({String? name, TrainingExercise? trainingExercise}) {
    return _ExerciseHolder(
      tempId: tempId,
      name: name ?? this.name,
      unitType: unitType,
      trainingExercise: trainingExercise ?? this.trainingExercise,
      isNewFromAI: isNewFromAI,
      exerciseDataToCreate: exerciseDataToCreate,
    );
  }
}

class AddTrainingScheduleScreen extends StatefulWidget {
  final DateTime trainingDate;
  final String createBy;
  final String? sportId;
  final DateTime? latestEndTime;
  final String dailyScheduleId;

  const AddTrainingScheduleScreen({
    required this.trainingDate,
    required this.createBy,
    required this.sportId,
    this.latestEndTime,
    required this.dailyScheduleId,
    super.key,
  });

  @override
  State<AddTrainingScheduleScreen> createState() =>
      _AddTrainingScheduleScreenState();
}

class _AddTrainingScheduleScreenState extends State<AddTrainingScheduleScreen> {
  final _formKey = GlobalKey<FormState>();
  final _locationController = TextEditingController();
  final _typeController = TextEditingController();
  final _notesController = TextEditingController();
  final _startTimeNotifier = ValueNotifier<TimeOfDay?>(null);
  final _endTimeNotifier = ValueNotifier<TimeOfDay?>(null);

  // Sử dụng _ExerciseHolder để quản lý danh sách bài tập
  final _exercisesHolderNotifier = ValueNotifier<List<_ExerciseHolder>>([]);
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    // Đặt thời gian mặc định ban đầu
    if (widget.latestEndTime != null) {
      final localLatestEndTime = widget.latestEndTime!.toLocal().add(
        const Duration(minutes: 1),
      );
      _startTimeNotifier.value = TimeOfDay.fromDateTime(localLatestEndTime);
      _endTimeNotifier.value = TimeOfDay.fromDateTime(
        localLatestEndTime.add(const Duration(hours: 1)),
      );
    } else {
      _startTimeNotifier.value = TimeOfDay.now();
      _endTimeNotifier.value = TimeOfDay.fromDateTime(
        DateTime.now().add(const Duration(hours: 1)),
      );
    }
  }

  @override
  void dispose() {
    _locationController.dispose();
    _typeController.dispose();
    _notesController.dispose();
    _startTimeNotifier.dispose();
    _endTimeNotifier.dispose();
    _exercisesHolderNotifier.dispose();
    super.dispose();
  }

  // --- LOGIC XỬ LÝ CHÍNH ---

  void _submitForm() {
    if (_isSubmitting) return;

    if (_formKey.currentState!.validate()) {
      if (_startTimeNotifier.value == null || _endTimeNotifier.value == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn giờ bắt đầu và kết thúc'),
          ),
        );
        return;
      }

      setState(() {
        _isSubmitting = true;
      });

      _createExercisesAndThenSchedule();
    }
  }

  Future<void> _createExercisesAndThenSchedule() async {
    final holdersToCreate =
        _exercisesHolderNotifier.value
            .where((h) => h.isNewFromAI && h.exerciseDataToCreate != null)
            .toList();

    try {
      // 1. Tạo các Exercise mới (nếu có)
      final createdExercisesMap = <String, Exercise>{};
      for (var holder in holdersToCreate) {
        final createdExercise = await context
            .read<ExerciseRepository>()
            .createExercise(holder.exerciseDataToCreate!);
        createdExercisesMap[holder.tempId] = createdExercise;
      }

      // 2. Tạo đối tượng TrainingSchedule cuối cùng
      _finalizeScheduleCreation(createdExercisesMap);
    } catch (e) {
      // Đóng dialog loading và hiển thị lỗi
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đã xảy ra lỗi khi tạo bài tập mới: $e')),
      );
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  void _finalizeScheduleCreation(Map<String, Exercise> createdExercisesMap) {
    final finalTrainingExercises =
        _exercisesHolderNotifier.value.map((holder) {
          if (holder.isNewFromAI) {
            final createdExercise = createdExercisesMap[holder.tempId];
            if (createdExercise == null) {
              throw Exception(
                "Lỗi logic: Không tìm thấy bài tập vừa tạo cho ${holder.name}",
              );
            }
            return holder.trainingExercise.copyWith(
              exerciseId: createdExercise.id!,
            );
          } else {
            return holder.trainingExercise;
          }
        }).toList();

    // Re-order tất cả các bài tập trước khi lưu
    for (int i = 0; i < finalTrainingExercises.length; i++) {
      finalTrainingExercises[i] = finalTrainingExercises[i].copyWith(
        order: i + 1,
      );
    }

    final startTime = _startTimeNotifier.value!;
    final endTime = _endTimeNotifier.value!;
    final startDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      startTime.hour,
      startTime.minute,
    );
    final endDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      endTime.hour,
      endTime.minute,
    );

    final trainingSchedule = TrainingSchedule(
      sportId: widget.sportId!,
      id: null,
      date: widget.trainingDate,
      startTime: startDateTime.toUtc(),
      endTime: endDateTime.toUtc(),
      status: "Đã lên lịch",
      location: _locationController.text,
      type: _typeController.text,
      notes: _notesController.text,
      createdBy: widget.createBy,
      progress: 0.0,
      dailyScheduleId: widget.dailyScheduleId,
      trainingExercises: finalTrainingExercises,
      createdAt: DateTime.now().toUtc(),
      updatedAt: DateTime.now().toUtc(),
    );

    // 3. Gửi sự kiện tạo TrainingSchedule
    context.read<TrainingScheduleBloc>().add(
      CreateTrainingSchedule(trainingSchedule),
    );
  }

  // --- CÁC HÀM ĐIỀU HƯỚNG VÀ UI ---

  // Các hàm này được giữ nguyên logic
  void _navigateAndGetSuggestions() async {
    final results = await Navigator.of(
      context,
    ).push<List<Map<String, dynamic>>>(
      MaterialPageRoute(
        builder:
            (_) => BlocProvider(
              create:
                  (context) => SuggestionBloc(
                    suggestionRepository: context.read<SuggestionRepository>(),
                    sportRepository: context.read<SportRepository>(),
                  ),
              child: ExerciseSuggestionScreen(
                sportId: widget.sportId!,
                coachId: widget.createBy,
              ),
            ),
      ),
    );

    if (results != null && results.isNotEmpty) {
      final newHolders = <_ExerciseHolder>[];
      for (var suggestion in results) {
        final tempId =
            DateTime.now().millisecondsSinceEpoch.toString() +
            (suggestion['name'] ?? '');
        final secondaryMuscles =
            (suggestion['secondaryMuscles'] as List<dynamic>?)
                ?.map((e) => e.toString())
                .toList() ??
            [];
        final instructions =
            (suggestion['instructions'] as List<dynamic>?)
                ?.map((e) => e.toString())
                .toList() ??
            [];

        final exerciseToCreate = Exercise(
          id: null,
          name: suggestion['name'] ?? 'Bài tập mới',
          bodyPart: suggestion['bodyPart'] ?? '',
          target: suggestion['target'] ?? '',
          equipment: suggestion['equipment'] ?? '',
          unitType: suggestion['unitType'] ?? 'Hiệp',
          sportId: widget.sportId!,
          createdBy: widget.createBy,
          secondaryMuscles: secondaryMuscles,
          instructions: instructions,
          gifUrl: '',
          createdAt: null,
          updatedAt: null,
        );

        // --- BẮT ĐẦU THAY ĐỔI LOGIC TẠO TrainingExercise ---
        final unitType = suggestion['unitType'] ?? 'Hiệp';
        final trainingExercise = TrainingExercise(
          sportId: widget.sportId!,
          id: null,
          scheduleId: null,
          exerciseId: tempId, // ID tạm thời
          order: 0,
          // Sử dụng các giá trị được AI gợi ý, có giá trị mặc định nếu null
          reps: (suggestion['reps'] as int?) ?? (unitType == 'Hiệp' ? 10 : 0),
          sets: (suggestion['sets'] as int?) ?? (unitType == 'Hiệp' ? 3 : 0),
          weight: (suggestion['weight'] as num?)?.toDouble() ?? 0.0,
          duration:
              (suggestion['duration'] as int?) ??
              (unitType == 'Thời gian' ? 15 : 0),
          distance: (suggestion['distance'] as num?)?.toDouble() ?? 0.0,
          status: 'đã lên lịch',
          actualReps: 0,
          actualSets: 0,
          actualWeight: 0,
          actualDuration: 0,
          actualDistance: 0,
          createdAt: null,
          updatedAt: null,
        );
        // --- KẾT THÚC THAY ĐỔI ---

        newHolders.add(
          _ExerciseHolder(
            tempId: tempId,
            name: exerciseToCreate.name,
            unitType: exerciseToCreate.unitType,
            trainingExercise: trainingExercise,
            isNewFromAI: true,
            exerciseDataToCreate: exerciseToCreate,
          ),
        );
      }

      _exercisesHolderNotifier.value = [
        ..._exercisesHolderNotifier.value,
        ...newHolders,
      ];
    }
  }

  void _navigateToAddExercise() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => TrainingExerciseCreateScreen(
              trainingDate: widget.trainingDate,
              sportId: widget.sportId,
              coachId: widget.createBy,
            ),
      ),
    );
    if (result != null && result is List && result.length == 2) {
      final newTrainingExercise = result[0] as TrainingExercise;
      final exerciseName = result[1] as String;
      final tempId = DateTime.now().millisecondsSinceEpoch.toString();
      final exerciseUnitType =
          newTrainingExercise.sets > 0 ? 'Hiệp' : 'Thời gian';

      final newHolder = _ExerciseHolder(
        tempId: tempId,
        name: exerciseName,
        unitType: exerciseUnitType,
        trainingExercise: newTrainingExercise,
        isNewFromAI: false,
      );

      _exercisesHolderNotifier.value = [
        ..._exercisesHolderNotifier.value,
        newHolder,
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thêm Buổi Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is TrainingSchedule_Success) {
            Navigator.of(context).pop(); // Pop sau khi thành công
          } else if (state is TrainingSchedule_Error) {
            Navigator.of(context).pop(); // Pop dialog loading
            setState(() => _isSubmitting = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Lỗi: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              _buildSectionTitle('Thông tin buổi tập'),
              const SizedBox(height: 16),
              TextFormField(
                controller: _typeController,
                decoration: const InputDecoration(
                  labelText: 'Loại buổi tập (Vd: Thể lực, Sức mạnh)',
                ),
                validator:
                    (v) =>
                        (v == null || v.isEmpty) ? 'Không được để trống' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Địa điểm'),
                validator:
                    (v) =>
                        (v == null || v.isEmpty) ? 'Không được để trống' : null,
              ),
              const SizedBox(height: 24),
              _buildSectionTitle('Thời gian'),
              const SizedBox(height: 16),
              _buildTimePicker('Bắt đầu', _startTimeNotifier, isStart: true),
              const SizedBox(height: 16),
              _buildTimePicker('Kết thúc', _endTimeNotifier, isStart: false),
              const SizedBox(height: 24),
              _buildSectionTitle('Ghi chú'),
              const SizedBox(height: 16),
              TextFormField(
                controller: _notesController,
                decoration: const InputDecoration(hintText: 'Nhập ghi chú...'),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              _buildExerciseListSection(),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isSubmitting ? null : _submitForm,
                child:
                    _isSubmitting
                        ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                        : const Text('THÊM BUỔI TẬP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildTimePicker(
    String label,
    ValueNotifier<TimeOfDay?> notifier, {
    required bool isStart,
  }) {
    return ValueListenableBuilder<TimeOfDay?>(
      valueListenable: notifier,
      builder: (context, time, child) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          title: Text(time == null ? label : '$label: ${time.format(context)}'),
          trailing: const Icon(Icons.access_time_rounded),
          onTap: () async {
            final pickedTime = await showTimePicker(
              context: context,
              initialTime: time ?? TimeOfDay.now(),
            );
            if (pickedTime != null) {
              notifier.value = pickedTime;
            }
          },
        );
      },
    );
  }

  Widget _buildExerciseListSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSectionTitle('Danh sách bài tập'),
            Row(
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.add_circle_outline),
                  label: const Text('Thêm'),
                  onPressed: _navigateToAddExercise,
                ),
                TextButton.icon(
                  icon: const Icon(Icons.auto_awesome),
                  label: const Text('AI'),
                  onPressed: _navigateAndGetSuggestions,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder<List<_ExerciseHolder>>(
          valueListenable: _exercisesHolderNotifier,
          builder: (context, holders, child) {
            if (holders.isEmpty) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                alignment: Alignment.center,
                child: Text(
                  'Chưa có bài tập nào được thêm.',
                  style: GoogleFonts.poppins(color: Colors.grey[600]),
                ),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: holders.length,
              itemBuilder: (context, index) {
                final holder = holders[index];
                final exercise = holder.trainingExercise;

                // --- BẮT ĐẦU THAY ĐỔI ---
                // Tạo chuỗi subtitle động dựa trên unitType
                String subtitleText = '';
                if (holder.unitType.toLowerCase() == 'hiệp') {
                  subtitleText = '${exercise.sets} hiệp x ${exercise.reps} lần';
                  if (exercise.weight > 0) {
                    subtitleText += ' X ${exercise.weight}kg';
                  }
                } else if (holder.unitType.toLowerCase() == 'thời gian') {
                  subtitleText = '${exercise.duration} phút X ${exercise.distance} m';
                  if (exercise.distance > 0) {
                    subtitleText += ' X ${exercise.weight}kg';
                  }
                }

                if (holder.isNewFromAI) {
                  subtitleText +=
                      "${subtitleText.isNotEmpty ? " • " : ""}Gợi ý từ AI";
                }
                // --- KẾT THÚC THAY ĐỔI ---

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(
                      holder.name,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    // Sử dụng subtitleText đã được tạo
                    subtitle: Text(
                      subtitleText,
                      style: TextStyle(
                        color: holder.isNewFromAI ? Colors.blue : null,
                        fontStyle:
                            holder.isNewFromAI
                                ? FontStyle.italic
                                : FontStyle.normal,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 20,
                            color: holder.isNewFromAI ? Colors.grey : null,
                          ),
                          onPressed:
                              holder.isNewFromAI
                                  ? null
                                  : () {
                                    /* Logic sửa cho bài tập đã có */
                                  },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.red[400],
                            size: 20,
                          ),
                          onPressed: () {
                            final currentHolders = List<_ExerciseHolder>.from(
                              _exercisesHolderNotifier.value,
                            );
                            currentHolders.removeAt(index);
                            _exercisesHolderNotifier.value = currentHolders;
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
