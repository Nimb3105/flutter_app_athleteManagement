// lib/screens/app/coach/coach_detail_screen.dart

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart'; // Thêm package shimmer để tạo hiệu ứng tải

class CoachDetailScreen extends StatefulWidget {
  final String coachId;
  final String sportId;

  const CoachDetailScreen({
    super.key,
    required this.coachId,
    required this.sportId,
  });

  @override
  State<CoachDetailScreen> createState() => _CoachDetailScreenState();
}

class _CoachDetailScreenState extends State<CoachDetailScreen> {
  @override
  void initState() {
    super.initState();
    _reloadData();
  }

  // ✅ Tối ưu: Gom logic tải/làm mới dữ liệu vào một hàm
  void _reloadData() {
    context.read<UserBloc>().add(UserEvent.getUserById(widget.coachId));
    context.read<CoachBloc>().add(CoachEvent.getCoachByUserId(widget.coachId));
    context.read<SportBloc>().add(SportEvent.getSportById(widget.sportId));
    context
        .read<CoachCertificationBloc>()
        .add(CoachCertificationEvent.getCoachCertificationByUserId(widget.coachId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is User_Success &&
            state.message == 'Đăng xuất thành công') {
          Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
            '/login',
            (Route<dynamic> route) => false,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tài khoản'),
          actions: [
            IconButton(
              tooltip: 'Đăng xuất',
              icon: const Icon(Icons.logout),
              onPressed: () => _showLogoutDialog(context),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async => _reloadData(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildCoachInfoCard(),
                const SizedBox(height: 24),
                _buildCertificationsSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận đăng xuất'),
          content: const Text('Bạn có chắc chắn muốn đăng xuất không?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: const Text('Đăng xuất'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
                context.read<UserBloc>().add(const UserEvent.logout());
              },
            ),
          ],
        );
      },
    );
  }

  // Widget _buildCoachInfoCard đã được tối ưu
  Widget _buildCoachInfoCard() {
    return Card(
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            if (userState is User_Initial || (userState is User_Loading && (userState is! LoadedMultipleUsers ))) {
              return const _CoachInfoPlaceholder(); // ✅ Hiển thị placeholder khi đang tải
            }
            if (userState is LoadedMultipleUsers) {
              final user = userState.users[widget.coachId];
              final error = userState.errors[widget.coachId];
              
              if (error != null) {
                return Center(child: Text("Lỗi tải thông tin HLV: $error"));
              }
              if (user != null) {
                return _buildUserDetails(context, user);
              }
            }
            if(userState is User_Error) {
              return Center(child: Text("Lỗi: ${userState.message}"));
            }
            return const _CoachInfoPlaceholder(); // Fallback to placeholder
          },
        ),
      ),
    );
  }

Widget _buildUserDetails(BuildContext context, User user) {
    final formatDatee = DateFormat("dd/MM/yyyy");
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(user.imageUrl),
          onBackgroundImageError: (_, _) => const Icon(Icons.person, size: 50),
        ),
        const SizedBox(height: 16),
        Text(
          user.fullName,
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 16),
        BlocBuilder<CoachBloc, CoachState>(
          builder: (context, coachState) {
            if (coachState is LoadedCoach) {
              return Column(
                children: [
                  _buildInfoRow(
                    icon: Icons.star_border_rounded,
                    label: 'Kinh nghiệm',
                    value: coachState.coach.experience,
                  ),
                  const SizedBox(height: 12),
                  _buildInfoRow(
                    icon: Icons.leaderboard_outlined,
                    label: 'Cấp độ',
                    value: coachState.coach.level,
                  ),
                ],
              );
            }
            return const CircularProgressIndicator(strokeWidth: 2.0);
          },
        ),
        const SizedBox(height: 12),
        BlocBuilder<SportBloc, SportState>(
          builder: (context, sportState) {
            if (sportState is LoadedSport) {
              return _buildInfoRow(
                icon: Icons.sports_soccer_outlined,
                label: 'Môn thể thao',
                value: sportState.sport?.name ?? 'N/A',
              );
            }
            return const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(strokeWidth: 2.0),
            );
          },
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          icon: Icons.email_outlined,
          label: 'Email',
          value: user.email,
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          icon: Icons.phone_outlined,
          label: 'Điện thoại',
          value: user.phoneNumber,
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          icon: Icons.cake_outlined,
          label: 'Ngày sinh',
          value: formatDatee.format(user.dateOfBirth.toLocal()),
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          icon: Icons.person_outline,
          label: 'Giới tính',
          value: user.gender,
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          icon: Icons.verified_user_outlined,
          label: 'Vai trò',
          value: user.role,
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildCertificationsSection(BuildContext context) {
    final formatDate = DateFormat("dd/MM/yyyy");
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chứng chỉ",
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        BlocBuilder<CoachCertificationBloc, CoachCertificationState>(
          builder: (context, state) {
            if (state is CoachCertification_Loading ||
                state is CoachCertification_Initial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedCoachCertifications) {
              if (state.certifications.isEmpty) {
                return const Center(
                  child: Text(
                    "Không có chứng chỉ nào.",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.certifications.length,
                itemBuilder: (context, index) {
                  final cert = state.certifications[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user_outlined,
                        color: theme.colorScheme.primary,
                      ),
                      title: Text(
                        cert.name,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        'Cấp ngày: ${formatDate.format(cert.dateIssued.toLocal())}',
                      ),
                    ),
                  );
                },
              );
            } else if (state is CoachCertification_Error) {
              return Center(child: Text("Lỗi tải chứng chỉ: ${state.message}"));
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.grey.shade600),
        const SizedBox(width: 16),
        Text(
          '$label:',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
  // ... (Các widget _buildUserDetails, _buildCertificationsSection, _buildInfoRow được giữ nguyên)
  // ... (Bạn có thể sao chép chúng từ file gốc của bạn)
}

// ✅ Tối ưu: Widget placeholder cho thông tin HLV
class _CoachInfoPlaceholder extends StatelessWidget {
  const _CoachInfoPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          const CircleAvatar(radius: 50, backgroundColor: Colors.white),
          const SizedBox(height: 16),
          Container(width: 200, height: 24, color: Colors.white),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          _buildPlaceholderInfoRow(),
          const SizedBox(height: 12),
          _buildPlaceholderInfoRow(),
          const SizedBox(height: 12),
          _buildPlaceholderInfoRow(),
        ],
      ),
    );
  }

  Widget _buildPlaceholderInfoRow() {
    return Row(
      children: [
        Container(width: 20, height: 20, color: Colors.white),
        const SizedBox(width: 16),
        Container(width: 100, height: 16, color: Colors.white),
      ],
    );
  }
}