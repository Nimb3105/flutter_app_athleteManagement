import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditCoachPage extends StatefulWidget {
  final User coach;
  const EditCoachPage({super.key, required this.coach});

  @override
  State<EditCoachPage> createState() => _EditCoachPageState();
}

class _EditCoachPageState extends State<EditCoachPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers cho User
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _dobController;
  String? _selectedGender;
  String? _selectedSportId;
  DateTime? _selectedDate;

  // Controllers cho Coach
  late TextEditingController _experienceController;
  String? _selectedLevel;

  // State cho logic xóa VĐV
  List<CoachAthlete> _coachAthletes = [];

  final List<String> _coachLevels = [
    'Sơ cấp',
    'Trung cấp',
    'Cao cấp',
    'Chuyên nghiệp',
  ];

  bool _isUserUpdateSuccess = false;
  bool _isCoachUpdateSuccess = false;

  @override
  void initState() {
    super.initState();
    final user = widget.coach;
    _fullNameController = TextEditingController(text: user.fullName);
    _emailController = TextEditingController(text: user.email);
    _phoneController = TextEditingController(text: user.phoneNumber);
    _selectedDate = user.dateOfBirth;
    _dobController = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(user.dateOfBirth.toLocal()),
    );
    _selectedGender = user.gender;
    _selectedSportId = user.sportId;

    context.read<CoachBloc>().add(CoachEvent.getCoachByUserId(user.id!));
    context.read<SportBloc>().add(const SportEvent.getAllSports(limit: 200));
    // Lấy danh sách VĐV hiện tại của HLV
    context.read<CoachAthleteBloc>().add(
      CoachAthleteEvent.getAllByCoachId(user.id!),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
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

  void _onSave() async {
    if (_formKey.currentState!.validate()) {
      final bool sportHasChanged = _selectedSportId != widget.coach.sportId;

      if (sportHasChanged && _coachAthletes.isNotEmpty) {
        final bool? confirmed = await showDialog<bool>(
          context: context,
          builder:
              (dialogContext) => AlertDialog(
                title: const Text('Xác nhận thay đổi'),
                content: const Text(
                  'Thay đổi môn thể thao sẽ xóa tất cả các vận động viên hiện tại khỏi danh sách quản lý của huấn luyện viên này. Bạn có chắc chắn muốn tiếp tục?',
                ),
                actions: [
                  TextButton(
                    child: const Text('Hủy'),
                    onPressed: () => Navigator.of(dialogContext).pop(false),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Xác nhận'),
                    onPressed: () {
                      Navigator.of(dialogContext).pop(true);
                    },
                  ),
                ],
              ),
        );

        if (confirmed != true) {
          return; // Hủy bỏ lưu nếu người dùng không xác nhận
        }

        // Nếu xác nhận, thực hiện xóa
        context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.deleteAllByCoachId(widget.coach.id!),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Đã xóa các VĐV cũ. Vui lòng gán lại VĐV cho môn thể thao mới.',
            ),
            backgroundColor: Colors.orange,
          ),
        );
      }

      setState(() {
        _isUserUpdateSuccess = false;
        _isCoachUpdateSuccess = false;
      });

      final updatedUser = widget.coach.copyWith(
        fullName: _fullNameController.text,
        email: _emailController.text,
        phoneNumber: _phoneController.text,
        gender: _selectedGender ?? widget.coach.gender,
        sportId: _selectedSportId ?? widget.coach.sportId,
        dateOfBirth: _selectedDate ?? widget.coach.dateOfBirth,
        updatedAt: DateTime.now().toLocal(),
      );
      context.read<UserBloc>().add(
        UserEvent.updateUser(widget.coach.id!, updatedUser),
      );

      final coachState = context.read<CoachBloc>().state;
      if (coachState is LoadedCoach) {
        final updatedCoach = coachState.coach.copyWith(
          experience: _experienceController.text,
          level: _selectedLevel!,
          updatedAt: DateTime.now(),
        );
        context.read<CoachBloc>().add(
          CoachEvent.updateCoach(coachState.coach.id!, updatedCoach),
        );
      }
    }
  }

  void _checkAndUpdateSuccess() {
    if (_isUserUpdateSuccess && _isCoachUpdateSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cập nhật huấn luyện viên thành công!'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.of(context).pop(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sửa thông tin Huấn luyện viên')),
      body: MultiBlocListener(
        listeners: [
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state is User_Success) {
                setState(() => _isUserUpdateSuccess = true);
                _checkAndUpdateSuccess();
              } else if (state is User_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lỗi cập nhật User: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          BlocListener<CoachBloc, CoachState>(
            listener: (context, state) {
              if (state is Coach_Success) {
                setState(() => _isCoachUpdateSuccess = true);
                _checkAndUpdateSuccess();
              } else if (state is Coach_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lỗi cập nhật Coach: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          BlocListener<CoachAthleteBloc, CoachAthleteState>(
            listener: (context, state) {
              if (state is LoadedCoachAthletes) {
                setState(() {
                  _coachAthletes = state.coachAthletes;
                });
              }
            },
          ),
        ],
        child: BlocBuilder<CoachBloc, CoachState>(
          builder: (context, coachState) {
            if (coachState is LoadedCoach) {
              _experienceController = TextEditingController(
                text: coachState.coach.experience,
              );
              _selectedLevel ??= coachState.coach.level;
            }

            final isLoading =
                context.watch<UserBloc>().state is User_Loading ||
                coachState is Coach_Loading;

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
                          (v) => v!.isEmpty ? 'Không được để trống' : null,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator:
                          (v) => v!.isEmpty ? 'Không được để trống' : null,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Số điện thoại',
                      ),
                    ),
                    TextFormField(
                      controller: _dobController,
                      decoration: const InputDecoration(
                        labelText: 'Ngày sinh',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                    DropdownButtonFormField<String>(
                      value: _selectedGender,
                      decoration: const InputDecoration(labelText: 'Giới tính'),
                      items:
                          ['Nam', 'Nữ']
                              .map(
                                (v) =>
                                    DropdownMenuItem(value: v, child: Text(v)),
                              )
                              .toList(),
                      onChanged: (v) => setState(() => _selectedGender = v),
                      validator: (v) => v == null ? 'Vui lòng chọn' : null,
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
                                state.sports
                                    .map(
                                      (s) => DropdownMenuItem(
                                        value: s.id,
                                        child: Text(s.name),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (newSportId) {
                              setState(() {
                                _selectedSportId = newSportId;
                              });
                            },
                            validator:
                                (v) => v == null ? 'Vui lòng chọn' : null,
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                    if (coachState is LoadedCoach) ...[
                      TextFormField(
                        controller: _experienceController,
                        decoration: const InputDecoration(
                          labelText: 'Kinh nghiệm',
                        ),
                        validator:
                            (v) => v!.isEmpty ? 'Không được để trống' : null,
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
                            (newValue) =>
                                setState(() => _selectedLevel = newValue),
                        validator: (v) => v == null ? 'Vui lòng chọn' : null,
                      ),
                    ] else ...[
                      const Center(child: CircularProgressIndicator()),
                    ],
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
                                : const Text('Lưu thay đổi'),
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
