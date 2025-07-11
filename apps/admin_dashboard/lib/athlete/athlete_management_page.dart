import 'package:admin_dashboard/athlete/add_athlete_page.dart';
import 'package:admin_dashboard/athlete/athlete_detail_page.dart';
import 'package:core/core.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

// Lớp này không cần thay đổi. Nó hoạt động tốt với danh sách được cung cấp.
class AthleteDataSource extends DataTableSource {
  final BuildContext context;
  final List<User> athletes;
  final Map<String, Athlete> athleteDetails;
  final Map<String, Sport> sportDetails;
  final Function(User) onDelete;
  final Function(User) onRowTap;

  AthleteDataSource({
    required this.context,
    required this.athletes,
    required this.athleteDetails,
    required this.sportDetails,
    required this.onDelete,
    required this.onRowTap,
  });

  @override
  DataRow? getRow(int index) {
    // PaginatedDataTable2 sẽ tự xử lý chỉ mục cho trang hiện tại.
    // Chúng ta chỉ cần trả về dữ liệu cho chỉ mục đó từ danh sách đã lọc.
    final user = athletes[index];
    final athleteDetail = athleteDetails[user.id];
    final sportDetail = sportDetails[user.sportId];

    return DataRow2(
      onTap: () => onRowTap(user),
      cells: [
        DataCell(CircleAvatar(
          backgroundImage:
              user.imageUrl.isNotEmpty ? NetworkImage(user.imageUrl) : null,
          child: user.imageUrl.isEmpty ? const Icon(Icons.person) : null,
        )),
        DataCell(Text(user.fullName)),
        DataCell(Text(user.email)),
        DataCell(Text(sportDetail?.name ?? 'N/A')),
        DataCell(Text(athleteDetail?.athleteType ?? 'N/A')),
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

  // rowCount bây giờ là số lượng của danh sách đã được lọc.
  @override
  int get rowCount => athletes.length;

  @override
  int get selectedRowCount => 0;
}


class AthleteManagementPage extends StatefulWidget {
  const AthleteManagementPage({super.key});

  @override
  State<AthleteManagementPage> createState() => _AthleteManagementPageState();
}

class _AthleteManagementPageState extends State<AthleteManagementPage> {
  // === TRẠNG THÁI CHO DỮ LIỆU VÀ BỘ LỌC ===
  List<User> _allAthletes = []; // Lưu trữ danh sách gốc, không đổi
  List<User> _filteredAthletes = []; // Danh sách hiển thị sau khi lọc/tìm kiếm
  final Map<String, Athlete> _athleteDetails = {};
  Map<String, Sport> _sportDetails = {};

  final TextEditingController _searchController = TextEditingController();
  String? _selectedSportId;
  String? _selectedAthleteType;

  bool _isLoading = true;

  // DataSource cho PaginatedDataTable2
  late AthleteDataSource _dataSource;
  
  // Controller của PaginatedDataTable2 không bắt buộc nhưng nên có để quản lý
  final PaginatorController _paginatorController = PaginatorController();

  @override
  void initState() {
    super.initState();
    // Khởi tạo DataSource với dữ liệu rỗng
    _dataSource = AthleteDataSource(
      context: context,
      athletes: [],
      athleteDetails: {},
      sportDetails: {},
      onDelete: _showDeleteConfirmationDialog,
      onRowTap: _navigateToDetail,
    );
    _searchController.addListener(_applyFilters);
    _loadInitialData();
  }

  // Tải toàn bộ dữ liệu một lần
  void _loadInitialData() {
    setState(() => _isLoading = true);
    // ✅ SỬA LẠI EVENT ĐỂ TẢI TẤT CẢ
    context.read<UserBloc>().add(const UserEvent.getUsersByRoleWithPagination(role: 'Vận động viên',limit: 10000000));
    context.read<SportBloc>().add(const SportEvent.getAllSports(limit: 10000000));
  }

  // Hàm này lọc trên danh sách đầy đủ và cập nhật lại DataSource
  void _applyFilters() {
    setState(() {
      List<User> tempList = List.from(_allAthletes);

      // Lọc theo môn thể thao
      if (_selectedSportId != null) {
        tempList = tempList.where((user) => user.sportId == _selectedSportId).toList();
      }
      
      // Lọc theo loại VĐV
      if (_selectedAthleteType != null) {
        tempList = tempList.where((user) => _athleteDetails[user.id]?.athleteType == _selectedAthleteType).toList();
      }

      // Tìm kiếm theo tên hoặc môn thể thao
      final query = _searchController.text.toLowerCase().trim();
      if (query.isNotEmpty) {
        tempList = tempList.where((user) {
          final sportName = _sportDetails[user.sportId]?.name.toLowerCase() ?? '';
          return user.fullName.toLowerCase().contains(query) || sportName.contains(query);
        }).toList();
      }

      _filteredAthletes = tempList;

      // Cập nhật DataSource với danh sách đã lọc
      _dataSource = AthleteDataSource(
        context: context,
        athletes: _filteredAthletes,
        athleteDetails: _athleteDetails,
        sportDetails: _sportDetails,
        onDelete: _showDeleteConfirmationDialog,
        onRowTap: _navigateToDetail,
      );
    });
  }
  
  void _navigateToDetail(User user) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => AthleteDetailPage(athlete: user)));
    _loadInitialData(); // Tải lại toàn bộ khi quay về
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
          content: Text(message), // Hiển thị thông báo lỗi từ backend
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
            'Bạn có chắc chắn muốn xóa vận động viên "${user.fullName}" không? Hành động này không thể hoàn tác.',
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
                    _allAthletes = state.users; // Lưu danh sách gốc
                    for (var user in state.users) {
                      if (user.id != null && _athleteDetails[user.id] == null) {
                         context.read<AthleteBloc>().add(AthleteEvent.getAthleteByUserId(user.id!));
                      }
                    }
                    _applyFilters(); // Áp dụng bộ lọc ban đầu
                    _isLoading = false;
                  });
                } else if (state is User_Success) {
                  _loadInitialData();
                } else if (state is User_Error) {
                  _showErrorDialog(state.message);
                }
              },
            ),
            BlocListener<AthleteBloc, AthleteState>(
              listener: (context, state) {
                if (state is LoadedAthlete) {
                  setState(() {
                    _athleteDetails[state.athlete.userId] = state.athlete;
                    _applyFilters();
                  });
                }
              },
            ),
            BlocListener<SportBloc, SportState>(
                listener: (context, state) {
                    if (state is LoadedSports) {
                        setState(() {
                            _sportDetails = {for (var sport in state.sports) sport.id!: sport};
                            _applyFilters();
                        });
                    }
                },
            )
          ],
          child: _isLoading 
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// ... (Phần header và nút thêm mới giữ nguyên)
                    children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Quản lý Vận động viên', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text('Thêm mới'),
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddAthletePage())),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildFilterAndSearchSection(), // Phần lọc và tìm kiếm
                    const SizedBox(height: 16),
                    Expanded(
                      child: PaginatedDataTable2(
                        columnSpacing: 20,
                        minWidth: 800,
                        rowsPerPage: 10, // Bạn có thể thay đổi số dòng mỗi trang
                        controller: _paginatorController,
                        source: _dataSource, // Nguồn dữ liệu là danh sách đã lọc
                        columns: const [
                          DataColumn2(label: Text('Ảnh'), fixedWidth: 60),
                          DataColumn2(label: Text('Họ và Tên'), size: ColumnSize.L),
                          DataColumn2(label: Text('Email'), size: ColumnSize.L),
                          DataColumn2(label: Text('Môn Thể Thao'), size: ColumnSize.M),
                          DataColumn2(label: Text('Loại VĐV'), size: ColumnSize.M),
                          DataColumn2(label: Text('Hành động'), fixedWidth: 100, numeric: true),
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
    // ... (Hàm này giữ nguyên không đổi)
    final athleteTypes =
        _athleteDetails.values.map((e) => e.athleteType).toSet().toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
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
              value: _selectedAthleteType,
              decoration: const InputDecoration(
                labelText: 'Lọc theo loại VĐV',
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              items: [
                const DropdownMenuItem<String>(
                  value: null,
                  child: Text('Tất cả các loại'),
                ),
                ...athleteTypes.map(
                  (type) =>
                      DropdownMenuItem<String>(value: type, child: Text(type)),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedAthleteType = value;
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