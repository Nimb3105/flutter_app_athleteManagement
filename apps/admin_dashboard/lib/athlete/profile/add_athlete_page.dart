import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddAthletePage extends StatefulWidget {
  const AddAthletePage({super.key});

  @override
  State<AddAthletePage> createState() => _AddAthletePageState();
}

class _AddAthletePageState extends State<AddAthletePage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers cho các trường thông tin
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();

  String? _selectedGender;
  String? _selectedSportId;
  DateTime? _selectedDate;
  String? _selectedAthleteType;

  final List<String> _athleteTypes = [
    'Chuyên nghiệp',
    'Bán chuyên nghiệp',
    'Nghiệp dư',
    'Trẻ',
  ];

  @override
  void initState() {
    super.initState();
    // Tải danh sách các môn thể thao để hiển thị trong dropdown
    context.read<SportBloc>().add(
      const SportEvent.getAllSports(limit: 100),
    ); // Tăng limit để lấy hết
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
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
      final now = DateTime.now();
      final newUser = User(
        id: "", // ID sẽ được tạo bởi backend
        fullName: _fullNameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        phoneNumber: _phoneController.text,
        gender: _selectedGender ?? '',
        sportId: _selectedSportId ?? '',
        dateOfBirth: _selectedDate ?? now,
        role: 'Vận động viên', // Gán vai trò cố định
        imageUrl: '',
        status: 'Hoạt động',
        createdAt: null,
        updatedAt: null,
      );

      // Gửi sự kiện tạo User
      context.read<UserBloc>().add(UserEvent.createUser(newUser));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thêm Vận động viên mới')),
      body: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          // Lắng nghe sau khi User được tạo thành công
          if (state is LoadedUser && state.user.role == 'Vận động viên') {
            final userId = state.user.id;
            if (userId != null) {
              final newAthlete = Athlete(
                id: null,
                userId: userId,
                athleteType: _selectedAthleteType!,
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              );
              // Gửi sự kiện tạo Athlete
              context.read<AthleteBloc>().add(
                AthleteEvent.createAthlete(newAthlete),
              );
            }
          }
        },
        child: BlocConsumer<AthleteBloc, AthleteState>(
          listener: (context, state) {
            // Lắng nghe sau khi Athlete được tạo thành công
            if (state is LoadedAthlete) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tạo VĐV thành công!'),
                  backgroundColor: Colors.green,
                ),
              );
              // Tải lại danh sách VĐV ở trang trước và quay về
              context.read<UserBloc>().add(
                const UserEvent.getUsersByRoleWithPagination(
                  role: 'Vận động viên',
                ),
              );
              Navigator.of(context).pop();
            }
            if (state is Athlete_Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Lỗi khi tạo Athlete: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, athleteState) {
            final isLoading =
                context.watch<UserBloc>().state is User_Loading ||
                athleteState is Athlete_Loading;

            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thông tin cá nhân",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _fullNameController,
                      decoration: const InputDecoration(labelText: 'Họ và Tên'),
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Không được để trống' : null,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Không được để trống' : null,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Mật khẩu'),
                      obscureText: true,
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Không được để trống' : null,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Số điện thoại',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    TextFormField(
                      controller: _dobController,
                      decoration: const InputDecoration(
                        labelText: 'Ngày sinh',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      readOnly: true,
                      onTap: () => _selectDate(context),
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Không được để trống' : null,
                    ),
                    DropdownButtonFormField<String>(
                      value: _selectedGender,
                      decoration: const InputDecoration(labelText: 'Giới tính'),
                      items:
                          ['Nam', 'Nữ'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged:
                          (newValue) =>
                              setState(() => _selectedGender = newValue),
                      validator:
                          (value) =>
                              value == null ? 'Vui lòng chọn giới tính' : null,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Thông tin chuyên môn",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                                state.sports.map((sport) {
                                  return DropdownMenuItem<String>(
                                    value: sport.id,
                                    child: Text(sport.name),
                                  );
                                }).toList(),
                            onChanged:
                                (newValue) =>
                                    setState(() => _selectedSportId = newValue),
                            validator:
                                (value) =>
                                    value == null
                                        ? 'Vui lòng chọn môn thể thao'
                                        : null,
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedAthleteType,
                      decoration: const InputDecoration(
                        labelText: 'Loại Vận động viên',
                        border: OutlineInputBorder(),
                      ),
                      items:
                          _athleteTypes.map((String type) {
                            return DropdownMenuItem<String>(
                              value: type,
                              child: Text(type),
                            );
                          }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedAthleteType = newValue;
                        });
                      },
                      validator:
                          (value) =>
                              value == null
                                  ? 'Vui lòng chọn loại vận động viên'
                                  : null,
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isLoading ? null : _onSave,
                        child:
                            isLoading
                                ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                                : const Text('Lưu'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
