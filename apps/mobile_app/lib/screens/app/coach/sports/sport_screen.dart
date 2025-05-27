import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/sports/sport_create.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sportRepository = SportRepository(baseUrl: ApiConstants.baseUrl);

    return RepositoryProvider.value(
      value: sportRepository,
      child: BlocProvider(
        create:
            (_) =>
                SportBloc(sportRepository: sportRepository)
                  ..add(const SportEvent.getAllSports()),
        child: const SportScaffold(),
      ),
    );
  }
}

class SportScaffold extends StatelessWidget {
  const SportScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.sports_martial_arts),
            SizedBox(width: 8),
            Text('Danh sách bộ môn'),
          ],
        ),
      ),
      body: BlocListener<SportBloc, SportState>(
        listener: (context, state) {
          if (state is Sport_Success) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
            context.read<SportBloc>().add(const SportEvent.getAllSports());
          } else if (state is Sport_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
          }
        },
        child: BlocBuilder<SportBloc, SportState>(
          builder: (context, sportState) {
            if (sportState is Sport_Loading || sportState is Sport_Initial) {
              return const Center(child: CircularProgressIndicator());
            } else if (sportState is LoadedSports) {
              return SportListView(sports: sportState.sports);
            } else if (sportState is Sport_Error) {
              return Center(child: Text('Lỗi: ${sportState.message}'));
            } else {
              return const Center(child: Text('Không có dữ liệu'));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => RepositoryProvider.value(
                    value: context.read<SportRepository>(),
                    child: BlocProvider.value(
                      value: context.read<SportBloc>(),
                      child: const SportCreateForm(),
                    ),
                  ),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Thêm bộ môn'),
      ),
    );
  }
}

class SportListView extends StatelessWidget {
  final List<Sport> sports;

  const SportListView({super.key, required this.sports});

  @override
  Widget build(BuildContext context) {
    if (sports.isEmpty) {
      return const Center(child: Text('Chưa có bộ môn nào.'));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: sports.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final sport = sports[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          child: ListTile(
            leading: const Icon(Icons.sports, color: Colors.blue),
            title: Text(
              sport.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('ID: ${sport.id}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Có thể mở chi tiết môn thể thao nếu muốn
            },
          ),
        );
      },
    );
  }
}
