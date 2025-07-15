import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AssignAthleteDialog extends StatefulWidget {
  final String coachId;
  final String sportId;

  const AssignAthleteDialog({
    super.key,
    required this.coachId,
    required this.sportId,
  });

  @override
  State<AssignAthleteDialog> createState() => _AssignAthleteDialogState();
}

class _AssignAthleteDialogState extends State<AssignAthleteDialog> {
  @override
  void initState() {
    super.initState();
    // Lấy danh sách VĐV chưa được gán và cùng môn thể thao
    context.read<UserBloc>().add(
      UserEvent.getUnassignedAthletes(widget.sportId),
    );
  }

  void _onAssign(String athleteId) {
    final newAssignment = CoachAthlete(
      id: '', // ID sẽ được tạo bởi backend
      coachId: widget.coachId,
      athleteId: athleteId,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    // Gọi BLoC để tạo mối quan hệ
    context.read<CoachAthleteBloc>().add(
      CoachAthleteEvent.createCoachAthlete(newAssignment),
    );

    // Đóng dialog và trả về true để báo hiệu thành công
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      // Lắng nghe lỗi tại đây để hiển thị thông báo chính xác
      listener: (context, state) {
        if (state is User_Error) {
          // Đóng dialog hiện tại trước khi hiển thị lỗi
          Navigator.of(context).pop();
          // Hiển thị một dialog lỗi mới, rõ ràng hơn
          showDialog(
            context: context,
            builder:
                (errorContext) => AlertDialog(
                  title: const Text('Tải thất bại'),
                  content: Text(
                    'Không thể tải danh sách vận động viên. Vui lòng kiểm tra lại API.\n\nChi tiết: ${state.message}',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(errorContext).pop(),
                      child: const Text('Đã hiểu'),
                    ),
                  ],
                ),
          );
        }
      },
      child: AlertDialog(
        title: const Text('Gán vận động viên'),
        content: SizedBox(
          width: double.maxFinite,
          height: 400,
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is User_Loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is LoadedMultipleUsers) {
                final athletes = state.users.values.toList();
                if (athletes.isEmpty) {
                  return const Center(
                    child: Text('Không có vận động viên nào phù hợp.'),
                  );
                }
                return ListView.builder(
                  itemCount: athletes.length,
                  itemBuilder: (context, index) {
                    final athlete = athletes[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            athlete.imageUrl.isNotEmpty
                                ? NetworkImage(athlete.imageUrl)
                                : null,
                        child:
                            athlete.imageUrl.isEmpty
                                ? const Icon(Icons.person)
                                : null,
                      ),
                      title: Text(athlete.fullName),
                      subtitle: Text(athlete.email),
                      trailing: ElevatedButton(
                        child: const Text('Gán'),
                        onPressed: () => _onAssign(athlete.id!),
                      ),
                    );
                  },
                );
              }
              // Trạng thái mặc định hoặc đang chờ
              return const Center(
                child: Text('Đang tải danh sách vận động viên...'),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Hủy'),
          ),
        ],
      ),
    );
  }
}
