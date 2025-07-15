import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CoachProfileTab extends StatelessWidget {
  final User coach;

  const CoachProfileTab({super.key, required this.coach});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage:
                  coach.imageUrl.isNotEmpty
                      ? NetworkImage(coach.imageUrl)
                      : null,
              child:
                  coach.imageUrl.isEmpty
                      ? const Icon(Icons.person, size: 60)
                      : null,
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              coach.fullName,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          _buildInfoCard(
            context,
            "Thông tin cá nhân",
            _buildPersonalInfoRows(),
          ),
          const SizedBox(height: 24),
          _buildInfoCard(
            context,
            "Thông tin chuyên môn",
            _buildProfessionalInfoRows(context),
          ),
          const SizedBox(height: 24),
          _buildInfoCard(
            context,
            "Chứng chỉ",
            _buildCertificationsList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, Widget content) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildPersonalInfoRows() {
    return Column(
      children: [
        _buildInfoRow(Icons.badge_outlined, 'Họ và tên', coach.fullName),
        _buildInfoRow(Icons.email_outlined, 'Email', coach.email),
        _buildInfoRow(Icons.phone_outlined, 'Số điện thoại', coach.phoneNumber),
        _buildInfoRow(
          Icons.cake_outlined,
          'Ngày sinh',
          DateFormat('dd/MM/yyyy').format(coach.dateOfBirth.toLocal()),
        ),
        _buildInfoRow(Icons.transgender_outlined, 'Giới tính', coach.gender),
        _buildInfoRow(
          Icons.check_circle_outline,
          'Trạng thái',
          coach.status.isNotEmpty ? coach.status : 'Hoạt động',
        ),
      ],
    );
  }

  Widget _buildProfessionalInfoRows(BuildContext context) {
    return Column(
      children: [
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
        BlocBuilder<CoachBloc, CoachState>(
          builder: (context, state) {
            if (state is LoadedCoach) {
              return Column(
                children: [
                  _buildInfoRow(
                    Icons.work_history_outlined,
                    'Kinh nghiệm',
                    state.coach.experience,
                  ),
                  _buildInfoRow(
                    Icons.star_outline,
                    'Cấp độ',
                    state.coach.level,
                  ),
                ],
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ],
    );
  }

  Widget _buildCertificationsList(BuildContext context) {
    return BlocBuilder<CoachCertificationBloc, CoachCertificationState>(
      builder: (context, state) {
        if (state is LoadedCoachCertifications) {
          if (state.certifications.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Chưa có chứng chỉ nào.'),
              ),
            );
          }
          return Column(
            children:
                state.certifications
                    .map(
                      (cert) => _buildInfoRow(
                        Icons.school_outlined,
                        cert.name,
                        'Ngày cấp: ${DateFormat('dd/MM/yyyy').format(cert.dateIssued)}',
                      ),
                    )
                    .toList(),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

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
