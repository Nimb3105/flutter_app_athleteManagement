import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/add_training_exercise_for_training_schedule_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/edit_traininng_exercise_for_training_schedule_sreen.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTrainingScheduleScreen extends StatefulWidget {
  final String dailyScheduleId;
  final DateTime date;
  final String createBy;
  final String? sportId;
  final DateTime? latestEndTime;

  const AddTrainingScheduleScreen({
    super.key,
    required this.dailyScheduleId,
    required this.date,
    required this.createBy,
    required this.sportId,
    this.latestEndTime,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AddTrainingScheduleScreenState createState() =>
      _AddTrainingScheduleScreenState();
}

class _AddTrainingScheduleScreenState extends State<AddTrainingScheduleScreen> {
  final _formKey = GlobalKey<FormState>();

  final _typeController = TextEditingController();
  final _locationController = TextEditingController();
  final _notesController = TextEditingController();
  late TimeOfDay _startTime;
  late TimeOfDay _endTime;

  final List<TrainingExercise> _trainingExercises = [];
  final Map<int, Map<String, String>> _exerciseInfo = {};

  @override
  void initState() {
    super.initState();
    if (widget.latestEndTime != null) {
      final localLatestEndTime = widget.latestEndTime!.toLocal().add(
        const Duration(minutes: 1),
      );
      _startTime = TimeOfDay.fromDateTime(localLatestEndTime);
      _endTime = TimeOfDay.fromDateTime(
        localLatestEndTime.add(const Duration(hours: 1)),
      );
    } else {
      _startTime = TimeOfDay.now();
      _endTime = TimeOfDay.fromDateTime(
        DateTime.now().add(const Duration(hours: 1)),
      );
    }
  }

  @override
  void dispose() {
    _typeController.dispose();
    _locationController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), backgroundColor: Colors.red),
      );
  }

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final initialTime = isStart ? _startTime : _endTime;
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (pickedTime == null) return;

    final pickedDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      pickedTime.hour,
      pickedTime.minute,
    );
    if (isStart) {
      if (widget.latestEndTime != null &&
          !pickedDateTime.isAfter(widget.latestEndTime!.toLocal())) {
        _showErrorSnackbar(
          'Giờ bắt đầu phải sau ${DateFormat('HH:mm').format(widget.latestEndTime!.toLocal())}.',
        );
        return;
      }
      setState(() {
        _startTime = pickedTime;
        final endDateTime = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          _endTime.hour,
          _endTime.minute,
        );
        if (!endDateTime.isAfter(pickedDateTime)) {
          _endTime = TimeOfDay.fromDateTime(
            pickedDateTime.add(const Duration(minutes: 30)),
          );
        }
      });
    } else {
      final startDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _startTime.hour,
        _startTime.minute,
      );
      if (!pickedDateTime.isAfter(startDateTime)) {
        _showErrorSnackbar('Giờ kết thúc phải sau giờ bắt đầu.');
        return;
      }
      setState(() => _endTime = pickedTime);
    }
  }

  void _navigateToAddExercise() async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (_) => BlocProvider(
              create:
                  (context) => ExerciseBloc(
                    exerciseRepository: context.read<ExerciseRepository>(),
                  ),
              child: AddTrainingExerciseForTrainingScheduleScreen(
                sportId: widget.sportId,
              ),
            ),
      ),
    );

    if (result != null && result is Map<String, dynamic>) {
      setState(() {
        final newExercise = result['exercise'] as TrainingExercise;
        _trainingExercises.add(newExercise);
        _exerciseInfo[_trainingExercises.length - 1] = {
          'name': result['exerciseName'],
          'unitType': result['unitType'],
        };
      });
    }
  }

  void _navigateToEditExercise(int index) async {
    final currentExercise = _trainingExercises[index];
    final currentInfo = _exerciseInfo[index]!;

    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (_) => EditTrainingExerciseForTrainingScheduleScreen(
              trainingExercise: currentExercise,
              exerciseName: currentInfo['name']!,
              unitType: currentInfo['unitType']!,
            ),
      ),
    );

    if (result != null && result is TrainingExercise) {
      setState(() => _trainingExercises[index] = result);
    }
  }

  void _deleteExercise(int index) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận xóa'),
          content: Text(
            'Bạn có chắc chắn muốn xóa bài tập "${_exerciseInfo[index]!['name']}" không?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: const Text('Xóa'),
              onPressed: () {
                setState(() {
                  _trainingExercises.removeAt(index);
                  // This part is tricky as keys are int. We need to shift keys.
                  final newExerciseInfo = <int, Map<String, String>>{};
                  for (int i = 0; i < _trainingExercises.length; i++) {
                    final oldIndex = _exerciseInfo.keys.firstWhere(
                      (k) =>
                          _exerciseInfo[k] ==
                          _exerciseInfo[i > index ? i + 1 : i],
                    );
                    newExerciseInfo[i] = _exerciseInfo[oldIndex]!;
                  }
                  _exerciseInfo.clear();
                  _exerciseInfo.addAll(newExerciseInfo);
                });
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      for (int i = 0; i < _trainingExercises.length; i++) {
        _trainingExercises[i] = _trainingExercises[i].copyWith(order: i + 1);
      }

      final date = widget.latestEndTime ?? widget.date.toLocal();
    final startDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        _startTime.hour,
        _startTime.minute,
      );
      final endDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        _endTime.hour,
        _endTime.minute,
      );

      final newSchedule = TrainingSchedule(
        sportId: widget.sportId!,
        id: null,
        date: widget.date,
        startTime: startDateTime.toUtc(),
        endTime: endDateTime.toUtc(),
        type: _typeController.text,
        location: _locationController.text,
        notes: _notesController.text,
        status: 'đã lên lịch',
        createdBy: widget.createBy,
        progress: 0.0,
        dailyScheduleId: widget.dailyScheduleId,
        trainingExercises: _trainingExercises,
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
      );
      context.read<TrainingScheduleBloc>().add(
        CreateTrainingSchedule(newSchedule),
      );
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
          if (state is TrainingSchedule_Success ||
              state is LoadedTrainingSchedule) {
            Navigator.of(context).pop();
          } else if (state is TrainingSchedule_Error) {
            _showErrorSnackbar('Lỗi: ${state.message}');
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Form(
            key: _formKey,

            child: ListView(
              children: [
                _buildSectionTitle('Thông tin buổi tập'),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _typeController,
                  decoration: const InputDecoration(
                    labelText: 'Loại buổi tập (Vd: Thể lực, Sức mạnh)',
                  ),
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Không được để trống'
                              : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: 'Địa điểm'),
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Không được để trống'
                              : null,
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('Thời gian'),
                const SizedBox(height: 16),
                _buildTimePicker(context, 'Bắt đầu', true),
                const SizedBox(height: 16),
                _buildTimePicker(context, 'Kết thúc', false),
                const SizedBox(height: 24),
                _buildSectionTitle('Ghi chú'),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesController,
                  decoration: const InputDecoration(
                    hintText: 'Nhập ghi chú...',
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 24),
                _buildExerciseListSection(),
                const SizedBox(height: 32),

                ElevatedButton(
                  onPressed: _submit,
                  child: const Text('TẠO BUỔI TẬP'),
                ),
              ],
            ),
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

  Widget _buildTimePicker(BuildContext context, String label, bool isStart) {
    final time = isStart ? _startTime : _endTime;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      title: Text('$label: ${time.format(context)}'),
      trailing: const Icon(Icons.access_time_rounded),
      onTap: () => _selectTime(context, isStart),
    );
  }

  Widget _buildExerciseListSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSectionTitle('Bài tập chi tiết'),
            TextButton.icon(
              icon: const Icon(Icons.add_circle_outline),
              label: const Text('Thêm'),
              onPressed: _navigateToAddExercise,
            ),
          ],
        ),
        const SizedBox(height: 8),
        _trainingExercises.isEmpty
            ? Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Chưa có bài tập nào được thêm.',
                  style: GoogleFonts.poppins(color: Colors.grey[600]),
                ),
              ),
            )
            : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _trainingExercises.length,
              itemBuilder: (context, index) {
                final exercise = _trainingExercises[index];
                final exerciseInfo = _exerciseInfo[index]!;
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(
                      exerciseInfo['name']!,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    subtitle: _buildExerciseSubtitle(exercise),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, size: 20),
                          onPressed: () => _navigateToEditExercise(index),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.red[400],
                            size: 20,
                          ),
                          onPressed: () => _deleteExercise(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      ],
    );
  }

  Widget _buildExerciseSubtitle(TrainingExercise exercise) {
    final unitType =
        _exerciseInfo[_trainingExercises.indexOf(exercise)]!['unitType'];
    if (unitType == 'Thời gian') {
      return Text(
        'Thời gian: ${exercise.duration}s, Cự ly: ${exercise.distance}m, Tạ: ${exercise.weight}kg',
        style: GoogleFonts.poppins(fontSize: 12),
      );
    }
    return Text(
      'Sets: ${exercise.sets}, Reps: ${exercise.reps}, Tạ: ${exercise.weight}kg',
      style: GoogleFonts.poppins(fontSize: 12),
    );
  }
}
