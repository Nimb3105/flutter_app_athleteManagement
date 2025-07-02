// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/daily_schedule_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AthleteDetail extends StatelessWidget {
  final Athlete athlete;
  final String userId;
  final String? sportId;

  const AthleteDetail({
    super.key,
    required this.athlete,
    required this.userId,
    required this.sportId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  UserBloc(userRepository: RepositoryProvider.of(context))
                    ..add(GetUserById(athlete.userId)),
        ),
        BlocProvider(
          create:
              (context) =>
                  SportBloc(sportRepository: RepositoryProvider.of(context))
                    ..add(const GetAllSports()),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            if (userState is User_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (userState is LoadedMultipleUsers) {
              return AthleteDetailView(
                athlete: athlete,
                user: userState.users[athlete.userId]!,
                coachId: userId,
                sportId: sportId,
              );
            } else if (userState is User_Error) {
              return Center(child: Text('Lỗi: ${userState.message}'));
            }
            return const Center(child: Text('Đang khởi tạo...'));
          },
        ),
      ),
    );
  }
}

class AthleteDetailView extends StatelessWidget {
  final Athlete athlete;
  final User user;
  final String coachId;
  final String? sportId;

  const AthleteDetailView({
    super.key,
    required this.athlete,
    required this.user,
    required this.coachId,
    this.sportId,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250.0,
          pinned: true,
          stretch: true,
          backgroundColor: theme.colorScheme.primary,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              user.fullName.isEmpty ? 'Chưa cập nhật' : user.fullName,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            background: Hero(
              tag: 'athlete_${athlete.userId}',
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primary,
                          theme.colorScheme.primary.withOpacity(0.7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: Text(
                        user.fullName.isNotEmpty
                            ? user.fullName[0].toUpperCase()
                            : '?',
                        style: GoogleFonts.poppins(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle(
                  'Thông tin cá nhân',
                  Icons.person_outline_rounded,
                ),
                const SizedBox(height: 16),
                _buildInfoCard(
                  children: [
                    _buildDetailItem(
                      'Email',
                      user.email.isEmpty ? 'Chưa cập nhật' : user.email,
                      Icons.email_outlined,
                    ),
                    _buildDetailItem(
                      'Số điện thoại',
                      user.phoneNumber.isEmpty
                          ? 'Chưa cập nhật'
                          : user.phoneNumber,
                      Icons.phone_outlined,
                    ),
                    _buildDetailItem(
                      'Giới tính',
                      user.gender.isEmpty ? 'Chưa cập nhật' : user.gender,
                      Icons.wc_outlined,
                    ),
                    _buildDetailItem(
                      'Tuổi',
                      // ignore: unnecessary_null_comparison
                      user.dateOfBirth != null
                          ? '${DateTime.now().year - user.dateOfBirth.year} tuổi'
                          : 'Chưa cập nhật',
                      Icons.cake_outlined,
                      isLast: true,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildSectionTitle(
                  'Thông tin chuyên môn',
                  Icons.fitness_center_rounded,
                ),
                const SizedBox(height: 16),
                _buildInfoCard(
                  children: [
                    _buildDetailItem(
                      'Loại VĐV',
                      athlete.athleteType.isEmpty
                          ? 'Chưa cập nhật'
                          : athlete.athleteType,
                      Icons.shield_outlined,
                    ),
                    _buildDetailItem(
                      'Trạng thái',
                      user.status.isEmpty ? 'Chưa cập nhật' : user.status,
                      Icons.check_circle_outline,
                      isLast: true,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildSectionTitle(
                  'Môn thể thao',
                  Icons.sports_basketball_outlined,
                ),
                const SizedBox(height: 16),
                _buildSportSection(),
                const SizedBox(height: 24),
                _buildActions(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600]),
        const SizedBox(width: 12),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildInfoCard({required List<Widget> children}) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Column(children: children),
    );
  }

  Widget _buildDetailItem(
    String title,
    String value,
    IconData icon, {
    bool isLast = false,
  }) {
    final isNotUpdated = value.contains('Chưa cập nhật');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border:
            isLast
                ? null
                : Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 22, color: Colors.grey[500]),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: isNotUpdated ? Colors.grey[400] : Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSportSection() {
    return BlocBuilder<SportBloc, SportState>(
      builder: (context, sportState) {
        if (sportState is Sport_Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (sportState is LoadedSports) {
          final sport = sportState.sports.firstWhere(
            (s) => s.id == user.sportId,
            orElse:
                () => Sport(
                  id: '',
                  name: 'Chưa cập nhật',
                  createdAt: null,
                  updatedAt: null,
                ),
          );
          return _buildInfoCard(
            children: [
              _buildDetailItem(
                'Môn thi đấu',
                sport.name,
                Icons.emoji_events_outlined,
                isLast: true,
              ),
            ],
          );
        }
        return _buildInfoCard(
          children: [
            _buildDetailItem(
              'Môn thi đấu',
              'Lỗi tải dữ liệu',
              Icons.error_outline,
              isLast: true,
            ),
          ],
        );
      },
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => DailyScheduleListScreen(
                      createdBy: coachId,
                      userId: athlete.userId,
                      sportId: sportId,
                    ),
              ),
            );
          },
          icon: const Icon(Icons.calendar_today_rounded),
          label: const Text('Xem Lịch Tập Luyện'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
