// lib/screens/app/coach/daily_schedule/apply_schedule_dialog.dart
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyScheduleDialog extends StatefulWidget {
  final List<DateTime> allDaysInPlan;
  final List<TrainingSchedule> existingSchedules;
  final TrainingSchedule sourceSchedule;

  const ApplyScheduleDialog({
    super.key,
    required this.allDaysInPlan,
    required this.existingSchedules,
    required this.sourceSchedule,
  });

  @override
  State<ApplyScheduleDialog> createState() => _ApplyScheduleDialogState();
}

class _ApplyScheduleDialogState extends State<ApplyScheduleDialog> {
  late final List<DateTime> _availableDays;
  final Set<DateTime> _selectedDays = {};

  @override
  void initState() {
    super.initState();
    _availableDays = _getAvailableDays();
  }

  List<DateTime> _getAvailableDays() {
    final scheduledDays =
        widget.existingSchedules.map((s) => DateUtils.dateOnly(s.date)).toSet();

    return widget.allDaysInPlan
        .where((day) => !scheduledDays.contains(DateUtils.dateOnly(day)))
        .toList();
  }

  void _submit() {
    if (_selectedDays.isEmpty) {
      Navigator.of(context).pop([]); // Trả về danh sách rỗng nếu không chọn
      return;
    }

    final newSchedules =
        _selectedDays.map((date) {
          return widget.sourceSchedule.copyWith(
            id: null,
            date: date,
            startTime:
                DateTime(
                  date.year,
                  date.month,
                  date.day,
                  widget.sourceSchedule.startTime.hour,
                  widget.sourceSchedule.startTime.minute,
                ).toUtc(),
            endTime:
                DateTime(
                  date.year,
                  date.month,
                  date.day,
                  widget.sourceSchedule.endTime.hour,
                  widget.sourceSchedule.endTime.minute,
                ).toUtc(),
            trainingExercises:
                widget.sourceSchedule.trainingExercises
                    .map((te) => te.copyWith(id: null, scheduleId: null))
                    .toList(),
          );
        }).toList();

    Navigator.of(context).pop(newSchedules);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Áp dụng cho các ngày",
        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child:
            _availableDays.isEmpty
                ? const Text("Tất cả các ngày khác đã có lịch tập.")
                : ListView.builder(
                  shrinkWrap: true,
                  itemCount: _availableDays.length,
                  itemBuilder: (context, index) {
                    final day = _availableDays[index];
                    final isSelected = _selectedDays.contains(day);
                    return CheckboxListTile(
                      title: Text(
                        DateFormat('EEEE, dd/MM/yyyy', 'vi_VN').format(day),
                      ),
                      value: isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            _selectedDays.add(day);
                          } else {
                            _selectedDays.remove(day);
                          }
                        });
                      },
                    );
                  },
                ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Hủy"),
        ),
        ElevatedButton(onPressed: _submit, child: const Text("Áp dụng")),
      ],
    );
  }
}
