import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SportAthleteScreen extends StatelessWidget {
  final Athlete athlete;

  const SportAthleteScreen({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return SportAthleteForm(athlete: athlete);
  }
}

class SportAthleteForm extends StatefulWidget {
  final Athlete athlete;

  const SportAthleteForm({super.key, required this.athlete});

  @override
  State<SportAthleteForm> createState() => _SportAthleteFormState();
}

class _SportAthleteFormState extends State<SportAthleteForm> {
  final _formKey = GlobalKey<FormState>();
  final _positionController = TextEditingController();
  String? _selectedSportId;

  @override
  void initState() {
    super.initState();
    _selectedSportId = null;
  }

  @override
  void dispose() {
    _positionController.dispose();
    super.dispose();
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate() && _selectedSportId != null) {
      final sportAthlete = SportAthlete(
        sportId: _selectedSportId!,
        userId: widget.athlete.userId,
        position: _positionController.text.trim(),
        createdAt: DateTime.now().toUtc(),
        updatedAt: DateTime.now().toUtc(),
        id: '',
      );
      context.read<SportAthleteBloc>().add(SportAthleteEvent.createSportAthlete(sportAthlete));
    } else if (_selectedSportId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng chọn một môn thể thao')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm Môn Thể Thao'),
      ),
      body: BlocListener<SportAthleteBloc, SportAthleteState>(
        listener: (context, state) {
          if (state is Sport_Athlete_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Thêm môn thể thao thành công')),
            );
            context.read<SportAthleteBloc>().add(
                  SportAthleteEvent.getAllSportAthleteByUserId(widget.athlete.userId),
                );
            Navigator.pop(context);
          } else if (state is Sport_Athlete_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Lỗi: ${state.message}')),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                BlocBuilder<SportBloc, SportState>(
                  builder: (context, sportState) {
                    if (sportState is Sport_Loading || sportState is Sport_Initial) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (sportState is LoadedSports && sportState.sports.isNotEmpty) {
                      if (_selectedSportId != null &&
                          !sportState.sports.any((sport) => sport.id == _selectedSportId)) {
                        _selectedSportId = null;
                      }
                      return DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Môn thể thao',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedSportId,
                        items: sportState.sports
                            .map((sport) => DropdownMenuItem(
                                  value: sport.id,
                                  child: Text(sport.name),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedSportId = value;
                          });
                        },
                        validator: (value) => value == null ? 'Vui lòng chọn một môn thể thao' : null,
                      );
                    } else if (sportState is Sport_Error) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text('Lỗi: ${sportState.message}'),
                      );
                    }
                    return const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text('Không có môn thể thao nào để hiển thị.'),
                    );
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _positionController,
                  decoration: const InputDecoration(
                    labelText: 'Vị trí',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập vị trí';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                BlocBuilder<SportAthleteBloc, SportAthleteState>(
                  builder: (context, state) {
                    final isLoading = state is Sport_Athlete_Loading;
                    return ElevatedButton(
                      onPressed: isLoading ? null : () => _submitForm(context),
                      child: isLoading ? const CircularProgressIndicator() : const Text('Thêm'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}