// lib/screens/app/coach/daily_schedule/daily_schedule_edit_screen.dart
// ignore_for_file: use_build_context_synchronously

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DailyScheduleEditScreen extends StatefulWidget {
  final DailySchedule dailySchedule;
  final String sportId;
  final DailyScheduleBloc dailyScheduleBloc;

  const DailyScheduleEditScreen({
    required this.dailySchedule,
    required this.sportId,
    required this.dailyScheduleBloc,
    super.key,
  });

  @override
  State<DailyScheduleEditScreen> createState() =>
      _DailyScheduleEditScreenState();
}

class _DailyScheduleEditScreenState extends State<DailyScheduleEditScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  DateTime? _startDate;
  DateTime? _endDate;
  List<DailySchedule> _otherSchedules = [];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.dailySchedule.name);
    _startDate = widget.dailySchedule.startDate;
    _endDate = widget.dailySchedule.endDate;
    // Lấy danh sách các kế hoạch khác để kiểm tra trùng lặp
    widget.dailyScheduleBloc.add(
      GetAllDailySchedulesByUserId(widget.dailySchedule.userId),
    );
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: (isStartDate ? _startDate : _endDate) ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  DateTime toDateOnly(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  bool _isOverlapping(
    DateTime start1,
    DateTime end1,
    DateTime start2,
    DateTime end2,
  ) {
    final s1 = toDateOnly(start1);
    final e1 = toDateOnly(end1);
    final s2 = toDateOnly(start2);
    final e2 = toDateOnly(end2);

    return s1.isBefore(e2) && s2.isBefore(e1);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate() &&
        _startDate != null &&
        _endDate != null) {
      if (_startDate!.isAfter(_endDate!)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Ngày bắt đầu không được sau ngày kết thúc'),
          ),
        );
        return;
      }

      // Kiểm tra trùng lặp với các kế hoạch khác
      for (final schedule in _otherSchedules) {
        // Bỏ qua kế hoạch đang chỉnh sửa
        if (schedule.id == widget.dailySchedule.id) continue;

        if (schedule.startDate != null &&
            schedule.endDate != null &&
            _isOverlapping(
              _startDate!,
              _endDate!.add(const Duration(days: 1)),
              schedule.startDate!,
              schedule.endDate!.add(const Duration(days: 1)),
            )) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Thời gian bị trùng với kế hoạch "${schedule.name}"',
              ),
            ),
          );
          return;
        }
      }

      final updatedSchedule = widget.dailySchedule.copyWith(
        name: _nameController.text,
        startDate: _startDate,
        endDate: _endDate,
      );

      widget.dailyScheduleBloc.add(
        UpdateDailySchedule(widget.dailySchedule.id!, updatedSchedule),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chỉnh Sửa Kế Hoạch',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocListener<DailyScheduleBloc, DailyScheduleState>(
        bloc: widget.dailyScheduleBloc,
        listener: (context, state) {
          if (state is LoadedAllDailySchedulesByUserId) {
            setState(() {
              _otherSchedules = state.schedules;
            });
          } else if (state is DailySchedule_Success) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
            // Tải lại danh sách trên màn hình trước đó và quay về
            context.read<DailyScheduleBloc>().add(
              GetAllDailySchedulesByUserId(widget.dailySchedule.userId),
            );
            Navigator.of(context).pop();
          } else if (state is DailySchedule_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Tên Kế Hoạch'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập tên kế hoạch';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text('Ngày Bắt Đầu'),
                  subtitle: Text(
                    _startDate == null
                        ? 'Chọn ngày'
                        : DateFormat('dd/MM/yyyy').format(_startDate!),
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () => _selectDate(context, true),
                ),
                const SizedBox(height: 12),
                ListTile(
                  title: const Text('Ngày Kết Thúc'),
                  subtitle: Text(
                    _endDate == null
                        ? 'Chọn ngày'
                        : DateFormat('dd/MM/yyyy').format(_endDate!),
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () => _selectDate(context, false),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Lưu Thay Đổi'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
