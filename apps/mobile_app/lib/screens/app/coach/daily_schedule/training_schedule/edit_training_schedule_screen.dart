import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
// Import các màn hình con nếu cần
// import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/add_training_exercise_for_training_schedule_screen.dart';
// import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule/edit_traininng_exercise_for_training_schedule_sreen.dart';

class EditTrainingScheduleScreen extends StatefulWidget {
  final TrainingSchedule trainingSchedule;
  final TrainingSchedule? previousSchedule;
  final TrainingSchedule? nextSchedule;

  const EditTrainingScheduleScreen({
    super.key,
    required this.trainingSchedule,
    this.previousSchedule,
    this.nextSchedule,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditTrainingScheduleScreenState createState() =>
      _EditTrainingScheduleScreenState();
}

class _EditTrainingScheduleScreenState
    extends State<EditTrainingScheduleScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _typeController;
  late TextEditingController _locationController;
  late TextEditingController _notesController;
  late TimeOfDay _startTime;
  late TimeOfDay _endTime;
  // Giả sử bạn cũng cần quản lý danh sách bài tập ở đây
  late List<TrainingExercise> _trainingExercises;

  @override
  void initState() {
    super.initState();
    final schedule = widget.trainingSchedule;
    _typeController = TextEditingController(text: schedule.type);
    _locationController = TextEditingController(text: schedule.location);
    _notesController = TextEditingController(text: schedule.notes);
    _startTime = TimeOfDay.fromDateTime(schedule.startTime.toLocal());
    _endTime = TimeOfDay.fromDateTime(schedule.endTime.toLocal());
    _trainingExercises = List.from(schedule.trainingExercises);
    // Cần có logic để điền thông tin này nếu bạn muốn hiển thị tên
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

    final date = widget.trainingSchedule.startTime;
    final pickedDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    if (isStart) {
      final endDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        _endTime.hour,
        _endTime.minute,
      );
      if (widget.previousSchedule != null &&
          !pickedDateTime.isAfter(widget.previousSchedule!.endTime.toLocal())) {
        _showErrorSnackbar(
          'Giờ bắt đầu phải sau ${DateFormat('HH:mm').format(widget.previousSchedule!.endTime.toLocal())}.',
        );
        return;
      }
      if (pickedDateTime.isAfter(endDateTime)) {
        _showErrorSnackbar('Giờ bắt đầu phải trước giờ kết thúc.');
        return;
      }
      setState(() => _startTime = pickedTime);
    } else {
      final startDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        _startTime.hour,
        _startTime.minute,
      );
      if (!pickedDateTime.isAfter(startDateTime)) {
        _showErrorSnackbar('Giờ kết thúc phải sau giờ bắt đầu.');
        return;
      }
      if (widget.nextSchedule != null &&
          !pickedDateTime.isBefore(widget.nextSchedule!.startTime.toLocal())) {
        _showErrorSnackbar(
          'Giờ kết thúc phải trước ${DateFormat('HH:mm').format(widget.nextSchedule!.startTime.toLocal())}.',
        );
        return;
      }
      setState(() => _endTime = pickedTime);
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final date = widget.trainingSchedule.date;
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

      final updatedSchedule = widget.trainingSchedule.copyWith(
        type: _typeController.text,
        location: _locationController.text,
        notes: _notesController.text,
        startTime: startDateTime.toUtc(),
        endTime: endDateTime.toUtc(),
        trainingExercises: _trainingExercises,
        updatedAt: DateTime.now().toUtc(),
      );

      context.read<TrainingScheduleBloc>().add(
        UpdateTrainingSchedule(updatedSchedule),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sửa Buổi Tập',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is TrainingSchedule_Success) {
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
                // Tương tự màn hình Add, nhưng với dữ liệu ban đầu
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
                // Phần danh sách bài tập (tương tự màn hình add)
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: _submit,
                  child: const Text('LƯU THAY ĐỔI'),
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
}
