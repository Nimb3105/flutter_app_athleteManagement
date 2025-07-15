// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/exercise_detail_in_daily_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise/add_training_exercise_screen.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_exercise/edit_training_exercise_screen.dart';
import 'package:google_fonts/google_fonts.dart';

// Dialog cập nhật trạng thái
class _UpdateStatusDialog extends StatefulWidget {
  final TrainingExercise trainingExercise;
  final Exercise? exercise;

  const _UpdateStatusDialog({
    required this.trainingExercise,
    required this.exercise,
  });

  @override
  __UpdateStatusDialogState createState() => __UpdateStatusDialogState();
}

class __UpdateStatusDialogState extends State<_UpdateStatusDialog> {
  final _formKey = GlobalKey<FormState>();
  String _selectedStatus = 'hoàn thành';

  late final TextEditingController repsController;
  late final TextEditingController setsController;
  late final TextEditingController weightController;
  late final TextEditingController durationController;
  late final TextEditingController distanceController;

  @override
  void initState() {
    super.initState();
    _selectedStatus =
        widget.trainingExercise.status.toLowerCase() == 'chưa hoàn thành'
            ? 'chưa hoàn thành'
            : 'hoàn thành';
    repsController = TextEditingController(
      text:
          widget.trainingExercise.actualReps > 0
              ? widget.trainingExercise.actualReps.toString()
              : '',
    );
    setsController = TextEditingController(
      text:
          widget.trainingExercise.actualSets > 0
              ? widget.trainingExercise.actualSets.toString()
              : '',
    );
    weightController = TextEditingController(
      text:
          widget.trainingExercise.actualWeight > 0
              ? widget.trainingExercise.actualWeight.toString()
              : '',
    );
    durationController = TextEditingController(
      text:
          widget.trainingExercise.actualDuration > 0
              ? widget.trainingExercise.actualDuration.toString()
              : '',
    );
    distanceController = TextEditingController(
      text:
          widget.trainingExercise.actualDistance > 0
              ? widget.trainingExercise.actualDistance.toString()
              : '',
    );
  }

  @override
  void dispose() {
    repsController.dispose();
    setsController.dispose();
    weightController.dispose();
    durationController.dispose();
    distanceController.dispose();
    super.dispose();
  }

  void _submitUpdate() {
    if (_selectedStatus == 'hoàn thành' && !_formKey.currentState!.validate()) {
      return;
    }

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận'),
          content: const Text(
            'Bạn có chắc chắn muốn ghi nhận kết quả này không?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                late TrainingExercise updatedExercise;
                if (_selectedStatus == 'chưa hoàn thành') {
                  updatedExercise = widget.trainingExercise.copyWith(
                    status: 'chưa hoàn thành',
                    actualDistance: 0.0,
                    actualDuration: 0,
                    actualReps: 0,
                    actualSets: 0,
                    actualWeight: 0.0,
                  );
                } else {
                  updatedExercise = widget.trainingExercise.copyWith(
                    status: 'hoàn thành',
                    actualReps: int.tryParse(repsController.text) ?? 0,
                    actualSets: int.tryParse(setsController.text) ?? 0,
                    actualWeight: double.tryParse(weightController.text) ?? 0.0,
                    actualDuration: int.tryParse(durationController.text) ?? 0,
                    actualDistance:
                        double.tryParse(distanceController.text) ?? 0.0,
                  );
                }
                context.read<TrainingExerciseBloc>().add(
                  UpdateTrainingExercise(updatedExercise),
                );
                Navigator.of(dialogContext).pop(); // Close confirmation dialog
                Navigator.of(context).pop(); // Close main dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Cập nhật: ${widget.exercise?.name ?? ""}',
        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('Hoàn thành'),
                      value: 'hoàn thành',
                      groupValue: _selectedStatus,
                      onChanged: (v) => setState(() => _selectedStatus = v!),
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('Bỏ qua'),
                      value: 'chưa hoàn thành',
                      groupValue: _selectedStatus,
                      onChanged: (v) => setState(() => _selectedStatus = v!),
                    ),
                  ),
                ],
              ),
              const Divider(height: 20),
              if (_selectedStatus == 'hoàn thành')
                Column(
                  children: [
                    if (widget.exercise?.unitType == 'Hiệp') ...[
                      TextFormField(
                        controller: setsController,
                        decoration: const InputDecoration(
                          labelText: 'Số hiệp đã thực hiện',
                        ),
                        keyboardType: TextInputType.number,
                        validator:
                            (v) =>
                                (v == null || v.isEmpty)
                                    ? 'Vui lòng nhập'
                                    : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: repsController,
                        decoration: const InputDecoration(
                          labelText: 'Số lần đã thực hiện',
                        ),
                        keyboardType: TextInputType.number,
                        validator:
                            (v) =>
                                (v == null || v.isEmpty)
                                    ? 'Vui lòng nhập'
                                    : null,
                      ),
                    ] else if (widget.exercise?.unitType == 'Thời gian') ...[
                      TextFormField(
                        controller: durationController,
                        decoration: const InputDecoration(
                          labelText: 'Thời gian (giây)',
                        ),
                        keyboardType: TextInputType.number,
                        validator:
                            (v) =>
                                (v == null || v.isEmpty)
                                    ? 'Vui lòng nhập'
                                    : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: distanceController,
                        decoration: const InputDecoration(
                          labelText: 'Khoảng cách (mét)',
                        ),
                        keyboardType: TextInputType.number,
                        validator:
                            (v) =>
                                (v == null || v.isEmpty)
                                    ? 'Vui lòng nhập'
                                    : null,
                      ),
                    ],
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: weightController,
                      decoration: const InputDecoration(
                        labelText: 'Mức tạ (kg)',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      validator:
                          (v) =>
                              (v == null || v.isEmpty) ? 'Vui lòng nhập' : null,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Hủy'),
        ),
        ElevatedButton(onPressed: _submitUpdate, child: const Text('Ghi nhận')),
      ],
    );
  }
}

class ListTrainingExerciseScreen extends StatefulWidget {
  final TrainingSchedule trainingSchedule;
  final String sportId;

  const ListTrainingExerciseScreen({
    super.key,
    required this.trainingSchedule,
    required this.sportId,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ListTrainingExerciseScreenState createState() =>
      _ListTrainingExerciseScreenState();
}

class _ListTrainingExerciseScreenState
    extends State<ListTrainingExerciseScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TrainingExerciseBloc>().add(
      GetAllTrainingExercisesByScheduleId(widget.trainingSchedule.id!),
    );
  }

  // --- LOGIC GỐC ---
  void _showUpdateDialog(
    BuildContext context,
    TrainingExercise trainingExercise,
    Exercise? exercise,
  ) {
    showDialog(
      context: context,
      builder:
          (dialogContext) => BlocProvider.value(
            value: context.read<TrainingExerciseBloc>(),
            child: _UpdateStatusDialog(
              trainingExercise: trainingExercise,
              exercise: exercise,
            ),
          ),
    );
  }

  void _deleteExercise(
    BuildContext context,
    TrainingExercise trainingExercise,
    String exerciseName,
  ) {
    showDialog(
      context: context,
      builder:
          (BuildContext dialogContext) => AlertDialog(
            title: const Text('Xác nhận gỡ bỏ'),
            content: Text(
              'Bạn có chắc chắn muốn gỡ bài tập "$exerciseName" khỏi lịch tập này không?',
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Hủy'),
                onPressed: () => Navigator.of(dialogContext).pop(),
              ),
              TextButton(
                child: const Text('Gỡ bỏ', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  final updatedExercise = trainingExercise.copyWith(
                    scheduleId: null,
                    actualDistance: 0.0,
                    actualDuration: 0,
                    actualReps: 0,
                    actualSets: 0,
                    actualWeight: 0.0,
                  );
                  context.read<TrainingExerciseBloc>().add(
                    UpdateTrainingExercise(updatedExercise),
                  );
                  Navigator.of(dialogContext).pop();
                },
              ),
            ],
          ),
    );
  }

  double _calculateProgress(TrainingExercise te, Exercise? exercise) {
    if (exercise == null) return 0.0;
    final List<double> p = [];
    if (te.weight > 0) p.add(te.actualWeight / te.weight);
    if (exercise.unitType == 'Hiệp') {
      if (te.sets > 0) p.add(te.actualSets / te.sets);
      if (te.reps > 0) p.add(te.actualReps / te.reps);
    } else if (exercise.unitType == 'Thời gian') {
      if (te.duration > 0) p.add(te.actualDuration / te.duration);
      if (te.distance > 0) p.add(te.actualDistance / te.distance);
    }
    if (p.isEmpty) return te.status.toLowerCase() == 'hoàn thành' ? 1.0 : 0.0;
    final validProgress = p.where((v) => !v.isNaN && !v.isInfinite);
    if (validProgress.isEmpty) return 0.0;
    return validProgress.reduce((a, b) => a + b) / validProgress.length;
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'hoàn thành':
        return Colors.green.shade50;
      case 'chưa hoàn thành':
        return Colors.red.shade50;
      case 'đã lên lịch':
        return Colors.blue.shade50;
      default:
        return Colors.white;
    }
  }

  void _showUpdateScheduleStatusDialog({
    required BuildContext context,
    required String newStatus,
    required String title,
    required String content,
    required TrainingSchedule schedule,
    required List<TrainingExercise> exercises,
    required Map<String, Exercise>? exerciseDetails,
  }) {
    showDialog(
      context: context,
      builder:
          (BuildContext dialogContext) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              TextButton(
                child: const Text('Hủy'),
                onPressed: () => Navigator.of(dialogContext).pop(),
              ),
              TextButton(
                child: const Text('Xác nhận'),
                onPressed: () {
                  double totalProgress = schedule.progress ?? 0.0;
                  if (newStatus == 'hoàn thành' && exercises.isNotEmpty) {
                    final progressList = exercises.map(
                      (te) => _calculateProgress(
                        te,
                        exerciseDetails?[te.exerciseId],
                      ),
                    );
                    totalProgress =
                        progressList.reduce((a, b) => a + b) /
                        progressList.length;
                  } else if (newStatus == 'chưa hoàn thành') {
                    totalProgress = 0.0;
                  }
                  final updatedSchedule = schedule.copyWith(
                    progress: totalProgress,
                    status: newStatus,
                  );
                  context.read<TrainingScheduleBloc>().add(
                    UpdateTrainingSchedule(updatedSchedule),
                  );
                  Navigator.of(dialogContext).pop();
                },
              ),
            ],
          ),
    );
  }

  // --- UI MỚI ---
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TrainingExerciseBloc, TrainingExerciseState>(
          listener: (context, state) {
            if (state is TrainingExercise_Success) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.green,
                  ),
                );
              context.read<TrainingExerciseBloc>().add(
                GetAllTrainingExercisesByScheduleId(
                  widget.trainingSchedule.id!,
                ),
              );
            } else if (state is TrainingExercise_Error) {
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
        ),
        BlocListener<TrainingScheduleBloc, TrainingScheduleState>(
          listener: (context, state) {
            if (state is TrainingSchedule_Success) Navigator.of(context).pop();
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Chi Tiết Buổi Tập',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          actions: [
            BlocBuilder<TrainingExerciseBloc, TrainingExerciseState>(
              builder: (context, state) {
                int order = 0;
                if (state is LoadedTrainingExercisesWithExercises) {
                  order = state.trainingExercises.length;
                }
                return IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => MultiBlocProvider(
                              providers: [
                                BlocProvider.value(
                                  value: context.read<TrainingExerciseBloc>(),
                                ),
                                BlocProvider.value(
                                  value: context.read<ExerciseBloc>(),
                                ),
                              ],
                              child: AddTrainingExerciseScreen(
                                scheduleId: widget.trainingSchedule.id!,
                                sportId: widget.sportId,
                                order: order,
                              ),
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<TrainingExerciseBloc, TrainingExerciseState>(
          builder: (context, state) {
            if (state is TrainingExercise_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedTrainingExercisesWithExercises) {
              if (state.trainingExercises.isEmpty) return _buildEmptyState();
              return ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                itemCount: state.trainingExercises.length,
                itemBuilder: (context, index) {
                  final trainingExercise = state.trainingExercises[index];
                  final exercise =
                      state.exercises?[trainingExercise.exerciseId];
                  return _buildExerciseCard(
                    context,
                    trainingExercise,
                    exercise,
                  );
                },
              );
            }
            return const Center(child: Text('Không có dữ liệu'));
          },
        ),
        floatingActionButton: _buildFab(context),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.fitness_center, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          Text(
            'Chưa có bài tập nào',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Nhấn nút + để thêm bài tập chi tiết.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseCard(
    BuildContext context,
    TrainingExercise trainingExercise,
    Exercise? exercise,
  ) {
    final progress = _calculateProgress(trainingExercise, exercise);
    final isScheduleNotCompleted =
        widget.trainingSchedule.status.toLowerCase() == 'chưa hoàn thành';

    return Card(
      color: _getStatusColor(trainingExercise.status),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          if (exercise != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) =>
                        ExerciseDetailInDailyScreen(exercise: exercise),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      exercise?.name ?? 'Đang tải...',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      if (value == 'edit') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => MultiBlocProvider(
                                  providers: [
                                    BlocProvider.value(
                                      value:
                                          context.read<TrainingExerciseBloc>(),
                                    ),
                                    BlocProvider.value(
                                      value: context.read<ExerciseBloc>(),
                                    ),
                                  ],
                                  child: EditTrainingExerciseScreen(
                                    trainingExercise: trainingExercise,
                                  ),
                                ),
                          ),
                        );
                      } else if (value == 'delete') {
                        _deleteExercise(
                          context,
                          trainingExercise,
                          exercise!.name,
                        );
                      }
                    },
                    itemBuilder:
                        (BuildContext context) => <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'edit',
                            child: Text('Sửa'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'delete',
                            child: Text('Xóa'),
                          ),
                        ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildTargetRow(trainingExercise, exercise),
              const SizedBox(height: 8),
              _buildActualRow(trainingExercise, exercise),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: progress.clamp(0.0, 1.0),
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        progress >= 1.0 ? Colors.green : Colors.orange,
                      ),
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '${(progress * 100).toStringAsFixed(0)}%',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (!isScheduleNotCompleted)
                Align(
                  alignment: Alignment.centerRight,
                  child: _buildRecordButton(
                    context,
                    trainingExercise,
                    exercise,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.grey[700]),
        const SizedBox(width: 8),
        Expanded(child: Text(text, style: GoogleFonts.poppins(fontSize: 13))),
      ],
    );
  }

  Widget _buildTargetRow(TrainingExercise te, Exercise? ex) {
    String text;
    if (ex?.unitType == 'Thời gian') {
      text = 'Mục tiêu: ${te.duration}s | ${te.distance}m | ${te.weight}kg';
    } else {
      text = 'Mục tiêu: ${te.sets} hiệp x ${te.reps} lần | ${te.weight}kg';
    }
    return _buildInfoRow(Icons.flag_outlined, text);
  }

  Widget _buildActualRow(TrainingExercise te, Exercise? ex) {
    String text;
    if (ex?.unitType == 'Thời gian') {
      text =
          'Thực tế: ${te.actualDuration}s | ${te.actualDistance}m | ${te.actualWeight}kg';
    } else {
      text =
          'Thực tế: ${te.actualSets} hiệp x ${te.actualReps} lần | ${te.actualWeight}kg';
    }
    return _buildInfoRow(Icons.check_circle_outline, text);
  }

  Widget _buildRecordButton(
    BuildContext context,
    TrainingExercise te,
    Exercise? ex,
  ) {
    final status = te.status.toLowerCase();
    switch (status) {
      case 'đã lên lịch':
        return ElevatedButton.icon(
          onPressed: () => _showUpdateDialog(context, te, ex),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          icon: const Icon(Icons.edit_note),
          label: const Text('Ghi nhận'),
        );
      case 'hoàn thành':
        return ElevatedButton.icon(
          onPressed: () => _showUpdateDialog(context, te, ex),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          icon: const Icon(Icons.edit),
          label: const Text('Sửa KQ'),
        );
      case 'chưa hoàn thành':
        return ElevatedButton.icon(
          onPressed: () => _showUpdateDialog(context, te, ex),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          icon: const Icon(Icons.refresh),
          label: const Text('Ghi nhận lại'),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildFab(BuildContext context) {
    return BlocBuilder<TrainingExerciseBloc, TrainingExerciseState>(
      builder: (context, state) {
        if (state is LoadedTrainingExercisesWithExercises) {
          final status = widget.trainingSchedule.status.toLowerCase();
          if (status == 'chưa hoàn thành') return const SizedBox.shrink();

          return FloatingActionButton.extended(
            onPressed:
                () => _showUpdateScheduleStatusDialog(
                  context: context,
                  newStatus:
                      status == 'hoàn thành' ? 'chưa hoàn thành' : 'hoàn thành',
                  title:
                      status == 'hoàn thành'
                          ? 'Hủy Hoàn Thành?'
                          : 'Xác Nhận Hoàn Thành?',
                  content:
                      status == 'hoàn thành'
                          ? 'Bạn có muốn đánh dấu buổi tập này là "Chưa hoàn thành" không?'
                          : 'Bạn có chắc chắn muốn hoàn thành buổi tập này không?',
                  schedule: widget.trainingSchedule,
                  exercises: state.trainingExercises,
                  exerciseDetails: state.exercises,
                ),
            label: Text(
              status == 'hoàn thành' ? 'Hủy Hoàn Thành' : 'Hoàn Thành Buổi Tập',
            ),
            icon: Icon(
              status == 'hoàn thành'
                  ? Icons.cancel_outlined
                  : Icons.check_circle_outline,
            ),
            backgroundColor:
                status == 'hoàn thành' ? Colors.orange : Colors.green,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
