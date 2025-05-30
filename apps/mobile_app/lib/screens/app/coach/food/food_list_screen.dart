import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FoodRepository>(
          create: (_) => FoodRepository(baseUrl: ApiConstants.baseUrl),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
        home: const FoodListScreen(),
      ),
    );
  }
}

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({super.key});

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  late FoodBloc _foodBloc;
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final int _limit = 10;
  List<Food> _foods = [];
  bool _isLoadingMore = false;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _foodBloc = FoodBloc(foodRepository: context.read<FoodRepository>());
    _foodBloc.add(const GetAllFoods(page: 1, limit: 10));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _foodBloc.close();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_isLoadingMore &&
        _hasMore) {
      setState(() => _isLoadingMore = true);
      _foodBloc.add(GetAllFoods(page: _currentPage + 1, limit: _limit));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _foodBloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Danh sách món ăn')),
        body: BlocConsumer<FoodBloc, FoodState>(
          listener: (context, state) {
            if (state is LoadedFoods) {
              setState(() {
                _currentPage = state.currentPage;
                _hasMore = state.hasMore;
                if (_currentPage == 1) {
                  _foods = List.from(
                    state.foods,
                  ); // load lại trang đầu, gán mới hoàn toàn
                } else {
                  _foods = [
                    ..._foods,
                    ...state.foods,
                  ]; // load thêm trang tiếp, nối danh sách
                }
                _isLoadingMore = false;
                if (_currentPage == 1) {
                  _foods = state.foods;
                } else {
                  _foods.addAll(state.foods);
                }
                _isLoadingMore = false;
              });
            } else if (state is Food_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              setState(() => _isLoadingMore = false);
            }
          },
          builder: (context, state) {
            if (state is Food_Loading && _currentPage == 1) {
              return const Center(child: CircularProgressIndicator());
            }

            return RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  _currentPage = 1;
                  _foods.clear();
                  _hasMore = true;
                });
                _foodBloc.add(const GetAllFoods(page: 1, limit: 10));
              },
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _foods.length + (_hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _foods.length && _hasMore) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  final food = _foods[index];
                  return ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: food.foodImage,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      placeholder:
                          (context, url) => const CircularProgressIndicator(),
                      errorWidget:
                          (context, url, error) => const Icon(Icons.error),
                    ),
                    title: Text(food.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Loại: ${food.foodType}'),
                        Text('Mô tả: ${food.description}'),
                        Text('Calo: ${food.calories} kcal'),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
