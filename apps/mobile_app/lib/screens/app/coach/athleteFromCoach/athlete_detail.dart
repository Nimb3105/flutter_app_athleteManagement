import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/nutrition_plan/nutrition_plan_list_screen.dart';
import 'package:mobile_app/screens/app/coach/training/training_schedule_user_screen.dart';

class AthleteDetail extends StatelessWidget {
  final Athlete athlete;
  final String userId;

  const AthleteDetail({super.key, required this.athlete, required this.userId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(userRepository: RepositoryProvider.of(context))
            ..add(GetUserById(athlete.userId)),
        ),
        BlocProvider(
          create: (context) => SportBloc(sportRepository: RepositoryProvider.of(context))
            ..add(const GetAllSports()),
        ),
        BlocProvider(
          create: (context) => NutritionPlanBloc(
            nutritionPlanRepository: RepositoryProvider.of(context),
          )..add(
              NutritionPlanEvent.getNutritionPlansByUserId(athlete.userId),
            ),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: _buildAppBar(context),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            if (userState is User_Loading) {
              return _buildLoadingState();
            } else if (userState is LoadedMultipleUsers) {
              return AthleteDetailView(
                athlete: athlete,
                user: userState.users[athlete.userId]!,
              );
            } else if (userState is User_Error) {
              return _buildErrorState(context, userState.message);
            }
            return _buildInitialState();
          },
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Colors.white,
      title: const Text(
        'Chi tiết Vận Động Viên',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'Thêm tùy chọn',
          onPressed: () => _showOptionsMenu(context),
        ),
      ],
    );
  }

  Widget _buildLoadingState() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text(
            'Đang tải thông tin vận động viên...',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red[50],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Oops! Có lỗi xảy ra',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.read<UserBloc>().add(GetUserById(athlete.userId));
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Thử lại'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialState() {
    return const Center(
      child: Text(
        'Đang khởi tạo...',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => _showQuickActions(context),
      icon: const Icon(Icons.quick_contacts_dialer),
      label: const Text('Hành động nhanh'),
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }

  void _showQuickActions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickActionItem(
                  context,
                  Icons.dining,
                  'Dinh dưỡng',
                  () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NutritionPlanListScreen(athlete: athlete),
                      ),
                    );
                  },
                ),
                _buildQuickActionItem(
                  context,
                  Icons.fitness_center,
                  'Tập luyện',
                  () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrainingScheduleUserScreen(
                          athlete: athlete,
                          createBy: userId,
                        ),
                      ),
                    );
                  },
                ),
                _buildQuickActionItem(
                  context,
                  Icons.assessment,
                  'Báo cáo',
                  () {
                    Navigator.pop(context);
                    _showFeatureComingSoon(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionItem(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  void _showOptionsMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext modalContext) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Tùy chọn',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildOptionTile(
                context: modalContext,
                icon: Icons.dining,
                title: 'Kế hoạch dinh dưỡng',
                subtitle: 'Quản lý chế độ ăn uống',
                onTap: () {
                  Navigator.pop(modalContext);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NutritionPlanListScreen(athlete: athlete),
                    ),
                  );
                },
              ),
              _buildOptionTile(
                context: modalContext,
                icon: Icons.fitness_center,
                title: 'Lịch tập luyện',
                subtitle: 'Xem và quản lý lịch tập',
                onTap: () {
                  Navigator.pop(modalContext);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrainingScheduleUserScreen(
                        athlete: athlete,
                        createBy: userId,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOptionTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[50],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey[400],
        ),
        onTap: onTap,
      ),
    );
  }

  void _showFeatureComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(width: 8),
            Text('Tính năng đang phát triển'),
          ],
        ),
        backgroundColor: Colors.orange[600],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

class AthleteDetailView extends StatelessWidget {
  final Athlete athlete;
  final User user;

  const AthleteDetailView({
    super.key,
    required this.athlete,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<UserBloc>().add(GetUserById(athlete.userId));
        context.read<SportBloc>().add(const GetAllSports());
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildHeader(context)),
          SliverToBoxAdapter(child: _buildStatsCards(context)),
          SliverToBoxAdapter(child: _buildPersonalInfo(context)),
          SliverToBoxAdapter(child: _buildSportsSection(context)),
          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          ), // Space for FAB
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.primary,
            // ignore: deprecated_member_use
            Theme.of(context).colorScheme.primary.withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Hero(
              tag: 'athlete_${athlete.userId}',
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 48,
                    // ignore: deprecated_member_use
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: Text(
                      user.fullName.isNotEmpty
                          ? user.fullName[0].toUpperCase()
                          : '?',
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              user.fullName.isEmpty ? 'Chưa cập nhật' : user.fullName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                // ignore: deprecated_member_use
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Text(
                athlete.athleteType.isEmpty
                    ? 'Chưa phân loại'
                    : athlete.athleteType,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsCards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: _buildStatCard(
              context,
              'Trạng thái',
              user.status.isEmpty ? 'N/A' : user.status,
              Icons.check_circle_outline,
              Colors.green,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _buildStatCard(
              context,
              'Giới tính',
              user.gender.isEmpty ? 'N/A' : user.gender,
              Icons.person_outline,
              Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalInfo(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Thông tin cá nhân',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          _buildDetailItem(
            context,
            'Số điện thoại',
            user.phoneNumber.isEmpty ? 'Chưa cập nhật' : user.phoneNumber,
            Icons.phone_outlined,
          ),
          _buildDetailItem(
            context,
            'Email',
            user.email.isEmpty ? 'Chưa cập nhật' : user.email,
            Icons.email_outlined,
          ),
          _buildDetailItem(
            context,
            'Tuổi',
            // ignore: unnecessary_null_comparison
            user.dateOfBirth != null
                ? '${DateTime.now().year - user.dateOfBirth.year} tuổi'
                : 'Chưa cập nhật',
            Icons.emoji_people,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildDetailItem(
    BuildContext context,
    String title,
    String value,
    IconData icon,
  ) {
    final isNotUpdated = value.contains('Chưa cập nhật');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              size: 20,
              color: isNotUpdated ? Colors.grey[400] : Colors.grey[600],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isNotUpdated ? Colors.grey[400] : Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSportsSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.sports,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Môn thể thao',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          BlocBuilder<SportBloc, SportState>(
            builder: (context, sportState) {
              if (sportState is Sport_Loading) {
                return _buildSportLoadingItem();
              } else if (sportState is LoadedSports) {
                final sport = sportState.sports
                    .firstWhere(
                      (s) => s.id == user.sportId,
                      orElse: () => Sport(
                        id: '',
                        name: '',
                        position: '', createdAt: null, updatedAt: null,
                        // Add other required fields with default values if needed
                      ),
                    );
                if (sport.id!.isEmpty) {
                  return _buildEmptySportsList(context);
                }
                return _buildSportItem(
                  context,
                  sport.name,
                  sport.position,
                );
              } else if (sportState is Sport_Error) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red[400],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text('Lỗi: ${sportState.message}'),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<SportBloc>().add(const GetAllSports());
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Thử lại'),
                      ),
                    ],
                  ),
                );
              }
              return _buildEmptySportsList(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmptySportsList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.sports_soccer, size: 48, color: Colors.grey[400]),
          ),
          const SizedBox(height: 16),
          const Text(
            'Chưa có môn thể thao nào',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            'Sử dụng menu tùy chọn để thêm môn thể thao cho vận động viên',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildSportLoadingItem() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 16),
          Text('Đang tải môn thể thao...'),
        ],
      ),
    );
  }

  Widget _buildSportItem(
    BuildContext context,
    String sportName,
    String position,
  ) {
    final List<IconData> sportIcons = [
      Icons.sports_soccer,
      Icons.sports_basketball,
      Icons.sports_tennis,
      Icons.sports_volleyball,
      Icons.sports_football,
      Icons.sports_baseball,
    ];
    final sportIcon = sportIcons[sportName.length % sportIcons.length];

    return ListTile(
      contentPadding: const EdgeInsets.all(16),
      leading: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(sportIcon, color: Colors.grey[600], size: 24),
      ),
      title: Text(
        sportName,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          'Vị trí: ${position.isEmpty ? 'Chưa xác định' : position}',
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ),
    );
  }
}