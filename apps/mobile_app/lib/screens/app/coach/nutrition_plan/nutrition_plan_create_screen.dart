import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

class NutritionPlanCreateScreen extends StatefulWidget {
  final Athlete athlete;

  const NutritionPlanCreateScreen({super.key, required this.athlete});

  @override
  State<NutritionPlanCreateScreen> createState() =>
      _NutritionPlanCreateScreenState();
}

class _NutritionPlanCreateScreenState extends State<NutritionPlanCreateScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _mealTypeController = TextEditingController();
  DateTime _selectedMealTime = DateTime.now();
  final List<String> _selectedFoodIds = [];
  late final FoodBloc _foodBloc;

  @override
  void initState() {
    super.initState();
    // Khởi tạo FoodBloc và load danh sách món ăn
    _foodBloc = FoodBloc(foodRepository: context.read<FoodRepository>())
      ..add(const GetAllFoods());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _mealTypeController.dispose();
    _foodBloc.close(); // Đóng FoodBloc khi dispose
    super.dispose();
  }

  Future<void> _selectMealTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedMealTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        // ignore: use_build_context_synchronously
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedMealTime),
      );
      if (pickedTime != null) {
        setState(() {
          _selectedMealTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  Future<void> _selectFoods(BuildContext context) async {
    final state = _foodBloc.state;

    if (state is LoadedFoods) {
      final selected = await showDialog<List<String>>(
        context: context,
        builder: (context) {
          return MultiSelectDialog(
            foods: state.foods,
            initialSelectedIds: _selectedFoodIds,
          );
        },
      );

      if (selected != null) {
        setState(() {
          _selectedFoodIds.clear();
          _selectedFoodIds.addAll(selected);
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Không thể tải danh sách món ăn')),
      );
    }
  }

  void _submitForm() {
    if (widget.athlete.id == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lỗi: Athlete ID không hợp lệ')),
      );
      return;
    }
    if (_formKey.currentState!.validate()) {
      final nutritionPlan = NutritionPlan(
        name: _nameController.text,
        description: _descriptionController.text,
        userId: widget.athlete.userId,
        createBy: widget.athlete.id!,
        mealCount: _selectedFoodIds.length,
        mealType: _mealTypeController.text,
        mealTime: _selectedMealTime.toUtc(),
        totalCalories: 0, // Backend sẽ tính toán dựa trên foodIds
        foodIds: _selectedFoodIds, // Gửi danh sách foodIds
      );
      context.read<NutritionPlanBloc>().add(CreateNutritionPlan(nutritionPlan));
      //   context.read<NutritionPlanBloc>().stream.listen((state) {
      //   print('NutritionPlanBloc State after submit: $state');
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _foodBloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Tạo kế hoạch dinh dưỡng')),
        body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
          listener: (context, state) {
            if (kDebugMode) {
              print('NutritionPlanBloc State: $state');
            }
            if (state is NutritionPlan_Success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              Navigator.pop(context);
              context.read<NutritionPlanBloc>().add(
                GetNutritionPlansByUserId(widget.athlete.userId),
              );
            } else if (state is NutritionPlan_Error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Tên kế hoạch',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập tên kế hoạch';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(labelText: 'Mô tả'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập mô tả';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _mealTypeController,
                    decoration: const InputDecoration(labelText: 'Loại bữa ăn'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập loại bữa ăn';
                      }
                      return null;
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Thời gian bữa ăn: ${_selectedMealTime.toLocal().toString().substring(0, 16)}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: () => _selectMealTime(context),
                  ),
                  ListTile(
                    title: Text(
                      'Món ăn đã chọn: ${_selectedFoodIds.isEmpty ? "Chưa chọn" : _selectedFoodIds.length.toString()} món',
                    ),
                    trailing: const Icon(Icons.fastfood),
                    onTap: () => _selectFoods(context),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<FoodBloc, FoodState>(
                    builder: (context, state) {
                      if (state is Food_Loading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return ElevatedButton(
                        onPressed: _submitForm,
                        child: const Text('Tạo kế hoạch'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget dialog để chọn nhiều món ăn
class MultiSelectDialog extends StatefulWidget {
  final List<Food> foods;
  final List<String> initialSelectedIds;

  const MultiSelectDialog({
    super.key,
    required this.foods,
    required this.initialSelectedIds,
  });

  @override
  State<MultiSelectDialog> createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  late List<String> _tempSelectedIds;

  @override
  void initState() {
    super.initState();
    _tempSelectedIds = List.from(widget.initialSelectedIds);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Chọn món ăn'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.foods.length,
          itemBuilder: (context, index) {
            final food = widget.foods[index];
            return CheckboxListTile(
              title: Text(food.name),
              value: _tempSelectedIds.contains(food.id),
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) {
                    _tempSelectedIds.add(food.id!);
                  } else {
                    _tempSelectedIds.remove(food.id);
                  }
                });
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Hủy'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, _tempSelectedIds),
          child: const Text('Xác nhận'),
        ),
      ],
    );
  }
}
