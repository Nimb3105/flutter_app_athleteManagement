import 'package:core/core.dart';
import 'package:flutter/material.dart';

class FoodSelectScreen extends StatelessWidget {
  final List<String> selectedFoodIds;
  final Function(String) onFoodSelected;
  final Function(String) onFoodDeselected;
  final String? type;

  const FoodSelectScreen({
    super.key,
    required this.selectedFoodIds,
    required this.onFoodSelected,
    required this.onFoodDeselected,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              FoodBloc(foodRepository: context.read<FoodRepository>())..add(
                type != null && type != 'all'
                    ? GetAllFoodsByFoodType(type!, page: 1, limit: 10)
                    : const GetAllFoods(page: 1, limit: 10),
              ),
      child: _FoodSelectView(
        initialSelectedFoodIds: selectedFoodIds,
        onFoodSelected: onFoodSelected,
        onFoodDeselected: onFoodDeselected,
        initialType: type,
      ),
    );
  }
}

class _FoodSelectView extends StatefulWidget {
  final List<String> initialSelectedFoodIds;
  final Function(String) onFoodSelected;
  final Function(String) onFoodDeselected;
  final String? initialType;

  const _FoodSelectView({
    required this.initialSelectedFoodIds,
    required this.onFoodSelected,
    required this.onFoodDeselected,
    this.initialType,
  });

  @override
  State<_FoodSelectView> createState() => _FoodSelectViewState();
}

class _FoodSelectViewState extends State<_FoodSelectView>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _hasMore = true;
  String? _selectedType;
  int _currentPage = 1;
  double? _lastScrollPosition;

  final List<String> _types = ['all', 'Bữa sáng', 'Bữa trưa', 'Bữa tối'];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _selectedType = widget.initialType ?? 'all';
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    const threshold = 200;
    if (_scrollController.hasClients &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - threshold &&
        !_isLoadingMore &&
        _hasMore) {
      _lastScrollPosition = _scrollController.position.pixels;
      _isLoadingMore = true;
      context.read<FoodBloc>().add(
        _selectedType != 'all'
            ? GetAllFoodsByFoodType(
              _selectedType!,
              page: _currentPage + 1,
              limit: 10,
            )
            : GetAllFoods(page: _currentPage + 1, limit: 10),
      );
    }
  }

  void _toggleFoodSelection(String foodId) {
    Navigator.pop(context, foodId);
  }

  void _navigateToFoodDetail(BuildContext context, Food food) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Xem chi tiết món ăn: ${food.name}')),
    );
  }

  void _onTypeChanged(String? newType) {
    setState(() {
      _selectedType = newType ?? 'all';
      _currentPage = 1;
      _isLoadingMore = false;
      _hasMore = true;
      _lastScrollPosition = null;
    });

    context.read<FoodBloc>().add(
      _selectedType != 'all'
          ? GetAllFoodsByFoodType(_selectedType!, page: 1, limit: 10)
          : const GetAllFoods(page: 1, limit: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn món ăn'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedType,
              isExpanded: true,
              hint: const Text('Chọn loại'),
              items:
                  _types
                      .map(
                        (type) => DropdownMenuItem(
                          value: type,
                          child: Text(
                            type == 'all' ? 'Tất cả' : type.capitalize(),
                          ),
                        ),
                      )
                      .toList(),
              onChanged: _onTypeChanged,
            ),
          ),
          Expanded(
            child: BlocConsumer<FoodBloc, FoodState>(
              listener: (context, state) {
                print(state);
                if (state is LoadedFoods) {
                  setState(() {
                    _hasMore = state.hasMore;
                    _isLoadingMore = false;
                    _currentPage = state.currentPage;
                  });
                  if (_lastScrollPosition != null &&
                      _scrollController.hasClients) {
                    _scrollController.jumpTo(_lastScrollPosition!);
                  }
                } else if (state is Food_LoadingMore) {
                  _isLoadingMore = true;
                } else if (state is Food_Error) {
                  _isLoadingMore = false;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Lỗi: ${state.message}')),
                  );
                }
              },
              builder: (context, state) {
                if (state is Food_Loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                List<Food> foods = [];
                bool hasMore = _hasMore;
                if (state is LoadedFoods) {
                  foods = state.foods;
                  hasMore = state.hasMore;
                } else if (state is Food_LoadingMore) {
                  foods = (state as LoadedFoods).foods;
                  hasMore = (state as LoadedFoods).hasMore;
                }

                if (foods.isEmpty && !_isLoadingMore) {
                  return const Center(child: Text('Không tìm thấy món ăn nào'));
                }

                return ListView.builder(
                  key: const ValueKey('food_list'),
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: foods.length + (hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    try {
                      if (index == foods.length && hasMore) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }

                      final food = foods[index];
                      return ListTile(
                        key: ValueKey(food.id ?? 'index_$index'),
                        title: Text('Tên món ăn: ${food.name}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Loại: ${food.foodType}'),
                            Text('Calo: ${food.calories}'),
                            Text('Protein: ${food.protein}'),
                            Text('Carbs: ${food.carbs}'),
                            Text('Fat: ${food.fat}'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.info_outline),
                          tooltip: 'Xem chi tiết',
                          onPressed: () => _navigateToFoodDetail(context, food),
                        ),
                        onTap: () => _toggleFoodSelection(food.id ?? ''),
                      );
                    } catch (e) {
                      return const ListTile(title: Text('Lỗi hiển thị món ăn'));
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
