import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AssignCoachDialog extends StatefulWidget {
  // THAY ĐỔI: Nhận vào cả object User của VĐV
  final User athlete;
  final CoachAthlete? currentCoachAthlete;
  final String sportName;
  const AssignCoachDialog({
    super.key,
    required this.athlete,
    this.currentCoachAthlete,
    required this.sportName,
  });

  @override
  State<AssignCoachDialog> createState() => _AssignCoachDialogState();
}

class _AssignCoachDialogState extends State<AssignCoachDialog> {
  @override
  void initState() {
    super.initState();
    // THAY ĐỔI: Dùng sportId của VĐV để lọc HLV
    context.read<UserBloc>().add(
      UserEvent.getAllUserCoachBySportId(
        widget.athlete.sportId,
        limit: 200, // Lấy nhiều HLV để tránh phân trang phức tạp trong dialog
      ),
    );
  }

  void _onAssignCoach(String coachId) {
    final coachAthleteBloc = context.read<CoachAthleteBloc>();
    if (widget.currentCoachAthlete != null) {
      final updatedRelation = widget.currentCoachAthlete!.copyWith(
        coachId: coachId,
      );
      coachAthleteBloc.add(
        CoachAthleteEvent.updateCoachAthlete(
          widget.currentCoachAthlete!.id!,
          updatedRelation,
        ),
      );
    } else {
      // ... (logic tạo mới giữ nguyên)
      final newRelation = CoachAthlete(
        id: null,
        coachId: coachId,
        athleteId: widget.athlete.id!,
        createdAt: null,
        updatedAt: null,
      );
      coachAthleteBloc.add(CoachAthleteEvent.createCoachAthlete(newRelation));
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.currentCoachAthlete != null
            ? 'Đổi Huấn Luyện Viên'
            : 'Gán Huấn Luyện Viên',
      ),
      content: SizedBox(
        width: 400,
        // THAY ĐỔI: Lắng nghe trạng thái LoadedUsers
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is User_Loading) {
              return const Center(child: CircularProgressIndicator());
            }
            // Chỉ hiển thị danh sách khi state là LoadedUsers và có user
            if (state is LoadedUsers) {
              if (state.users.isEmpty) {
                return Center(
                  child: Text(
                     "Không có Huấn luyện viên nào cho môn thể thao \"${widget.sportName}\".",
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final coach = state.users[index];
                  // Loại bỏ HLV hiện tại khỏi danh sách (nếu đang đổi)
                  if (coach.id == widget.currentCoachAthlete?.coachId) {
                    return Center(
                      child: Text(
                        "Không có Huấn luyện viên nào khác cho môn thể thao \"${widget.sportName}\".",
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(coach.fullName.substring(0, 1)),
                    ),
                    title: Text(coach.fullName),
                    subtitle: Text(coach.email),
                    onTap: () => _onAssignCoach(coach.id!),
                  );
                },
              );
            }
            if (state is User_Error) {
              return Center(child: Text("Lỗi: ${state.message}"));
            }
            return const Center(child: Text("Đang tải danh sách HLV..."));
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Hủy'),
        ),
      ],
    );
  }
}
