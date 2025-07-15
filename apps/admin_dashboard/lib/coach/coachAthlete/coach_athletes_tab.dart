// ignore_for_file: use_build_context_synchronously

import 'package:admin_dashboard/coach/coachAthlete/assign_athlete_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CoachAthletesTab extends StatefulWidget {
  final User coach;
  const CoachAthletesTab({super.key, required this.coach});

  @override
  State<CoachAthletesTab> createState() => _CoachAthletesTabState();
}

class _CoachAthletesTabState extends State<CoachAthletesTab> {
  void _showAssignAthleteDialog() {
    showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        // Cung cấp các BLoC cần thiết cho dialog
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: context.read<UserBloc>()),
            BlocProvider.value(value: context.read<CoachAthleteBloc>()),
          ],
          child: AssignAthleteDialog(
            coachId: widget.coach.id!,
            sportId: widget.coach.sportId,
          ),
        );
      },
    ).then((success) {
      // Nếu gán thành công (dialog trả về true), tải lại danh sách
      if (success == true) {
        context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(widget.coach.id!),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Gán vận động viên thành công!'),
            backgroundColor: Colors.green,
          ),
        );
      }
    });
  }

  void _showDeleteConfirmationDialog(
    BuildContext context,
    CoachAthlete assignment,
  ) {
    final currentState = context.read<CoachAthleteBloc>().state;
    String athleteName = 'vận động viên này'; // Giá trị mặc định

    if (currentState is LoadedCoachAthletes) {
      athleteName =
          currentState.userMap[assignment.athleteId]?.fullName ??
          'vận động viên này';
    }

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận xóa'),
          content: Text(
            'Bạn có chắc chắn muốn xóa $athleteName khỏi danh sách quản lý không?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Xóa'),
              onPressed: () {
                context.read<CoachAthleteBloc>().add(
                  CoachAthleteEvent.deleteCoachAthlete(assignment.id!),
                );
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CoachAthleteBloc, CoachAthleteState>(
        listener: (context, state) {
          if (state is CoachAthlete_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.green,
              ),
            );
            // Tải lại danh sách sau khi xóa thành công
            context.read<CoachAthleteBloc>().add(
              CoachAthleteEvent.getAllByCoachId(widget.coach.id!),
            );
          } else if (state is CoachAthlete_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<CoachAthleteBloc, CoachAthleteState>(
          builder: (context, state) {
            if (state is CoachAthlete_Loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is LoadedCoachAthletes) {
              if (state.coachAthletes.isEmpty) {
                return const Center(child: Text('Chưa có vận động viên nào.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: state.coachAthletes.length,
                itemBuilder: (context, index) {
                  final assignment = state.coachAthletes[index];
                  final athlete = state.userMap[assignment.athleteId];
                  final sport = state.sportMap[athlete?.sportId];

                  if (athlete == null) {
                    return const ListTile(
                      title: Text('Vận động viên không tồn tại'),
                    );
                  }

                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
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
                      subtitle: Text(sport?.name ?? 'Chưa rõ môn'),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                        onPressed:
                            () => _showDeleteConfirmationDialog(
                              context,
                              assignment,
                            ),
                      ),
                    ),
                  );
                },
              );
            }
            if (state is CoachAthlete_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAssignAthleteDialog,
        tooltip: 'Gán Vận động viên',
        child: const Icon(Icons.add),
      ),
    );
  }
}
