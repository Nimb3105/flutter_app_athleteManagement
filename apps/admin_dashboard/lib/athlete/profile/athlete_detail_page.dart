import 'package:admin_dashboard/athlete/profile/edit_athlete_page.dart';
import 'package:admin_dashboard/athlete/profile/profile_tab.dart';
import 'package:admin_dashboard/athlete/training/training_nutrition_tab.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AthleteDetailPage extends StatefulWidget {
  final User athlete;

  const AthleteDetailPage({super.key, required this.athlete});

  @override
  State<AthleteDetailPage> createState() => _AthleteDetailPageState();
}

class _AthleteDetailPageState extends State<AthleteDetailPage> {
  // Biến để lưu trữ thông tin VĐV, có thể được cập nhật
  late User _currentAthlete;

  @override
  void initState() {
    super.initState();
    _currentAthlete = widget.athlete;
    _loadAllDataForAthlete(_currentAthlete);
  }

  // Gom tất cả lệnh gọi BLoC vào một hàm cho gọn
  void _loadAllDataForAthlete(User athlete) {
    final userId = athlete.id!;
    context.read<UserBloc>().add(UserEvent.getUserById(userId));
    context.read<AthleteBloc>().add(AthleteEvent.getAthleteByUserId(userId));
    context.read<SportBloc>().add(SportEvent.getSportById(athlete.sportId));
    context.read<HealthBloc>().add(HealthEvent.getHealthByUserId(userId));
    context.read<InjuryBloc>().add(InjuryEvent.getInjuryByUserId(userId));
    context.read<AchievementBloc>().add(
      AchievementEvent.getAchievementByUserId(userId),
    );
    context.read<UserMatchBloc>().add(
      UserMatchEvent.getUserMatchByUserId(userId),
    );
    context.read<DailyScheduleBloc>().add(
      DailyScheduleEvent.getAllDailySchedulesByUserId(userId),
    );
    context.read<NutritionPlanBloc>().add(
      NutritionPlanEvent.getNutritionPlansByUserId(userId),
    );
    context.read<TeamMemberBloc>().add(
      TeamMemberEvent.getTeamMembersByUserId(userId),
    );
    context.read<GroupMemberBloc>().add(
      GroupMemberEvent.getGroupMembersByUserId(userId),
    );
  }

  // Hàm xử lý việc điều hướng đến trang sửa và làm mới dữ liệu
  void _navigateToEditPage() async {
    // Chờ trang sửa đóng lại
    await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder:
            (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(value: context.read<UserBloc>()),
                BlocProvider.value(value: context.read<AthleteBloc>()),
                BlocProvider.value(value: context.read<SportBloc>()),
                BlocProvider.value(value: context.read<CoachAthleteBloc>()),
              ],
              child: EditAthletePage(athlete: _currentAthlete),
            ),
      ),
    );

    // Tải lại toàn bộ dữ liệu khi quay lại, bất kể kết quả trả về là gì
    if (context.mounted) {
      _loadAllDataForAthlete(_currentAthlete);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Sử dụng BlocListener để cập nhật state cục bộ khi có dữ liệu mới
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is LoadedUser && state.user.id == widget.athlete.id) {
          if (state.user != _currentAthlete) {
            setState(() {
              _currentAthlete = state.user;
            });
          }
        } else if (state is LoadedMultipleUsers &&
            state.users.containsKey(widget.athlete.id)) {
          final updatedUser = state.users[widget.athlete.id]!;
          if (updatedUser != _currentAthlete) {
            setState(() {
              _currentAthlete = updatedUser;
            });
          }
        }
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // Giao diện sẽ tự build lại với tên mới
            title: Text('Chi tiết VĐV: ${_currentAthlete.fullName}'),
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                tooltip: 'Sửa thông tin',
                onPressed: _navigateToEditPage,
              ),
            ],
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.person_outline), text: 'Hồ Sơ'),
                Tab(
                  icon: Icon(Icons.fitness_center_outlined),
                  text: 'Luyện tập',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Truyền vào biến athlete đã được cập nhật
              ProfileTab(athlete: _currentAthlete),
              TrainingNutritionTab(athleteId: _currentAthlete.id!),
            ],
          ),
        ),
      ),
    );
  }
}
