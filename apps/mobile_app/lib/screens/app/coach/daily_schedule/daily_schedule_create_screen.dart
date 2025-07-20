// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/training_schedule_list_in_daily_create_screen.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MaxValueInputFormatter extends TextInputFormatter {
  final int max;
  MaxValueInputFormatter(this.max);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;
    final int? value = int.tryParse(newValue.text);
    if (value != null && value > max) {
      return oldValue;
    }
    return newValue;
  }
}

class DailyScheduleCreateScreen extends StatefulWidget {
  final String userId;
  final DailyScheduleBloc? dailyScheduleBloc;
  final String createdBy;
  final String? sportId;

  const DailyScheduleCreateScreen({
    required this.userId,
    this.dailyScheduleBloc,
    required this.createdBy,
    required this.sportId,
    super.key,
  });

  @override
  State<DailyScheduleCreateScreen> createState() =>
      _DailyScheduleCreateScreenState();
}

class _DailyScheduleCreateScreenState extends State<DailyScheduleCreateScreen> {
  // --- BIẾN TRẠNG THÁI VÀ LOGIC GỐC ---
  int _currentStep = 0;
  final formKeyStep1 = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final daysController = TextEditingController();
  final startDateNotifier = ValueNotifier<DateTime?>(null);
  final endDateNotifier = ValueNotifier<DateTime?>(null);
  final trainingSchedulesNotifier = ValueNotifier<List<TrainingSchedule>>([]);
  final exerciseNamesNotifier = ValueNotifier<Map<String, List<String>>>({});
  late final DailyScheduleBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc =
        widget.dailyScheduleBloc ??
        DailyScheduleBloc(
          dailyScheduleRepository: context.read<DailyScheduleRepository>(),
          userRepository: context.read<UserRepository>(),
        );

    // Thêm listener để tự động tính endDate khi daysController thay đổi
    daysController.addListener(_updateEndDate);
  }

  @override
  void dispose() {
    daysController.removeListener(_updateEndDate);
    nameController.dispose();
    daysController.dispose();
    startDateNotifier.dispose();
    endDateNotifier.dispose();
    trainingSchedulesNotifier.dispose();
    exerciseNamesNotifier.dispose();
    super.dispose();
  }

  void _updateEndDate() {
    final days = int.tryParse(daysController.text);
    if (days != null &&
        days > 0 &&
        days <= 30 &&
        startDateNotifier.value != null) {
      final baseEndDate = startDateNotifier.value!.add(
        Duration(days: days - 1),
      );
      endDateNotifier.value = DateTime(
        baseEndDate.year,
        baseEndDate.month,
        baseEndDate.day,
        23,
        59,
        59,
      );
    } else {
      endDateNotifier.value = null;
    }
    // Reset lịch tập chi tiết khi số ngày thay đổi
    trainingSchedulesNotifier.value = [];
    exerciseNamesNotifier.value = {};
  }

  // --- CÁC HÀM XỬ LÝ LOGIC GỐC ---
  Future<bool> checkScheduleAvailability(String dateString) async {
    final completer = Completer<bool>();
    StreamSubscription? listener;
    listener = bloc.stream.listen((state) {
      if (state is LoadedDailySchedule) {
        completer.complete(state.dailySchedule.id == null);
        listener?.cancel();
      } else if (state is DailySchedule_Error) {
        completer.complete(false); // Coi như không khả dụng nếu có lỗi
        listener?.cancel();
      }
    });
    bloc.add(GetDailyScheduleByUserId(widget.userId, dateString));
    return await completer.future;
  }

  bool validateTrainingSchedules(
    List<TrainingSchedule> schedules,
    DateTime startDate,
    int days,
  ) {
    for (int i = 0; i < days; i++) {
      final date = startDate.add(Duration(days: i));
      final hasSchedule = schedules.any(
        (ts) => DateUtils.isSameDay(ts.date, date),
      );
      if (!hasSchedule) {
        return false;
      }
    }
    return true;
  }

  void _submitForm() {
    final days = int.tryParse(daysController.text) ?? 0;
    if (days <= 0) return;
    final dailySchedule = DailySchedule(
      id: null,
      sportId: widget.sportId!,
      userId: widget.userId,
      name: nameController.text,
      startDate: startDateNotifier.value!.toUtc(),
      endDate: endDateNotifier.value!.toUtc(),
      createdAt: null,
      updatedAt: null,
      trainingSchedules: trainingSchedulesNotifier.value,
      createdBy: widget.createdBy,
    );
    bloc.add(CreateDailySchedule(dailySchedule));
  }

  List<DateTime> getAllDaysInPlan() {
    final days = int.tryParse(daysController.text) ?? 0;
    if (days <= 0 || startDateNotifier.value == null) return [];

    return List.generate(days, (index) {
      return DateUtils.dateOnly(
        startDateNotifier.value!.add(Duration(days: index)),
      );
    });
  }

  // --- PHẦN GIAO DIỆN BUILD ---
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tạo Kế Hoạch Tập Luyện',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocListener<DailyScheduleBloc, DailyScheduleState>(
          listener: (context, state) {
            if (state is DailySchedule_Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context);
            } else if (state is DailySchedule_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Lỗi: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep == 0) {
                if (formKeyStep1.currentState!.validate() &&
                    startDateNotifier.value != null) {
                  setState(() => _currentStep += 1);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Vui lòng điền đầy đủ thông tin ở Bước 1'),
                    ),
                  );
                }
              } else if (_currentStep == 1) {
                _submitForm();
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() => _currentStep -= 1);
              }
            },
            onStepTapped: (step) => setState(() => _currentStep = step),
            steps: _buildSteps(),
            controlsBuilder: (context, details) {
              return Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: Text(_currentStep == 0 ? 'TIẾP TỤC' : 'HOÀN TẤT'),
                    ),
                    const SizedBox(width: 12),
                    if (_currentStep != 0)
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: const Text('QUAY LẠI'),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Step> _buildSteps() {
    return [
      Step(
        title: const Text('Thông tin'),
        content: _buildStep1Content(),
        isActive: _currentStep >= 0,
        state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: const Text('Lên lịch'),
        content: _buildStep2Content(),
        isActive: _currentStep >= 1,
      ),
    ];
  }

  Widget _buildStep1Content() {
    return Form(
      key: formKeyStep1,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Tên Kế Hoạch'),
            validator:
                (value) =>
                    value == null || value.isEmpty
                        ? 'Vui lòng nhập tên kế hoạch'
                        : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: daysController,
            decoration: const InputDecoration(
              labelText: 'Số ngày tập (tối đa 30)',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              MaxValueInputFormatter(30),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập số ngày';
              }
              if (int.tryParse(value) == null || int.parse(value) <= 0) {
                return 'Số ngày phải lớn hơn 0';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ValueListenableBuilder<DateTime?>(
            valueListenable: startDateNotifier,
            builder: (context, startDate, child) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
                title: Text(
                  startDate == null
                      ? 'Chọn Ngày Bắt Đầu'
                      : 'Bắt đầu: ${DateFormat('dd/MM/yyyy').format(startDate)}',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (selectedDate != null) {
                    final dateOnly = DateTime(
                      selectedDate.year,
                      selectedDate.month,
                      selectedDate.day,
                    );
                    final isAvailable = await checkScheduleAvailability(
                      dateOnly.toUtc().toIso8601String(),
                    );
                    if (!isAvailable) {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: const Text('Lịch tập đã tồn tại'),
                              content: const Text(
                                'Ngày này đã có lịch tập. Vui lòng chọn ngày khác.',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                      );
                    } else {
                      startDateNotifier.value = dateOnly;
                      _updateEndDate(); // Cập nhật ngày kết thúc
                    }
                  }
                },
              );
            },
          ),
          const SizedBox(height: 16),
          ValueListenableBuilder<DateTime?>(
            valueListenable: endDateNotifier,
            builder: (context, endDate, child) {
              return Text(
                endDate == null
                    ? 'Ngày Kết Thúc: Chưa xác định'
                    : 'Kết thúc: ${DateFormat('dd/MM/yyyy').format(endDate)}',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStep2Content() {
    final days = int.tryParse(daysController.text) ?? 0;
    if (days <= 0 || startDateNotifier.value == null) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Hoàn thành Bước 1 để lên lịch chi tiết.',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    return Column(
      children: List.generate(days, (index) {
        final date = startDateNotifier.value!.add(Duration(days: index));
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ValueListenableBuilder<List<TrainingSchedule>>(
            valueListenable: trainingSchedulesNotifier,
            builder: (context, trainingSchedules, child) {
              final schedulesForDate =
                  trainingSchedules
                      .where((ts) => DateUtils.isSameDay(ts.date, date))
                      .toList();
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                leading: CircleAvatar(
                  backgroundColor:
                      schedulesForDate.isNotEmpty
                          ? Theme.of(
                            context,
                          ).colorScheme.secondary.withOpacity(0.1)
                          : Colors.grey.withOpacity(0.1),
                  child: Icon(
                    schedulesForDate.isNotEmpty
                        ? Icons.check_circle
                        : Icons.edit_calendar,
                    color:
                        schedulesForDate.isNotEmpty
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.grey,
                  ),
                ),
                title: Text(
                  'Ngày ${DateFormat('dd/MM/yyyy').format(date)}',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  schedulesForDate.isNotEmpty
                      ? '${schedulesForDate.length} buổi tập'
                      : 'Chưa có buổi tập',
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => TrainingScheduleListInDailyCreateScreen(
                            sportId: widget.sportId,
                            createBy: widget.createdBy,
                            trainingDate: date,
                            trainingSchedules: trainingSchedules,
                            trainingSchedulesNotifier:
                                trainingSchedulesNotifier,
                            exerciseNamesNotifier: exerciseNamesNotifier,
                            allDaysInPlan: getAllDaysInPlan(),
                          ),
                    ),
                  );
                  setState(() {}); // Rebuild để cập nhật subtitle
                },
              );
            },
          ),
        );
      }),
    );
  }
}
