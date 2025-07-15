import 'package:admin_dashboard/coach/coachAthlete/coach_athletes_tab.dart';
import 'package:admin_dashboard/coach/dailySchedule/coach_schedules_tab.dart';
import 'package:admin_dashboard/coach/profile/coach_profile_tab.dart';
import 'package:admin_dashboard/coach/profile/edit_coach_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CoachDetailPage extends StatefulWidget {
  final User coach;

  const CoachDetailPage({super.key, required this.coach});

  @override
  State<CoachDetailPage> createState() => _CoachDetailPageState();
}

class _CoachDetailPageState extends State<CoachDetailPage> {
  late User _currentCoach;

  @override
  void initState() {
    super.initState();
    _currentCoach = widget.coach;
    _loadAllDataForCoach(_currentCoach);
  }

  void _loadAllDataForCoach(User coach) {
    context.read<UserBloc>().add(UserEvent.getUserById(coach.id!));
    context.read<CoachBloc>().add(CoachEvent.getCoachByUserId(coach.id!));
    context.read<SportBloc>().add(SportEvent.getSportById(coach.sportId));
    context.read<CoachCertificationBloc>().add(
          CoachCertificationEvent.getCoachCertificationByUserId(coach.id!),
        );
    context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(coach.id!),
        );
    context.read<DailyScheduleBloc>().add(
          DailyScheduleEvent.getAllDailySchedulesByCreatorId(coach.id!),
        );
  }

  void _navigateToEditPage() async {
    await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider.value(value: context.read<UserBloc>()),
            BlocProvider.value(value: context.read<CoachBloc>()),
            BlocProvider.value(value: context.read<SportBloc>()),
            BlocProvider.value(value: context.read<CoachAthleteBloc>()),
          ],
          child: EditCoachPage(coach: _currentCoach),
        ),
      ),
    );

    if (mounted) {
      _loadAllDataForCoach(_currentCoach);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is LoadedUser && state.user.id == widget.coach.id) {
          if (state.user != _currentCoach) {
            setState(() {
              _currentCoach = state.user;
            });
          }
        } else if (state is LoadedMultipleUsers &&
            state.users.containsKey(widget.coach.id)) {
          final updatedUser = state.users[widget.coach.id]!;
          if (updatedUser != _currentCoach) {
            setState(() {
              _currentCoach = updatedUser;
            });
          }
        }
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Chi tiết HLV: ${_currentCoach.fullName}'),
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
                Tab(icon: Icon(Icons.group_outlined), text: 'Danh sách VĐV'),
                Tab(
                  icon: Icon(Icons.schedule_outlined),
                  text: 'Lịch đã tạo',
                ),
              ],
            ),
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: context.read<TrainingScheduleBloc>()),
            ],
            child: TabBarView(
              children: [
                CoachProfileTab(coach: _currentCoach),
                CoachAthletesTab(coach: _currentCoach),
                const CoachSchedulesTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}