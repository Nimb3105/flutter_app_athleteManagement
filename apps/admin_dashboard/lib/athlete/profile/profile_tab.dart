import 'package:admin_dashboard/athlete/athleteCoach/assign_coach_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileTab extends StatelessWidget {
  final User athlete;
  const ProfileTab({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    context.read<CoachAthleteBloc>().add(
      CoachAthleteEvent.getByAthleteId(athlete.id!),
    );
    context.read<SportBloc>().add(SportEvent.getSportById(athlete.sportId));
    return BlocListener<CoachAthleteBloc, CoachAthleteState>(
      listener: (context, state) {
        // Sau khi tạo mối quan hệ thành công, tải lại thông tin HLV
        if (state is LoadedCoachAthlete && state.coachAthlete != null) {
          // Lấy thông tin chi tiết của User (là HLV)
          context.read<UserBloc>().add(
            UserEvent.getUserById(state.coachAthlete!.coachId),
          );
        }
        if (state is CoachAthlete_Success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
          // Tải lại thông tin
          context.read<CoachAthleteBloc>().add(
            CoachAthleteEvent.getByAthleteId(athlete.id!),
          );
        }
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // ... (Phần CircleAvatar và InfoCard giữ nguyên)
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    athlete.imageUrl.isNotEmpty
                        ? NetworkImage(athlete.imageUrl)
                        : null,
                child:
                    athlete.imageUrl.isEmpty
                        ? const Icon(Icons.person, size: 60)
                        : null,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              athlete.fullName,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            _buildInfoCard(context),
            const SizedBox(height: 24),
            _buildAthleteSpecificInfo(),
            const SizedBox(height: 24),
            _buildCoachInfoSection(context),
          ],
        ),
      ),
    );
  }

  // BỎ NÚT SỬA RA KHỎI WIDGET NÀY
  Widget _buildInfoCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Thông tin cá nhân",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            _buildInfoRow(Icons.badge_outlined, 'Họ và tên', athlete.fullName),
            _buildInfoRow(Icons.email_outlined, 'Email', athlete.email),
            _buildInfoRow(
              Icons.phone_outlined,
              'Số điện thoại',
              athlete.phoneNumber,
            ),
            _buildInfoRow(
              Icons.cake_outlined,
              'Ngày sinh',
              DateFormat('dd/MM/yyyy').format(athlete.dateOfBirth.toLocal()),
            ),
            _buildInfoRow(
              Icons.transgender_outlined,
              'Giới tính',
              athlete.gender,
            ),

            _buildInfoRow(
              Icons.check_circle_outline,
              'Trạng thái',
              athlete.status.isNotEmpty ? athlete.status : 'Hoạt động',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAthleteSpecificInfo() {
    return BlocBuilder<AthleteBloc, AthleteState>(
      builder: (context, state) {
        if (state is LoadedAthlete) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Thông tin chuyên môn",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  BlocBuilder<SportBloc, SportState>(
                    builder: (context, state) {
                      if (state is LoadedSport && state.sport != null) {
                        return _buildInfoRow(
                          Icons.sports_soccer_outlined,
                          'Môn thể thao',
                          state.sport!.name,
                        );
                      }
                      return _buildInfoRow(
                        Icons.sports_soccer_outlined,
                        'Môn thể thao',
                        'Đang tải...',
                      );
                    },
                  ),
                  _buildInfoRow(
                    Icons.star_outline,
                    'Loại VĐV',
                    state.athlete.athleteType,
                  ),
                ],
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildCoachInfoSection(BuildContext context) {
    return BlocBuilder<SportBloc, SportState>(
      builder: (context, sportState) {
        // Lấy tên môn thể thao, có thể là rỗng nếu chưa tải xong
        final sportName =
            (sportState is LoadedSport && sportState.sport != null)
                ? sportState.sport!.name
                : '...';

        return BlocBuilder<CoachAthleteBloc, CoachAthleteState>(
          builder: (context, coachAthleteState) {
            if (coachAthleteState is CoachAthlete_Loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (coachAthleteState is LoadedCoachAthlete) {
              // TRƯỜNG HỢP 1: VĐV CHƯA CÓ HLV
              if (coachAthleteState.coachAthlete == null) {
                return Card(
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(Icons.person_add_alt_1_outlined),
                    title: const Text("Chưa có HLV phụ trách"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (_) => MultiBlocProvider(
                                providers: [
                                  BlocProvider<UserBloc>(
                                    create:
                                        (dialogContext) => UserBloc(
                                          userRepository:
                                              context.read<UserRepository>(),
                                        ),
                                  ),
                                  BlocProvider.value(
                                    value: context.read<CoachAthleteBloc>(),
                                  ),
                                ],
                                // Truyền sportName đã lấy được vào dialog
                                child: AssignCoachDialog(
                                  athlete: athlete,
                                  sportName: sportName,
                                ),
                              ),
                        );
                      },
                      child: const Text("Gán HLV"),
                    ),
                  ),
                );
              }

              // TRƯỜNG HỢP 2: VĐV ĐÃ CÓ HLV
              final coachId = coachAthleteState.coachAthlete!.coachId;
              // Sử dụng BlocBuilder để lấy thông tin User của HLV
              return BlocBuilder<UserBloc, UserState>(
                builder: (context, userState) {
                  // Kiểm tra đúng trạng thái và user coach có trong map không
                  if (userState is LoadedMultipleUsers &&
                      userState.users.containsKey(coachId)) {
                    final coachUser = userState.users[coachId]!;
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Huấn luyện viên phụ trách",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    coachUser.imageUrl.isNotEmpty
                                        ? NetworkImage(coachUser.imageUrl)
                                        : null,
                                child:
                                    coachUser.imageUrl.isEmpty
                                        ? const Icon(Icons.person)
                                        : null,
                              ),
                              title: Text(
                                coachUser.fullName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(coachUser.email),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.change_circle_outlined,
                                  color: Colors.orange,
                                ),
                                tooltip: 'Đổi HLV',
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder:
                                        (_) => MultiBlocProvider(
                                          providers: [
                                            BlocProvider<UserBloc>(
                                              create:
                                                  (dialogContext) => UserBloc(
                                                    userRepository:
                                                        context
                                                            .read<
                                                              UserRepository
                                                            >(),
                                                  ),
                                            ),
                                            BlocProvider.value(
                                              value:
                                                  context
                                                      .read<CoachAthleteBloc>(),
                                            ),
                                          ],
                                          // Truyền sportName đã lấy được vào dialog
                                          child: AssignCoachDialog(
                                            athlete: athlete,
                                            currentCoachAthlete:
                                                coachAthleteState.coachAthlete,
                                            sportName: sportName,
                                          ),
                                        ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  // Nếu chưa có thông tin HLV, hiển thị loading
                  return const Center(child: CircularProgressIndicator());
                },
              );
            }
            // Trạng thái mặc định hoặc lỗi
            return Card(
              child: ListTile(title: Text("Đang tải thông tin HLV...")),
            );
          },
        );
      },
    );
  }

  // ... (Hàm _buildInfoRow giữ nguyên)
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey[600], size: 20),
          const SizedBox(width: 16),
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
