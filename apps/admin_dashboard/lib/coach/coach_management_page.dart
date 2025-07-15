import 'package:admin_dashboard/coach/profile/add_coach_page.dart';
import 'package:admin_dashboard/coach/profile/coach_detail_page.dart';
import 'package:core/core.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CoachDataSource extends DataTableSource {
  final BuildContext context;
  final List<User> coaches;
  final Map<String, Coach> coachDetails;
  final Map<String, Sport> sportDetails;
  final Function(User) onDelete;
  final Function(User) onRowTap;

  CoachDataSource({
    required this.context,
    required this.coaches,
    required this.coachDetails,
    required this.sportDetails,
    required this.onDelete,
    required this.onRowTap,
  });

  @override
  DataRow? getRow(int index) {
    final user = coaches[index];
    final coachDetail = coachDetails[user.id];
    final sportDetail = sportDetails[user.sportId];

    return DataRow2(
      onTap: () => onRowTap(user),
      cells: [
        DataCell(
          CircleAvatar(
            backgroundImage:
                user.imageUrl.isNotEmpty ? NetworkImage(user.imageUrl) : null,
            child: user.imageUrl.isEmpty ? const Icon(Icons.person) : null,
          ),
        ),
        DataCell(Text(user.fullName)),
        DataCell(Text(user.email)),
        DataCell(Text(sportDetail?.name ?? 'N/A')),
        DataCell(Text(coachDetail?.experience ?? 'N/A')),
        DataCell(Text(coachDetail?.level ?? 'N/A')),
        DataCell(
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => onDelete(user),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => coaches.length;

  @override
  int get selectedRowCount => 0;
}

class CoachManagementPage extends StatefulWidget {
  const CoachManagementPage({super.key});

  @override
  State<CoachManagementPage> createState() => _CoachManagementPageState();
}

class _CoachManagementPageState extends State<CoachManagementPage> {
  List<User> _allCoaches = [];
  List<User> _filteredCoaches = [];
  final Map<String, Coach> _coachDetails = {};
  Map<String, Sport> _sportDetails = {};

  final TextEditingController _searchController = TextEditingController();
  String? _selectedSportId;
  String? _selectedLevel; // Biến mới để lưu cấp độ

  // Danh sách các cấp độ, bạn có thể thay đổi nếu cần
  final List<String> _coachLevels = [
    'Tất cả',
    'Sơ cấp',
    'Trung cấp',
    'Cao cấp',
    'Chuyên nghiệp',
  ];

  bool _isLoading = true;

  late CoachDataSource _dataSource;

  final PaginatorController _paginatorController = PaginatorController();

  @override
  void initState() {
    super.initState();
    _dataSource = CoachDataSource(
      context: context,
      coaches: [],
      coachDetails: {},
      sportDetails: {},
      onDelete: _showDeleteConfirmationDialog,
      onRowTap: _navigateToDetail,
    );
    _searchController.addListener(_applyFilters);
    _loadInitialData();
  }

  void _loadInitialData() {
    setState(() => _isLoading = true);
    context.read<UserBloc>().add(
      const UserEvent.getUsersByRoleWithPagination(
        role: 'Huấn luyện viên',
        limit: 10000000,
      ),
    );
    context.read<SportBloc>().add(
      const SportEvent.getAllSports(limit: 10000000),
    );
  }

  void _applyFilters() {
    setState(() {
      List<User> tempList = List.from(_allCoaches);

      // Lọc theo môn thể thao
      if (_selectedSportId != null) {
        tempList =
            tempList.where((user) => user.sportId == _selectedSportId).toList();
      }

      // Lọc theo cấp độ
      if (_selectedLevel != null && _selectedLevel != 'Tất cả') {
        tempList =
            tempList.where((user) {
              final coachDetail = _coachDetails[user.id];
              return coachDetail?.level == _selectedLevel;
            }).toList();
      }

      final query = _searchController.text.toLowerCase().trim();
      if (query.isNotEmpty) {
        tempList =
            tempList.where((user) {
              final sportName =
                  _sportDetails[user.sportId]?.name.toLowerCase() ?? '';
              return user.fullName.toLowerCase().contains(query) ||
                  sportName.contains(query);
            }).toList();
      }

      _filteredCoaches = tempList;

      _dataSource = CoachDataSource(
        context: context,
        coaches: _filteredCoaches,
        coachDetails: _coachDetails,
        sportDetails: _sportDetails,
        onDelete: _showDeleteConfirmationDialog,
        onRowTap: _navigateToDetail,
      );
    });
  }

  void _navigateToDetail(User user) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CoachDetailPage(coach: user)),
    );
    _loadInitialData();
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.error_outline, color: Colors.red),
              SizedBox(width: 10),
              Text('Xóa Thất Bại'),
            ],
          ),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _paginatorController.dispose();
    super.dispose();
  }

  void _showDeleteConfirmationDialog(User user) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận xóa'),
          content: Text(
            'Bạn có chắc chắn muốn xóa huấn luyện viên "${user.fullName}" không? Hành động này không thể hoàn tác.',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Xóa'),
              onPressed: () {
                if (user.id != null) {
                  context.read<UserBloc>().add(UserEvent.deleteUser(user.id!));
                }
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MultiBlocListener(
          listeners: [
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state is LoadedUsers) {
                  setState(() {
                    _allCoaches = state.users;
                    for (var user in state.users) {
                      if (user.id != null && _coachDetails[user.id] == null) {
                        context.read<CoachBloc>().add(
                          CoachEvent.getCoachByUserId(user.id!),
                        );
                      }
                    }
                    _applyFilters();
                    _isLoading = false;
                  });
                } else if (state is User_Success) {
                  _loadInitialData();
                } else if (state is User_Error) {
                  _showErrorDialog(state.message);
                }
              },
            ),
            BlocListener<CoachBloc, CoachState>(
              listener: (context, state) {
                if (state is LoadedCoach) {
                  setState(() {
                    _coachDetails[state.coach.userId] = state.coach;
                    _applyFilters();
                  });
                }
              },
            ),
            BlocListener<SportBloc, SportState>(
              listener: (context, state) {
                if (state is LoadedSports) {
                  setState(() {
                    _sportDetails = {
                      for (var sport in state.sports) sport.id!: sport,
                    };
                    _applyFilters();
                  });
                }
              },
            ),
          ],
          child:
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Quản lý Huấn luyện viên',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.add),
                            label: const Text('Thêm mới'),
                            onPressed:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const AddCoachPage(),
                                  ),
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildFilterAndSearchSection(),
                      const SizedBox(height: 16),
                      Expanded(
                        child: PaginatedDataTable2(
                          columnSpacing: 20,
                          minWidth: 800,
                          rowsPerPage: 10,
                          controller: _paginatorController,
                          source: _dataSource,
                          columns: const [
                            DataColumn2(label: Text('Ảnh'), fixedWidth: 60),
                            DataColumn2(
                              label: Text('Họ và Tên'),
                              size: ColumnSize.L,
                            ),
                            DataColumn2(
                              label: Text('Email'),
                              size: ColumnSize.L,
                            ),
                            DataColumn2(
                              label: Text('Môn Thể Thao'),
                              size: ColumnSize.M,
                            ),
                            DataColumn2(
                              label: Text('Kinh nghiệm'),
                              size: ColumnSize.M,
                            ),
                            DataColumn2(
                              label: Text('Cấp độ'),
                              size: ColumnSize.S,
                            ),
                            DataColumn2(
                              label: Text('Hành động'),
                              fixedWidth: 100,
                              numeric: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
        ),
      ),
    );
  }

  Widget _buildFilterAndSearchSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Tìm kiếm theo tên hoặc môn thể thao...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: DropdownButtonFormField<String>(
              value: _selectedSportId,
              decoration: const InputDecoration(
                labelText: 'Lọc theo môn thể thao',
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              items: [
                const DropdownMenuItem<String>(
                  value: null,
                  child: Text('Tất cả môn thể thao'),
                ),
                ..._sportDetails.values.map(
                  (sport) => DropdownMenuItem<String>(
                    value: sport.id,
                    child: Text(sport.name),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedSportId = value;
                  _applyFilters();
                });
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: DropdownButtonFormField<String>(
              value: _selectedLevel,
              decoration: const InputDecoration(
                labelText: 'Lọc theo cấp độ',
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              items:
                  _coachLevels
                      .map(
                        (level) => DropdownMenuItem<String>(
                          value: level == 'Tất cả' ? null : level,
                          child: Text(level),
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedLevel = value;
                  _applyFilters();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
