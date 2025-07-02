// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
      final state = context.read<CoachAthleteBloc>().state;
      if (state is LoadedCoachAthletes && state.hasMore) {
        context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(
            widget.coachId,
            page: _currentPage + 1,
            limit: _limit,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vận Động Viên',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
        ],
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
              return _buildLoadingShimmer();
            }
            if (state is LoadedCoachAthletes) {
              if (state.coachAthletes.isEmpty) {
                return _buildEmptyState();
              }
              return _buildAthleteList(
                context,
                state.coachAthletes,
                state.athleteMap,
                state.hasMore,
                state.userMap,
                state.sportMap,
              );
            }
            if (state is CoachAthlete_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }
            return _buildEmptyState();
          },
        ),
      ),
    );
  }

  Widget _buildLoadingShimmer() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(radius: 28, backgroundColor: Colors.white),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Container(width: 100, height: 16, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people_outline, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          Text(
            'Chưa có vận động viên',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Hãy bắt đầu bằng cách thêm một VĐV mới.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildAthleteList(
    BuildContext context,
    List<CoachAthlete> coachAthletes,
    Map<String, Athlete> athleteMap,
    bool hasMore,
    Map<String, User?> userMap,
    Map<String, Sport> sportMap,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        _currentPage = 1;
        context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(
            widget.coachId,
            page: 1,
            limit: _limit,
          ),
        );
      },
      child: AnimationLimiter(
        child: ListView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.all(8),
          itemCount: coachAthletes.length + (hasMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == coachAthletes.length && hasMore) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }
            final coachAthlete = coachAthletes[index];
            final athlete = athleteMap[coachAthlete.athleteId];
            if (athlete == null) return const SizedBox.shrink();

            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: _buildAthleteCard(context, athlete, userMap, sportMap),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAthleteCard(
    BuildContext context,
    Athlete athlete,
    Map<String, User?> userMap,
    Map<String, Sport> sportMap,
  ) {
    final user = userMap[athlete.userId];
    final sport = sportMap[user?.sportId];
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => AthleteDetail(
                    athlete: athlete,
                    userId: widget.coachId,
                    sportId: sport?.id,
                  ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Hero(
                tag: 'athlete_${athlete.userId}',
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                  child: Text(
                    user?.fullName.isNotEmpty == true
                        ? user!.fullName[0].toUpperCase()
                        : '?',
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user?.fullName ?? 'Đang tải...',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      sport?.name ?? 'Chưa có môn thể thao',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: theme.textTheme.bodyMedium?.color?.withOpacity(
                          0.7,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.withOpacity(0.7),
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
