// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:core/core.dart';

// class NutritionPlanCreateScreen extends StatefulWidget {
//   final Athlete athlete;

//   const NutritionPlanCreateScreen({super.key, required this.athlete});

//   @override
//   State<NutritionPlanCreateScreen> createState() =>
//       _NutritionPlanCreateScreenState();
// }

// class _NutritionPlanCreateScreenState extends State<NutritionPlanCreateScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _mealTypeController = TextEditingController();
//   DateTime _selectedMealTime = DateTime.now();
//   final List<String> _selectedFoodIds = [];
//   late final FoodBloc _foodBloc;

//   @override
//   void initState() {
//     super.initState();
//     // Khởi tạo FoodBloc và load danh sách món ăn
//     _foodBloc = FoodBloc(foodRepository: context.read<FoodRepository>())
//       ..add(const GetAllFoods());
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _descriptionController.dispose();
//     _mealTypeController.dispose();
//     _foodBloc.close(); // Đóng FoodBloc khi dispose
//     super.dispose();
//   }

//   Future<void> _selectMealTime(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: _selectedMealTime,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );
//     if (pickedDate != null) {
//       final TimeOfDay? pickedTime = await showTimePicker(
//         // ignore: use_build_context_synchronously
//         context: context,
//         initialTime: TimeOfDay.fromDateTime(_selectedMealTime),
//       );
//       if (pickedTime != null) {
//         setState(() {
//           _selectedMealTime = DateTime(
//             pickedDate.year,
//             pickedDate.month,
//             pickedDate.day,
//             pickedTime.hour,
//             pickedTime.minute,
//           );
//         });
//       }
//     }
//   }

//   Future<void> _selectFoods(BuildContext context) async {
//     final state = _foodBloc.state;

//     if (state is LoadedFoods) {
//       final selected = await showDialog<List<String>>(
//         context: context,
//         builder: (context) {
//           return MultiSelectDialog(
//             foods: state.foods,
//             initialSelectedIds: _selectedFoodIds,
//           );
//         },
//       );

//       if (selected != null) {
//         setState(() {
//           _selectedFoodIds.clear();
//           _selectedFoodIds.addAll(selected);
//         });
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Không thể tải danh sách món ăn')),
//       );
//     }
//   }

//   void _submitForm() {
//     if (widget.athlete.id == null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Lỗi: Athlete ID không hợp lệ')),
//       );
//       return;
//     }
//     if (_formKey.currentState!.validate()) {
//       final nutritionPlan = NutritionPlan(
//         name: _nameController.text,
//         description: _descriptionController.text,
//         userId: widget.athlete.userId,
//         createBy: widget.athlete.id!,
//         mealCount: _selectedFoodIds.length,
//         mealType: _mealTypeController.text,
//         mealTime: _selectedMealTime.toUtc(),
//         totalCalories: 0, // Backend sẽ tính toán dựa trên foodIds
//         foodIds: _selectedFoodIds, // Gửi danh sách foodIds
//       );
//       context.read<NutritionPlanBloc>().add(CreateNutritionPlan(nutritionPlan));
//       //   context.read<NutritionPlanBloc>().stream.listen((state) {
//       //   print('NutritionPlanBloc State after submit: $state');
//       // });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => _foodBloc,
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Tạo kế hoạch dinh dưỡng')),
//         body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
//           listener: (context, state) {
//             if (kDebugMode) {
//               print('NutritionPlanBloc State: $state');
//             }
//             if (state is NutritionPlan_Success) {
//               ScaffoldMessenger.of(
//                 context,
//               ).showSnackBar(SnackBar(content: Text(state.message)));
//               Navigator.pop(context);
//               context.read<NutritionPlanBloc>().add(
//                 GetNutritionPlansByUserId(widget.athlete.userId),
//               );
//             } else if (state is NutritionPlan_Error) {
//               ScaffoldMessenger.of(
//                 context,
//               ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
//             }
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: ListView(
//                 children: [
//                   TextFormField(
//                     controller: _nameController,
//                     decoration: const InputDecoration(
//                       labelText: 'Tên kế hoạch',
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Vui lòng nhập tên kế hoạch';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 10),
//                   TextFormField(
//                     controller: _descriptionController,
//                     decoration: const InputDecoration(labelText: 'Mô tả'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Vui lòng nhập mô tả';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 10),
//                   TextFormField(
//                     controller: _mealTypeController,
//                     decoration: const InputDecoration(labelText: 'Loại bữa ăn'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Vui lòng nhập loại bữa ăn';
//                       }
//                       return null;
//                     },
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Thời gian bữa ăn: ${_selectedMealTime.toLocal().toString().substring(0, 16)}',
//                     ),
//                     trailing: const Icon(Icons.calendar_today),
//                     onTap: () => _selectMealTime(context),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Món ăn đã chọn: ${_selectedFoodIds.isEmpty ? "Chưa chọn" : _selectedFoodIds.length.toString()} món',
//                     ),
//                     trailing: const Icon(Icons.fastfood),
//                     onTap: () => _selectFoods(context),
//                   ),
//                   const SizedBox(height: 20),
//                   BlocBuilder<FoodBloc, FoodState>(
//                     builder: (context, state) {
//                       if (state is Food_Loading) {
//                         return const Center(child: CircularProgressIndicator());
//                       }
//                       return ElevatedButton(
//                         onPressed: _submitForm,
//                         child: const Text('Tạo kế hoạch'),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Widget dialog để chọn nhiều món ăn
// class MultiSelectDialog extends StatefulWidget {
//   final List<Food> foods;
//   final List<String> initialSelectedIds;

//   const MultiSelectDialog({
//     super.key,
//     required this.foods,
//     required this.initialSelectedIds,
//   });

//   @override
//   State<MultiSelectDialog> createState() => _MultiSelectDialogState();
// }

// class _MultiSelectDialogState extends State<MultiSelectDialog> {
//   late List<String> _tempSelectedIds;

//   @override
//   void initState() {
//     super.initState();
//     _tempSelectedIds = List.from(widget.initialSelectedIds);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Chọn món ăn'),
//       content: SizedBox(
//         width: double.maxFinite,
//         child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: widget.foods.length,
//           itemBuilder: (context, index) {
//             final food = widget.foods[index];
//             return CheckboxListTile(
//               title: Text(food.name),
//               value: _tempSelectedIds.contains(food.id),
//               onChanged: (bool? value) {
//                 setState(() {
//                   if (value == true) {
//                     _tempSelectedIds.add(food.id!);
//                   } else {
//                     _tempSelectedIds.remove(food.id);
//                   }
//                 });
//               },
//             );
//           },
//         ),
//       ),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Hủy'),
//         ),
//         TextButton(
//           onPressed: () => Navigator.pop(context, _tempSelectedIds),
//           child: const Text('Xác nhận'),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/screens/app/coach/nutrition_plan/food_select_screen.dart';

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
  DateTime? _selectedMealTime;
  final List<String> _selectedFoodIds = [];

  @override
  void initState() {
    super.initState();
    context.read<FoodBloc>().add(const GetAllFoods());
    _selectedMealTime = DateTime.now();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _mealTypeController.dispose();
    super.dispose();
  }

  Future<void> _selectMealTime(BuildContext context) async {
    final now = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedMealTime ?? now,
      firstDate: now,
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        // ignore: use_build_context_synchronously
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedMealTime ?? now),
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

  Future<void> _selectFood(BuildContext context) async {
    final String? selectedId = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => FoodSelectScreen(
              selectedFoodIds: _selectedFoodIds,
              onFoodSelected: (foodId) {},
              onFoodDeselected: (foodId) {},
            ),
      ),
    );

    if (selectedId != null && !_selectedFoodIds.contains(selectedId)) {
      setState(() {
        _selectedFoodIds.add(selectedId);
      });
    }
  }

  String? _validateForm() {
    if (_nameController.text.isEmpty) return 'Vui lòng nhập tên kế hoạch';
    if (_descriptionController.text.isEmpty) return 'Vui lòng nhập mô tả';
    if (_mealTypeController.text.isEmpty) return 'Vui lòng nhập loại bữa ăn';
    if (_selectedMealTime == null) return 'Vui lòng chọn thời gian ăn';
    if (_selectedFoodIds.isEmpty) return 'Vui lòng chọn ít nhất một món ăn';
    return null;
  }

  void _submitForm() {
    if (widget.athlete.id == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lỗi: Athlete ID hoặc User ID không hợp lệ'),
        ),
      );
      return;
    }
    if (_formKey.currentState!.validate()) {
      final validationError = _validateForm();
      if (validationError != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(validationError)));
        return;
      }

      final nutritionPlan = NutritionPlan(
        name: _nameController.text,
        description: _descriptionController.text,
        userId: widget.athlete.userId,
        createBy: widget.athlete.id!,
        mealCount: _selectedFoodIds.length,
        mealType: _mealTypeController.text,
        mealTime: _selectedMealTime!.toUtc(),
        totalCalories: 0,
        foodIds: _selectedFoodIds,
      );

      context.read<NutritionPlanBloc>().add(CreateNutritionPlan(nutritionPlan));
    }
  }

  void _removeFood(String foodId) {
    setState(() {
      _selectedFoodIds.remove(foodId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo kế hoạch dinh dưỡng'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Tên kế hoạch',
                    ),
                    enabled: context.watch<FoodBloc>().state is! Food_Loading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(labelText: 'Mô tả'),
                    enabled: context.watch<FoodBloc>().state is! Food_Loading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _mealTypeController,
                    decoration: const InputDecoration(labelText: 'Loại bữa ăn'),
                    enabled: context.watch<FoodBloc>().state is! Food_Loading,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: Text(
                      _selectedMealTime == null
                          ? 'Thời gian bữa ăn'
                          : 'Thời gian: ${DateFormat('yyyy-MM-dd HH:mm').format(_selectedMealTime!.toLocal())}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                    onTap:
                        context.watch<FoodBloc>().state is Food_Loading
                            ? null
                            : () => _selectMealTime(context),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed:
                        context.watch<FoodBloc>().state is Food_Loading
                            ? null
                            : () => _selectFood(context),
                    child: const Text('Chọn món ăn'),
                  ),
                  const SizedBox(height: 16),
                  SelectedFoodsWidget(
                    selectedFoodIds: _selectedFoodIds,
                    onRemove: _removeFood,
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<FoodBloc, FoodState>(
                    builder: (context, state) {
                      final isLoading = state is Food_Loading;
                      return ElevatedButton(
                        onPressed: isLoading ? null : _submitForm,
                        child:
                            isLoading
                                ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                                : const Text('Tạo kế hoạch'),
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

class SelectedFoodsWidget extends StatelessWidget {
  final List<String> selectedFoodIds;
  final Function(String) onRemove;

  const SelectedFoodsWidget({
    super.key,
    required this.selectedFoodIds,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      builder: (context, state) {
        if (state is LoadedFoods && selectedFoodIds.isNotEmpty) {
          final foods = state.foods;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Món ăn đã chọn',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...selectedFoodIds.map((foodId) {
                final food = foods.firstWhere(
                  (f) => f.id == foodId,
                  orElse:
                      () => Food(
                        id: foodId,
                        name: 'Không rõ món ăn',
                        foodType: '',
                        calories: 0,
                        protein: 0,
                        carbs: 0,
                        fat: 0,
                        createdAt: null,
                        updatedAt: null,
                        foodImage: '',
                        description: '',
                      ),
                );
                return ListTile(
                  title: Text(food.name),
                  subtitle: Text(
                    'Loại: ${food.foodType}, Calo: ${food.calories}',
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => onRemove(foodId),
                  ),
                );
              }),
            ],
          );
        }
        return const Text('Chưa chọn món ăn nào');
      },
    );
  }
}
