// ignore_for_file: unused_field, unnecessary_brace_in_string_interps, deprecated_member_use, duplicate_ignore

import 'dart:async';
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
  // ✅ State cho việc lọc và tìm kiếm
  List<CoachAthlete> _allCoachAthletes = [];
  List<CoachAthlete> _filteredAthletes = [];
  String _searchQuery = '';
  String? _selectedAthleteType; // Dùng để lưu trữ bộ lọc hiện tại
  
  // Dùng để debounce, tránh việc gọi filter liên tục khi người dùng gõ
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _reloadData();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _reloadData() async {
    context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(widget.coachId),
        );
  }

  // ✅ Hàm lọc và tìm kiếm chính
  void _runFilter() {
    final state = context.read<CoachAthleteBloc>().state;
    if (state is! LoadedCoachAthletes) return;

    List<CoachAthlete> results = state.coachAthletes;

    // Lọc theo từ khóa tìm kiếm
    if (_searchQuery.isNotEmpty) {
      results = results.where((coachAthlete) {
        final user = state.userMap[coachAthlete.athleteId];
        return user?.fullName.toLowerCase().contains(_searchQuery.toLowerCase()) ?? false;
      }).toList();
    }

    // Lọc theo loại vận động viên
    if (_selectedAthleteType != null) {
      results = results.where((coachAthlete) {
        final athlete = state.athleteMap[coachAthlete.athleteId];
        return athlete?.athleteType == _selectedAthleteType;
      }).toList();
    }

    setState(() {
      _filteredAthletes = results;
    });
  }

  // ✅ Hàm xử lý khi người dùng nhập vào ô tìm kiếm (với debounce)
  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
        setState(() {
            _searchQuery = query;
            _runFilter();
        });
    });
  }

  // ✅ Hàm hiển thị Dialog để lọc
  void _showFilterDialog() {
    final state = context.read<CoachAthleteBloc>().state;
    if (state is! LoadedCoachAthletes) return;
    
    // Lấy ra các loại VĐV duy nhất để làm tùy chọn lọc
    final uniqueTypes = state.athleteMap.values
        .map((a) => a.athleteType)
        .toSet()
        .toList();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Lọc theo loại VĐV'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Nút để xóa bộ lọc
              ListTile(
                title: const Text('Tất cả'),
                onTap: () {
                  setState(() {
                    _selectedAthleteType = null;
                    _runFilter();
                  });
                  Navigator.of(context).pop();
                },
              ),
              // Danh sách các loại VĐV
              ...uniqueTypes.map((type) => ListTile(
                title: Text(type),
                onTap: () {
                  setState(() {
                    _selectedAthleteType = type;
                    _runFilter();
                  });
                  Navigator.of(context).pop();
                },
              )),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vận Động Viên', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: _buildSearchAndFilter(), // ✅ Widget tìm kiếm và lọc
          ),
        ),
      ),
      body: BlocListener<CoachAthleteBloc, CoachAthleteState>(
        listener: (context, state) {
          if (state is LoadedCoachAthletes) {
            // Khi có dữ liệu mới từ BLoC, cập nhật lại danh sách và chạy filter
            setState(() {
              _allCoachAthletes = state.coachAthletes;
              _runFilter();
            });
          }
        },
        child: BlocBuilder<CoachAthleteBloc, CoachAthleteState>(
          builder: (context, state) {
            return switch (state) {
              CoachAthlete_Initial() || CoachAthlete_Loading() => _buildLoadingShimmer(),
              LoadedCoachAthletes() => _filteredAthletes.isEmpty && _searchQuery.isNotEmpty
                  ? _buildEmptySearchResult()
                  : _buildAthleteList(context, state),
              CoachAthlete_Error(message: final msg) => Center(child: Text('Lỗi: $msg')),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }

  // ✅ Widget chứa thanh tìm kiếm và nút lọc
  Widget _buildSearchAndFilter() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: _onSearchChanged,
            decoration: InputDecoration(
              hintText: 'Tìm kiếm VĐV...',
              prefixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: Icon(Icons.filter_list, color: _selectedAthleteType != null ? Theme.of(context).colorScheme.primary : null),
          onPressed: _showFilterDialog,
          tooltip: 'Lọc',
        ),
      ],
    );
  }

  Widget _buildEmptySearchResult() {
    return Center(
      child: Text('Không tìm thấy kết quả nào cho "${_searchQuery}"'),
    );
  }
  
  // Các widget _buildLoadingShimmer, _buildEmptyState giữ nguyên
  Widget _buildLoadingShimmer() {
    return ListView.builder(
      itemCount: 8,
      itemBuilder:
          (context, index) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                title: SizedBox(
                  height: 20,
                  child: ColoredBox(color: Colors.white),
                ),
                subtitle: SizedBox(
                  height: 16,
                  child: ColoredBox(color: Colors.white),
                ),
              ),
            ),
          ),
    );
  }

  // ✅ Tối ưu: Giao diện khi danh sách rỗng
  // ignore: unused_element
  Widget _buildEmptyState() {
    return RefreshIndicator(
      onRefresh: _reloadData,
      child: Center(
        child: ListView(
          // Sử dụng ListView để có thể kéo refresh
          shrinkWrap: true,
          children: [
            Column(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  // ✅ Widget danh sách giờ sẽ sử dụng _filteredAthletes
  Widget _buildAthleteList(BuildContext context, LoadedCoachAthletes state) {
    return RefreshIndicator(
      onRefresh: _reloadData,
      child: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _filteredAthletes.length, // Sử dụng danh sách đã lọc
          itemBuilder: (context, index) {
            final coachAthlete = _filteredAthletes[index];
            final athlete = state.athleteMap[coachAthlete.athleteId];
            if (athlete == null) return const SizedBox.shrink();

            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: _buildAthleteCard(context, athlete, state.userMap, state.sportMap),
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
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // ✅ Chuyển sang màn hình chi tiết, truyền BLoC đã có
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider.value(
                        value: BlocProvider.of<UserBloc>(context),
                      ),
                      BlocProvider.value(
                        value: BlocProvider.of<SportBloc>(context),
                      ),
                    ],
                    child: AthleteDetail(
                      athlete: athlete,
                      userId: widget.coachId,
                      sportId: sport?.id,
                    ),
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
                  // ignore: deprecated_member_use
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
                      //sport?.name ?? 'Chưa có môn thể thao',
                      athlete.athleteType,
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