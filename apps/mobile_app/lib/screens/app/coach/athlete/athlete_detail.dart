// lib/screens/app/coach/athleteFromCoach/athlete_detail.dart

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/daily_schedule/daily_schedule_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class AthleteDetail extends StatefulWidget {
  final Athlete athlete;
  final String userId; // Đây là coachId
  final String? sportId;

  const AthleteDetail({
    super.key,
    required this.athlete,
    required this.userId,
    this.sportId,
  });

  @override
  State<AthleteDetail> createState() => _AthleteDetailState();
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
                      '${DateTime.now().year - user.dateOfBirth.year} tuổi',
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
        } else if (sportState is LoadedSport) {
          final sportName = sportState.sport?.name ?? 'Chưa cập nhật';
          return _buildInfoCard(
            children: [
              _buildDetailItem(
                'Môn thi đấu',
                sportName,
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
                    (_) => DailyScheduleListScreen(
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


class _AthleteDetailState extends State<AthleteDetail> {
  @override
  void initState() {
    super.initState();
    // ✅ Gọi các sự kiện để tải dữ liệu cần thiết cho màn hình này
    context.read<UserBloc>().add(GetUserById(widget.athlete.userId));
    if (widget.sportId != null) {
      context.read<SportBloc>().add(SportEvent.getSportById(widget.sportId!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        if (userState is User_Initial || userState is User_Loading) {
            return const _AthleteDetailPlaceholder(); // ✅ Hiển thị placeholder khi đang tải
        }
        
        if (userState is LoadedMultipleUsers) {
          final user = userState.users[widget.athlete.userId];
          if (user != null) {
            return AthleteDetailView(
              athlete: widget.athlete,
              user: user,
              coachId: widget.userId,
              sportId: widget.sportId,
            );
          }
        }
        
        if (userState is User_Error) {
          return Scaffold(appBar: AppBar(), body: Center(child: Text('Lỗi: ${userState.message}')));
        }
        
        // Trạng thái dự phòng
        return const _AthleteDetailPlaceholder();
      },
    );
  }
}
// ✅ TỐI ƯU HÓA: Widget placeholder cho toàn bộ màn hình chi tiết
class _AthleteDetailPlaceholder extends StatelessWidget {
  const _AthleteDetailPlaceholder();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250.0,
              pinned: true,
              backgroundColor: theme.colorScheme.primary,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: Colors.white),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPlaceholderRow(width: 200),
                    const SizedBox(height: 16),
                    _buildPlaceholderCard(itemCount: 4),
                    const SizedBox(height: 24),
                    _buildPlaceholderRow(width: 220),
                    const SizedBox(height: 16),
                    _buildPlaceholderCard(itemCount: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderRow({double width = 100}) {
    return Container(
      width: width,
      height: 20.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildPlaceholderCard({required int itemCount}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: List.generate(itemCount, (index) => Padding(
          padding: EdgeInsets.only(bottom: index == itemCount - 1 ? 0 : 16.0),
          child: _buildPlaceholderRow(width: double.infinity),
        )),
      ),
    );
  }
}