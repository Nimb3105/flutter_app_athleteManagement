import 'package:flutter/material.dart';
import 'package:core/core.dart';

class SportListScreen extends StatelessWidget {
  const SportListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  SportBloc(sportRepository: RepositoryProvider.of(context))
                    ..add(const SportEvent.getAllSports(page: 1, limit: 10)),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<SportBloc, SportState>(
          listener: (context, state) {
            if (state is Sport_Success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              context.read<SportBloc>().add(
                const SportEvent.getAllSports(page: 1, limit: 10),
              ); // Refresh danh sách sau khi xóa
            } else if (state is Sport_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          builder: (context, state) {
            int currentPage = 1;
            bool hasMore = true;
            List<Sport> sports = [];

            if (state is LoadedSports) {
              currentPage = state.currentPage;
              hasMore = state.hasMore;
              sports = state.sports;
            }

            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Tên bộ môn',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày tạo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Ngày cập nhật',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tác vụ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      rows:
                          sports.isEmpty && state is! Sport_Loading
                              ? [
                                const DataRow(
                                  cells: [
                                    DataCell(
                                      Center(
                                        child: Text('Không có bộ môn nào'),
                                      ),
                                    ),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                    DataCell(SizedBox.shrink()),
                                  ],
                                ),
                              ]
                              : sports.map((sport) {
                                return DataRow(
                                  cells: [
                                    DataCell(Text(sport.name)),
                                    DataCell(
                                      Text(formatUtcToLocal(sport.createdAt)),
                                    ),
                                    DataCell(
                                      Text(formatUtcToLocal(sport.updatedAt)),
                                    ),
                                    DataCell(
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                            ),
                                            tooltip: 'Sửa',
                                            onPressed: () {
                                              ScaffoldMessenger.of(
                                                context,
                                              ).showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                    'Chức năng sửa đang được phát triển',
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                            tooltip: 'Xóa',
                                            onPressed: () {
                                              if (sport.id != null) {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                        title: const Text(
                                                          'Xác nhận xóa',
                                                        ),
                                                        content: Text(
                                                          'Bạn có chắc muốn xóa bộ môn ${sport.name}?',
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                            onPressed:
                                                                () =>
                                                                    Navigator.pop(
                                                                      context,
                                                                    ),
                                                            child: const Text(
                                                              'Hủy',
                                                            ),
                                                          ),
                                                          TextButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                    SportBloc
                                                                  >()
                                                                  .add(
                                                                    SportEvent.deleteSport(
                                                                      sport.id!,
                                                                    ),
                                                                  );
                                                              Navigator.pop(
                                                                context,
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Xóa',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                    ),
                  ),
                ),
                if (state is Sport_Loading)
                  const Center(child: CircularProgressIndicator()),
                if (state is Sport_Initial)
                  const Center(child: Text('Khởi tạo...')),
                if (state is LoadedSport)
                  const Center(child: Text('Không hiển thị bộ môn đơn')),
                if (state is! Sport_Loading && state is! Sport_Initial)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed:
                              currentPage > 1
                                  ? () {
                                    context.read<SportBloc>().add(
                                      SportEvent.getAllSports(
                                        page: currentPage - 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Previous'),
                        ),
                        const SizedBox(width: 16),
                        Text('Trang $currentPage'),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed:
                              hasMore
                                  ? () {
                                    context.read<SportBloc>().add(
                                      SportEvent.getAllSports(
                                        page: currentPage + 1,
                                        limit: 10,
                                      ),
                                    );
                                  }
                                  : null,
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
