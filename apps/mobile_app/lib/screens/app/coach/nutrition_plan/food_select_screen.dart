import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

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
                    ? GetFoodsByFilter(foodType: type, page: 1, limit: 10)
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
  double? _lastOffset; // Thêm để lưu vị trí cuộn
  String? _selectedType;
  Timer? _debounceTimer;

  final List<String> _types = ['all', 'Bữa sáng', 'Bữa trưa', 'Bữa tối'];

  final TextEditingController _caloriesMinController = TextEditingController(
    text: '0',
  );
  final TextEditingController _caloriesMaxController = TextEditingController();
  final TextEditingController _proteinMinController = TextEditingController(
    text: '0',
  );
  final TextEditingController _proteinMaxController = TextEditingController();
  final TextEditingController _carbsMinController = TextEditingController(
    text: '0',
  );
  final TextEditingController _carbsMaxController = TextEditingController();
  final TextEditingController _fatMinController = TextEditingController(
    text: '0',
  );
  final TextEditingController _fatMaxController = TextEditingController();

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
    _debounceTimer?.cancel();
    _scrollController.dispose();
    _caloriesMinController.dispose();
    _caloriesMaxController.dispose();
    _proteinMinController.dispose();
    _proteinMaxController.dispose();
    _carbsMinController.dispose();
    _carbsMaxController.dispose();
    _fatMinController.dispose();
    _fatMaxController.dispose();
    super.dispose();
  }

  void _onScroll() {
    const threshold = 0.9; // Tương tự ExerciseListView
    if (_scrollController.hasClients &&
        !_isLoadingMore &&
        _hasMore &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * threshold) {
      final currentState = context.read<FoodBloc>().state;
      if (currentState is LoadedFoods && currentState.hasMore) {
        setState(() {
          _isLoadingMore = true;
          _lastOffset = _scrollController.position.pixels; // Lưu vị trí cuộn
        });
        debugPrint(
          'Triggering load more for page: ${currentState.currentPage + 1}',
        );
        _applyFilterOrFetch(page: currentState.currentPage + 1);
      } else {
        debugPrint(
          'Current state is not LoadedFoods or no more data, skipping load more',
        );
      }
    }
  }

  void _toggleFoodSelection(String foodId) {
    if (widget.initialSelectedFoodIds.contains(foodId)) {
      widget.onFoodDeselected(foodId);
    } else {
      widget.onFoodSelected(foodId);
    }
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
      _hasMore = true;
      _isLoadingMore = false;
      _lastOffset = null;
      _scrollController.jumpTo(0);
    });
    _applyFilterOrFetch(page: 1);
  }

  void _applyFilterOrFetch({int page = 1}) {
    debugPrint('Applying filter or fetch for page: $page');
    if (page == 1) {
      _scrollController.jumpTo(0);
      _lastOffset = null;
    }
    if (_selectedType == 'all' &&
        _caloriesMinController.text.isEmpty &&
        _caloriesMaxController.text.isEmpty &&
        _proteinMinController.text.isEmpty &&
        _proteinMaxController.text.isEmpty &&
        _carbsMinController.text.isEmpty &&
        _carbsMaxController.text.isEmpty &&
        _fatMinController.text.isEmpty &&
        _fatMaxController.text.isEmpty) {
      context.read<FoodBloc>().add(GetAllFoods(page: page, limit: 10));
      return;
    }

    int? parseInput(String? text) {
      if (text == null || text.isEmpty) return null;
      final value = int.tryParse(text);
      if (value == null || value < 0) return null;
      return value;
    }

    final caloriesMin = parseInput(_caloriesMinController.text);
    final caloriesMax = parseInput(_caloriesMaxController.text);
    final proteinMin = parseInput(_proteinMinController.text);
    final proteinMax = parseInput(_proteinMaxController.text);
    final carbsMin = parseInput(_carbsMinController.text);
    final carbsMax = parseInput(_carbsMaxController.text);
    final fatMin = parseInput(_fatMinController.text);
    final fatMax = parseInput(_fatMaxController.text);

    if (caloriesMin != null &&
        caloriesMax != null &&
        caloriesMin > caloriesMax) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Calo tối thiểu không được lớn hơn calo tối đa'),
        ),
      );
      setState(() {
        _isLoadingMore = false;
      });
      return;
    }
    if (proteinMin != null && proteinMax != null && proteinMin > proteinMax) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Protein tối thiểu không được lớn hơn protein tối đa'),
        ),
      );
      setState(() {
        _isLoadingMore = false;
      });
      return;
    }
    if (carbsMin != null && carbsMax != null && carbsMin > carbsMax) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Carbs tối thiểu không được lớn hơn carbs tối đa'),
        ),
      );
      setState(() {
        _isLoadingMore = false;
      });
      return;
    }
    if (fatMin != null && fatMax != null && fatMin > fatMax) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Chất béo tối thiểu không được lớn hơn chất béo tối đa',
          ),
        ),
      );
      setState(() {
        _isLoadingMore = false;
      });
      return;
    }

    context.read<FoodBloc>().add(
      GetFoodsByFilter(
        foodType: _selectedType == 'all' ? null : _selectedType,
        caloriesMin: caloriesMin,
        caloriesMax: caloriesMax,
        proteinMin: proteinMin,
        proteinMax: proteinMax,
        carbsMin: carbsMin,
        carbsMax: carbsMax,
        fatMin: fatMin,
        fatMax: fatMax,
        page: page,
        limit: 10,
      ),
    );
  }

  void _onApplyFilters() {
    setState(() {
      _hasMore = true;
      _isLoadingMore = false;
      _lastOffset = null;
      _scrollController.jumpTo(0);
    });
    _applyFilterOrFetch(page: 1);
  }

  void _onResetFilters() {
    setState(() {
      _caloriesMinController.text = '0';
      _caloriesMaxController.clear();
      _proteinMinController.text = '0';
      _proteinMaxController.clear();
      _carbsMinController.text = '0';
      _carbsMaxController.clear();
      _fatMinController.text = '0';
      _fatMaxController.clear();
      _selectedType = 'all';
      _hasMore = true;
      _isLoadingMore = false;
      _lastOffset = null;
      _scrollController.jumpTo(0);
    });
    context.read<FoodBloc>().add(const GetAllFoods(page: 1, limit: 10));
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
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            _isLoadingMore = false;
            _hasMore = true;
            _lastOffset = null;
            _selectedType = 'all';
            _caloriesMinController.text = '0';
            _caloriesMaxController.clear();
            _proteinMinController.text = '0';
            _proteinMaxController.clear();
            _carbsMinController.text = '0';
            _carbsMaxController.clear();
            _fatMinController.text = '0';
            _fatMaxController.clear();
          });
          context.read<FoodBloc>().add(const GetAllFoods());
        },
        child: Column(
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
            ExpansionTile(
              title: const Text('Bộ lọc dinh dưỡng'),
              initiallyExpanded: false,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildFilterRow(
                        minController: _caloriesMinController,
                        maxController: _caloriesMaxController,
                        label: 'Calo',
                      ),
                      const SizedBox(height: 8),
                      _buildFilterRow(
                        minController: _proteinMinController,
                        maxController: _proteinMaxController,
                        label: 'Protein',
                      ),
                      const SizedBox(height: 8),
                      _buildFilterRow(
                        minController: _carbsMinController,
                        maxController: _carbsMaxController,
                        label: 'Carbs',
                      ),
                      const SizedBox(height: 8),
                      _buildFilterRow(
                        minController: _fatMinController,
                        maxController: _fatMaxController,
                        label: 'Chất béo',
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: _onApplyFilters,
                              child: const Text('Áp dụng bộ lọc'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextButton(
                              onPressed: _onResetFilters,
                              child: const Text('Xóa bộ lọc'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: BlocConsumer<FoodBloc, FoodState>(
                buildWhen: (previous, current) {
                  return current is Food_Initial ||
                      current is Food_Loading ||
                      current is Food_LoadingMore ||
                      current is LoadedFoods ||
                      current is Food_Error;
                },
                listener: (context, state) {
                  if (state is LoadedFoods) {
                    setState(() {
                      _hasMore = state.hasMore;
                      _isLoadingMore = false;
                      debugPrint(
                        'Updated from LoadedFoods: HasMore=${state.hasMore}, '
                        'TotalFoods=${state.foods.length}, CurrentPage=${state.currentPage}, '
                        'IDs=${state.foods.map((f) => f.id).toList()}',
                      );
                    });
                    if (_lastOffset != null) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _scrollController.jumpTo(_lastOffset!);
                      });
                    }
                  } else if (state is Food_Error) {
                    setState(() {
                      _isLoadingMore = false;
                      _hasMore = false;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Lỗi: ${state.message}'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else if (state is Food_LoadingMore) {
                    setState(() {
                      _isLoadingMore = true;
                    });
                    debugPrint('Handling Food_LoadingMore state');
                  }
                },
                builder: (context, state) {
                  if (state is Food_Initial ||
                      (state is Food_Loading && !_isLoadingMore)) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  List<Food> foods = [];
                  bool hasMore = _hasMore;
                  int currentPage = 1;

                  if (state is LoadedFoods) {
                    foods = state.foods;
                    hasMore = state.hasMore;
                    currentPage = state.currentPage;
                    debugPrint(
                      'Rendering LoadedFoods: Foods=${foods.length}, HasMore=$hasMore, '
                      'CurrentPage=$currentPage, IDs=${foods.map((f) => f.id).toList()}',
                    );
                  }

                  // Áp dụng bộ lọc phía client
                  List<Food> filteredFoods = foods;
                  if (_selectedType != null && _selectedType != 'all') {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.foodType == _selectedType)
                            .toList();
                  }
                  int? parseInput(String? text) {
                    if (text == null || text.isEmpty) return null;
                    final value = int.tryParse(text);
                    if (value == null || value < 0) return null;
                    return value;
                  }

                  final caloriesMin = parseInput(_caloriesMinController.text);
                  final caloriesMax = parseInput(_caloriesMaxController.text);
                  final proteinMin = parseInput(_proteinMinController.text);
                  final proteinMax = parseInput(_proteinMaxController.text);
                  final carbsMin = parseInput(_carbsMinController.text);
                  final carbsMax = parseInput(_carbsMaxController.text);
                  final fatMin = parseInput(_fatMinController.text);
                  final fatMax = parseInput(_fatMaxController.text);

                  if (caloriesMin != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.calories >= caloriesMin)
                            .toList();
                  }
                  if (caloriesMax != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.calories <= caloriesMax)
                            .toList();
                  }
                  if (proteinMin != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.protein >= proteinMin)
                            .toList();
                  }
                  if (proteinMax != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.protein <= proteinMax)
                            .toList();
                  }
                  if (carbsMin != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.carbs >= carbsMin)
                            .toList();
                  }
                  if (carbsMax != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.carbs <= carbsMax)
                            .toList();
                  }
                  if (fatMin != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.fat >= fatMin)
                            .toList();
                  }
                  if (fatMax != null) {
                    filteredFoods =
                        filteredFoods
                            .where((food) => food.fat <= fatMax)
                            .toList();
                  }

                  if (filteredFoods.isEmpty && !_isLoadingMore) {
                    return ListView(
                      controller: _scrollController,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                            child: Text(
                              'Không tìm thấy món ăn nào với bộ lọc đã chọn',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    );
                  }

                  return ListView.builder(
                    key: const ValueKey('food_list'),
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount:
                        filteredFoods.length +
                        (hasMore && _isLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == filteredFoods.length &&
                          hasMore &&
                          _isLoadingMore) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }

                      final food = filteredFoods[index];
                      final isSelected = widget.initialSelectedFoodIds.contains(
                        food.id,
                      );
                      return ListTile(
                        key: ValueKey(food.id ?? 'index_$index'),
                        title: Text(
                          'Tên món ăn: ${food.name} ',
                        ), // Thêm ID để debug
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
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              isSelected
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              color: isSelected ? Colors.green : null,
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline),
                              tooltip: 'Xem chi tiết',
                              onPressed:
                                  () => _navigateToFoodDetail(context, food),
                            ),
                          ],
                        ),
                        onTap: () => _toggleFoodSelection(food.id ?? ''),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterRow({
    required TextEditingController minController,
    required TextEditingController maxController,
    required String label,
  }) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: minController,
            decoration: InputDecoration(
              labelText: '$label tối thiểu',
              border: const OutlineInputBorder(),
              errorText:
                  minController.text.isNotEmpty &&
                          (int.tryParse(minController.text) == null ||
                              int.parse(minController.text) < 0)
                      ? 'Vui lòng nhập số không âm'
                      : null,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (_) => setState(() {}),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: maxController,
            decoration: InputDecoration(
              labelText: '$label tối đa',
              border: const OutlineInputBorder(),
              errorText:
                  maxController.text.isNotEmpty &&
                          int.tryParse(maxController.text) == null
                      ? 'Vui lòng nhập số hợp lệ'
                      : null,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (_) => setState(() {}),
          ),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
