import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditAthletePage extends StatefulWidget {
  final User athlete;
  const EditAthletePage({super.key, required this.athlete});

  @override
  State<EditAthletePage> createState() => _EditAthletePageState();
}

class _EditAthletePageState extends State<EditAthletePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _dobController;

  String? _selectedGender;
  String? _selectedSportId;
  DateTime? _selectedDate;
  bool _isUserUpdateSuccess = false;
  bool _isAthleteUpdateSuccess = false;

  // Vẫn giữ lại để biết HLV hiện tại là ai
  CoachAthlete? _currentCoachAthlete;
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
    final athlete = widget.athlete;
    _fullNameController = TextEditingController(text: athlete.fullName);
    _emailController = TextEditingController(text: athlete.email);
    _phoneController = TextEditingController(text: athlete.phoneNumber);
    _selectedDate = athlete.dateOfBirth;
    _dobController = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(athlete.dateOfBirth.toLocal()),
    );
    _selectedGender = athlete.gender;
    _selectedSportId = athlete.sportId;

    // Tải dữ liệu cần thiết
    context.read<AthleteBloc>().add(
      AthleteEvent.getAthleteByUserId(athlete.id!),
    );
    context.read<SportBloc>().add(const SportEvent.getAllSports(limit: 200));
    context.read<CoachAthleteBloc>().add(
      CoachAthleteEvent.getByAthleteId(athlete.id!),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
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
      // Reset trạng thái thành công trước mỗi lần lưu
      setState(() {
        _isUserUpdateSuccess = false;
        _isAthleteUpdateSuccess = false;
      });

      final updatedUser = widget.athlete.copyWith(
        fullName: _fullNameController.text,
        email: _emailController.text,
        phoneNumber: _phoneController.text,
        gender: _selectedGender ?? widget.athlete.gender,
        sportId: _selectedSportId ?? widget.athlete.sportId,
        dateOfBirth: _selectedDate ?? widget.athlete.dateOfBirth,
        updatedAt: DateTime.now(),
      );

      final athleteState = context.read<AthleteBloc>().state;
      if (athleteState is LoadedAthlete) {
        final updatedAthlete = athleteState.athlete.copyWith(
          athleteType: _selectedAthleteType!,
          updatedAt: DateTime.now(),
        );
        // Gửi sự kiện cập nhật User và Athlete
        context.read<UserBloc>().add(
          UserEvent.updateUser(widget.athlete.id!, updatedUser),
        );
        context.read<AthleteBloc>().add(
          AthleteEvent.updateAthlete(athleteState.athlete.id!, updatedAthlete),
        );
      }
    }
  }

  void _checkAndUpdateSuccess() {
    if (_isUserUpdateSuccess && _isAthleteUpdateSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cập nhật vận động viên thành công!'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.of(context).pop(true); // Trả về true
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sửa thông tin Vận động viên')),
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
          BlocListener<AthleteBloc, AthleteState>(
            listener: (context, state) {
              if (state is Athlete_Success) {
                setState(() => _isAthleteUpdateSuccess = true);
                _checkAndUpdateSuccess();
              } else if (state is Athlete_Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lỗi cập nhật Athlete: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          // Lắng nghe để lấy HLV hiện tại
          BlocListener<CoachAthleteBloc, CoachAthleteState>(
            listenWhen: (previous, current) => current is LoadedCoachAthlete,
            listener: (context, state) {
              if (state is LoadedCoachAthlete) {
                setState(() {
                  _currentCoachAthlete = state.coachAthlete;
                });
              }
            },
          ),
        ],
        child: BlocBuilder<AthleteBloc, AthleteState>(
          builder: (context, athleteState) {
            if (athleteState is LoadedAthlete && _selectedAthleteType == null) {
              _selectedAthleteType = athleteState.athlete.athleteType;
            }

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
                          ['Nam', 'Nữ', 'Khác']
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

                    // Dropdown Môn thể thao
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
                            onChanged: (newValue) {
                              if (newValue != null &&
                                  newValue != _selectedSportId) {
                                setState(() {
                                  _selectedSportId = newValue;
                                });
                                // LOGIC MỚI: Nếu có HLV đang được gán, hãy xóa mối quan hệ này
                                if (_currentCoachAthlete != null) {
                                  context.read<CoachAthleteBloc>().add(
                                    CoachAthleteEvent.deleteCoachAthlete(
                                      _currentCoachAthlete!.id!,
                                    ),
                                  );
                                  // Reset state cục bộ
                                  setState(() {
                                    _currentCoachAthlete = null;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Đã xóa HLV cũ do đổi môn thể thao. Vui lòng gán lại HLV mới ở trang chi tiết.",
                                      ),
                                      backgroundColor: Colors.orange,
                                    ),
                                  );
                                }
                              }
                            },
                            validator:
                                (v) => v == null ? 'Vui lòng chọn' : null,
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
                    if (athleteState is LoadedAthlete)
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
