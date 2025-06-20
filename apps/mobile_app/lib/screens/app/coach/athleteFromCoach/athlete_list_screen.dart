import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_detail.dart';

class AthleteListScreen extends StatefulWidget {
  final String coachId;
  const AthleteListScreen({super.key, required this.coachId});

  @override
  State<AthleteListScreen> createState() => _AthleteListScreenState();
}

class _AthleteListScreenState extends State<AthleteListScreen> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final int _limit = 10;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 &&
        !_isLoadingMore) {
      context.read<CoachAthleteBloc>().add(
        CoachAthleteEvent.getAllByCoachId(
          widget.coachId,
          page: _currentPage + 1,
          limit: _limit,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách vận động viên'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: BlocProvider(
        create:
            (context) => CoachAthleteBloc(
              coachAthleteRepository: RepositoryProvider.of(context),
              athleteRepository: RepositoryProvider.of(context),
              userRepository: RepositoryProvider.of(context),
              sportRepository: RepositoryProvider.of(context),
            )..add(
              CoachAthleteEvent.getAllByCoachId(
                widget.coachId,
                page: 1,
                limit: _limit,
              ),
            ),
        child: BlocConsumer<CoachAthleteBloc, CoachAthleteState>(
          listener: (context, state) {
            if (state is LoadedCoachAthletes) {
              setState(() {
                _currentPage = state.currentPage;
                _isLoadingMore = false;
              });
            } else if (state is CoachAthlete_LoadingMore) {
              _isLoadingMore = true;
            } else if (state is CoachAthlete_Error) {
              _isLoadingMore = false;
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            if (state is CoachAthlete_Loading && _currentPage == 1) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is LoadedCoachAthletes) {
              return _buildMobileList(
                context,
                state.coachAthletes,
                state.athleteMap,
                state.currentPage,
                state.limit,
                state.hasMore,
                state.userMap,
                state.sportMap,
              );
            }
            if (state is CoachAthlete_Error) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
                    const SizedBox(height: 16),
                    Text(
                      'Lỗi: ${state.message}',
                      style: TextStyle(color: Colors.red[700], fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
            return const Center(child: Text('Không có dữ liệu'));
          },
        ),
      ),
    );
  }

  Widget _buildMobileList(
    BuildContext context,
    List<CoachAthlete> coachAthletes,
    Map<String, Athlete> athleteMap,
    int currentPage,
    int limit,
    bool hasMore,
    Map<String, User?> userMap,
    Map<String, Sport> sportMap,
  ) {
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy HH:mm');

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
          ),
          child: Row(
            children: [
              Icon(Icons.sports, color: Colors.blue[600]),
              const SizedBox(width: 8),
              Text(
                'Tổng số: ${coachAthletes.length} vận động viên',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child:
              coachAthletes.isEmpty
                  ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sports_outlined,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Không có vận động viên nào',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  )
                  : RefreshIndicator(
                    onRefresh: () async {
                      context.read<CoachAthleteBloc>().add(
                        CoachAthleteEvent.getAllByCoachId(
                          widget.coachId,
                          page: 1,
                          limit: _limit,
                        ),
                      );
                    },
                    child: ListView.separated(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: coachAthletes.length + (hasMore ? 1 : 0),
                      separatorBuilder:
                          (context, index) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        if (index == coachAthletes.length && hasMore) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        final coachAthlete = coachAthletes[index];
                        final athlete = athleteMap[coachAthlete.athleteId];
                        if (athlete == null) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        return _buildAthleteCard(
                          context,
                          athlete,
                          userMap,
                          sportMap,
                          dateFormat,
                        );
                      },
                    ),
                  ),
        ),
      ],
    );
  }

  Widget _buildAthleteCard(
    BuildContext context,
    Athlete athlete,
    Map<String, User?> userMap,
    Map<String, Sport> sportMap,
    DateFormat dateFormat,
  ) {
    final user = userMap[athlete.userId];
    // Assuming Athlete model has a sportId' field
    final sport = sportMap[user?.sportId];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) =>
                      AthleteDetail(athlete: athlete, userId: widget.coachId),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[100],
                    child: Icon(Icons.person, color: Colors.blue[600]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user?.fullName ?? 'Đang tải...',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            athlete.athleteType,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Icon(Icons.chevron_right, color: Colors.grey[400]),
                ],
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                Icons.email_outlined,
                'Email',
                user?.email ?? 'Đang tải...',
              ),
              const SizedBox(height: 12),
              _buildInfoRow(
                Icons.sports_outlined,
                'Môn thể thao',
                sport?.name ?? 'Chưa có môn thể thao',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    IconData icon,
    String label,
    String value, {
    bool isSmall = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: isSmall ? 16 : 20, color: Colors.grey[600]),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: isSmall ? 12 : 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  fontSize: isSmall ? 12 : 14,
                  fontWeight: isSmall ? FontWeight.normal : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
