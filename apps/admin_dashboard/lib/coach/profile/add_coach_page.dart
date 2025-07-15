import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCoachPage extends StatefulWidget {
  const AddCoachPage({super.key});

  @override
  State<AddCoachPage> createState() => _AddCoachPageState();
}

class _AddCoachPageState extends State<AddCoachPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers cho User
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();
  String? _selectedGender;
  String? _selectedSportId;
  DateTime? _selectedDate;

  // Controllers cho Coach
  final _experienceController = TextEditingController();
  String? _selectedLevel;

  final List<String> _coachLevels = [
    'Sơ cấp',
    'Trung cấp',
    'Cao cấp',
    'Chuyên nghiệp',
  ];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    context.read<SportBloc>().add(const SportEvent.getAllSports(limit: 200));
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    _experienceController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  void _onSave() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      // Tạo User trước
      final newUser = User(
        id: '', // ID sẽ được tạo bởi backend
        fullName: _fullNameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        phoneNumber: _phoneController.text,
        gender: _selectedGender!,
        sportId: _selectedSportId!,
        dateOfBirth: _selectedDate!,
        role: 'Huấn luyện viên',
        status: 'Active',
        imageUrl: '', // Có thể để trống hoặc thêm logic tải ảnh
        createdAt: null,
        updatedAt: null,
      );

      // Dispatch event để tạo User
      context.read<UserBloc>().add(UserEvent.createUser(newUser));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thêm Huấn luyện viên mới')),
      body: MultiBlocListener(
        listeners: [
          // Lắng nghe kết quả từ UserBloc
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state is LoadedUser) {
                // Tạo Coach sau khi User đã được tạo thành công
                final newCoach = Coach(
                  id: '', // ID sẽ được tạo bởi backend
                  userId: state.user.id!,
                  experience: _experienceController.text,
                  level: _selectedLevel!,
                  createdAt:null,
                  updatedAt: DateTime.now(),
                );
                context.read<CoachBloc>().add(CoachEvent.createCoach(newCoach));
              } else if (state is User_Error) {
                setState(() => _isLoading = false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tạo User thất bại: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          // Lắng nghe kết quả từ CoachBloc
          BlocListener<CoachBloc, CoachState>(
            listener: (context, state) {
              setState(() => _isLoading = false);
              if (state is LoadedCoach) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Thêm huấn luyện viên thành công!'),
                    backgroundColor: Colors.green,
                  ),
                );
                context.read<UserBloc>().add(
                const UserEvent.getUsersByRoleWithPagination(
                  role: 'Huấn luyện viên',
                  limit: 1000000,
                ),
              );
                Navigator.of(context).pop(true);
              } else if (state is Coach_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tạo Coach thất bại: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        ],
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Thông tin cá nhân",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _fullNameController,
                  decoration: const InputDecoration(labelText: 'Họ và Tên'),
                  validator: (v) => v!.isEmpty ? 'Không được để trống' : null,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (v) => v!.isEmpty ? 'Không được để trống' : null,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Mật khẩu'),
                  obscureText: true,
                  validator: (v) => v!.isEmpty ? 'Không được để trống' : null,
                ),
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(labelText: 'Số điện thoại'),
                ),
                TextFormField(
                  controller: _dobController,
                  decoration: const InputDecoration(
                    labelText: 'Ngày sinh',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  validator: (v) => v!.isEmpty ? 'Vui lòng chọn ngày' : null,
                ),
                DropdownButtonFormField<String>(
                  value: _selectedGender,
                  decoration: const InputDecoration(labelText: 'Giới tính'),
                  items:
                      ['Nam', 'Nữ']
                          .map(
                            (v) => DropdownMenuItem(value: v, child: Text(v)),
                          )
                          .toList(),
                  onChanged: (v) => setState(() => _selectedGender = v),
                  validator: (v) => v == null ? 'Vui lòng chọn' : null,
                ),
                const SizedBox(height: 24),
                const Text(
                  "Thông tin chuyên môn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                BlocBuilder<SportBloc, SportState>(
                  builder: (context, state) {
                    if (state is LoadedSports) {
                      return DropdownButtonFormField<String>(
                        value: _selectedSportId,
                        decoration: const InputDecoration(
                          labelText: 'Môn thể thao',
                        ),
                        items:
                            state.sports
                                .map(
                                  (s) => DropdownMenuItem(
                                    value: s.id,
                                    child: Text(s.name),
                                  ),
                                )
                                .toList(),
                        onChanged: (v) => setState(() => _selectedSportId = v),
                        validator: (v) => v == null ? 'Vui lòng chọn' : null,
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
                TextFormField(
                  controller: _experienceController,
                  decoration: const InputDecoration(labelText: 'Kinh nghiệm'),
                  validator: (v) => v!.isEmpty ? 'Không được để trống' : null,
                ),
                DropdownButtonFormField<String>(
                  value: _selectedLevel,
                  decoration: const InputDecoration(labelText: 'Cấp độ'),
                  items:
                      _coachLevels
                          .map(
                            (level) => DropdownMenuItem(
                              value: level,
                              child: Text(level),
                            ),
                          )
                          .toList(),
                  onChanged:
                      (newValue) => setState(() => _selectedLevel = newValue),
                  validator: (v) => v == null ? 'Vui lòng chọn' : null,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _onSave,
                    child:
                        _isLoading
                            ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                            : const Text('Tạo mới'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
