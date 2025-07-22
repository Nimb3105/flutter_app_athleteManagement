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
  final Set<DateTime> _selectedDays = {};
  late final Set<DateTime> _scheduledDays;

  @override
  void initState() {
    super.initState();
    // Xác định những ngày đã có lịch để hiển thị cảnh báo
    _scheduledDays =
        widget.existingSchedules.map((s) => DateUtils.dateOnly(s.date)).toSet();
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
            widget.allDaysInPlan.isEmpty
                ? const Text("Không có ngày nào trong kế hoạch để áp dụng.")
                : ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.allDaysInPlan.length,
                  itemBuilder: (context, index) {
                    final day = widget.allDaysInPlan[index];
                    final isSelected = _selectedDays.contains(day);
                    final alreadyScheduled = _scheduledDays.contains(
                      DateUtils.dateOnly(day),
                    );

                    return CheckboxListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              DateFormat(
                                'EEEE, dd/MM/yyyy',
                                'vi_VN',
                              ).format(day),
                            ),
                          ),
                          if (alreadyScheduled)
                            const Tooltip(
                              message: 'Ngày này đã có lịch tập',
                              child: Icon(
                                Icons.warning_amber_rounded,
                                color: Colors.orange,
                                size: 20,
                              ),
                            ),
                        ],
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
