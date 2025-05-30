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
//   List<String> _selectedFoodIds = [];

//   int _currentPage = 1;
//   bool _hasMoreFoods = true;

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _descriptionController.dispose();
//     _mealTypeController.dispose();
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

//   void _submitForm() {
//     if (widget.athlete.id == null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Lỗi: Athlete ID không hợp lệ')),
//       );
//       return;
//     }
//     if (_formKey.currentState!.validate()) {
//       final nutritionPlan = NutritionPlan(
//         id: null,
//         name: _nameController.text,
//         description: _descriptionController.text,
//         userId: widget.athlete.userId,
//         createBy: widget.athlete.id!, // giả định thôi chứ chưa xử lý
//         mealCount: _selectedFoodIds.length,
//         mealType: _mealTypeController.text,
//         mealTime: _selectedMealTime.toUtc(),
//         totalCalories: 0, // Calculate based on foods if needed
//         createdAt: null,
//         updatedAt: null,
//       );

//       context.read<NutritionPlanBloc>().add(CreateNutritionPlan(nutritionPlan));
//     }
//   }

//   void _loadFoods(int page) {
//     context.read<FoodBloc>().add(FoodEvent.getAllFoods(page: page, limit: 10));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => FoodBloc(foodRepository: RepositoryProvider.of(context))
//         ..add(const FoodEvent.getAllFoods(page: 1, limit: 10)),
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Tạo kế hoạch dinh dưỡng')),
//         body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
//           listener: (context, state) {
//             if (state is NutritionPlan_Success) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.message)),
//               );
//               Navigator.pop(context);
//               context.read<NutritionPlanBloc>().add(
//                     GetNutritionPlansByUserId(widget.athlete.id!),
//                   );
//             } else if (state is NutritionPlan_Error) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text('Lỗi: ${state.message}')),
//               );
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
//                   SizedBox(height: 10),
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
//                   SizedBox(height: 10),
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
//                   BlocBuilder<FoodBloc, FoodState>(
//                     builder: (context, state) {
//                       if (state is Food_Loading) {
//                         return const Center(child: CircularProgressIndicator());
//                       } else if (state is LoadedFoods) {
//                         _hasMoreFoods = state.hasMore;
//                         _currentPage = state.currentPage;
//                         return FoodSelectionList(
//                           foods: state.foods,
//                           selectedFoodIds: _selectedFoodIds,
//                           onSelectionChanged: (selectedIds) {
//                             setState(() {
//                               _selectedFoodIds = selectedIds;
//                             });
//                           },
//                           currentPage: _currentPage,
//                           hasMore: _hasMoreFoods,
//                           onPageChanged: (newPage) {
//                             _loadFoods(newPage);
//                           },
//                         );
//                       } else if (state is Food_Error) {
//                         return Text('Lỗi khi tải món ăn: ${state.message}');
//                       }
//                       return const Text('Không có món ăn nào để chọn');
//                     },
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: _submitForm,
//                     child: const Text('Tạo kế hoạch'),
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

// class FoodSelectionList extends StatelessWidget {
//   final List<Food> foods;
//   final List<String> selectedFoodIds;
//   final Function(List<String>) onSelectionChanged;
//   final int currentPage;
//   final bool hasMore;
//   final Function(int) onPageChanged;

//   const FoodSelectionList({
//     super.key,
//     required this.foods,
//     required this.selectedFoodIds,
//     required this.onSelectionChanged,
//     required this.currentPage,
//     required this.hasMore,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Chọn món ăn',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         SizedBox(
//           height: 300, // giới hạn chiều cao để tránh ListView vô tận
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: foods.length,
//             itemBuilder: (context, index) {
//               final food = foods[index];
//               return Card(
//                 child: CheckboxListTile(
//                   value: selectedFoodIds.contains(food.id),
//                   onChanged: (bool? selected) {
//                     List<String> updated = List.from(selectedFoodIds);
//                     if (selected == true) {
//                       updated.add(food.id!);
//                     } else {
//                       updated.remove(food.id);
//                     }
//                     onSelectionChanged(updated);
//                   },
//                   title: Text(food.name),
//                   subtitle: Text('${food.calories} kcal'),
//                   // ignore: unnecessary_null_comparison
//                   secondary: food.foodImage != null
//                       ? ClipRRect(
//                           borderRadius: BorderRadius.circular(4),
//                           child: Image.network(
//                             food.foodImage,
//                             width: 48,
//                             height: 48,
//                             fit: BoxFit.cover,
//                           ),
//                         )
//                       : const Icon(Icons.fastfood),
//                 ),
//               );
//             },
//           ),
//         ),
//         const SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Đã chọn: ${selectedFoodIds.length} món',
//               style: const TextStyle(fontWeight: FontWeight.w500),
//             ),
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: currentPage > 1
//                       ? () => onPageChanged(currentPage - 1)
//                       : null,
//                   child: const Text('Trước'),
//                 ),
//                 const SizedBox(width: 10),
//                 Text('Trang $currentPage'),
//                 const SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: hasMore ? () => onPageChanged(currentPage + 1) : null,
//                   child: const Text('Tiếp'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/food/food_list_screen.dart';

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
  List<String> _selectedFoodIds = [];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _mealTypeController.dispose();
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

  void _submitForm() {
    if (widget.athlete.id == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lỗi: Athlete ID không hợp lệ')),
      );
      return;
    }
    if (_formKey.currentState!.validate()) {
      final nutritionPlan = NutritionPlan(
        id: null,
        name: _nameController.text,
        description: _descriptionController.text,
        userId: widget.athlete.userId,
        createBy: widget.athlete.id!, // giả định thôi chứ chưa xử lý
        mealCount: _selectedFoodIds.length,
        mealType: _mealTypeController.text,
        mealTime: _selectedMealTime.toUtc(),
        totalCalories: 0, // Calculate based on foods if needed
        createdAt: null,
        updatedAt: null,
      );

      context.read<NutritionPlanBloc>().add(CreateNutritionPlan(nutritionPlan));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tạo kế hoạch dinh dưỡng')),
      body: BlocListener<NutritionPlanBloc, NutritionPlanState>(
        listener: (context, state) {
          if (state is NutritionPlan_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            Navigator.pop(context);
            context.read<NutritionPlanBloc>().add(
                  GetNutritionPlansByUserId(widget.athlete.id!),
                );
          } else if (state is NutritionPlan_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Lỗi: ${state.message}')),
            );
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
                SizedBox(height: 10),
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
                SizedBox(height: 10),
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
                FoodListScreen(
                  // selectedFoodIds: _selectedFoodIds,
                  // onSelectionChanged: (selectedIds) {
                  //   setState(() {
                  //     _selectedFoodIds = selectedIds;
                  //   });
                  // },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Tạo kế hoạch'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}