import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrainingScheduleUserCreateScreen extends StatelessWidget {
  final Athlete athlete;

  const TrainingScheduleUserCreateScreen({super.key, required this.athlete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assign Training Schedule'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocListener<TrainingScheduleUserBloc, TrainingScheduleUserState>(
        listener: (context, state) {
          if (state is LoadedTrainingScheduleUser) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('TrainingScheduleUser created successfully!'),
              ),
            );
            context.read<TrainingScheduleUserBloc>().add(
              GetAllTrainingScheduleUserByUserId(athlete.userId),
            );
            Navigator.of(context).pop();
          } else if (state is TrainingScheduleUser_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
        },
        child: BlocBuilder<TrainingScheduleBloc, TrainingScheduleState>(
          builder: (context, state) {
            List<TrainingSchedule> schedules = [];
            bool isLoading = state is TrainingSchedule_Loading;

            if (state is LoadedTrainingSchedules) {
              schedules = state.schedules;
            }

            return _TrainingScheduleUserCreateView(
              athlete: athlete,
              schedules: schedules,
              isLoading: isLoading,
            );
          },
        ),
      ),
    );
  }
}

class _TrainingScheduleUserCreateView extends StatefulWidget {
  final Athlete athlete;
  final List<TrainingSchedule> schedules;
  final bool isLoading;

  const _TrainingScheduleUserCreateView({
    required this.athlete,
    required this.schedules,
    required this.isLoading,
  });

  @override
  State<_TrainingScheduleUserCreateView> createState() =>
      _TrainingScheduleUserCreateViewState();
}

class _TrainingScheduleUserCreateViewState
    extends State<_TrainingScheduleUserCreateView> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedScheduleId;

  @override
  void initState() {
    super.initState();
    // Load available schedules when the screen is initialized
    context.read<TrainingScheduleBloc>().add(const GetAllTrainingSchedules());
  }

  String? _validateForm() {
    if (_selectedScheduleId == null) return 'Please select a training schedule';
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final validationError = _validateForm();
      if (validationError != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(validationError)));
        return;
      }

      final scheduleAthlete = TrainingScheduleUser(
        id: null,
        scheduleId: _selectedScheduleId!,
        userId: widget.athlete.userId,
        createdAt: null,
        updatedAt: null,
      );

      context.read<TrainingScheduleUserBloc>().add(
        CreateTrainingScheduleUser(scheduleAthlete),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Training Schedule'),
              value: _selectedScheduleId,
              items:
                  widget.schedules.map((TrainingSchedule schedule) {
                    return DropdownMenuItem<String>(
                      value: schedule.id,
                      child: Text(
                        '${schedule.type} - ${DateFormat('yyyy-MM-dd').format(schedule.date)} '
                        '(${DateFormat('HH:mm').format(schedule.startTime)} - '
                        '${DateFormat('HH:mm').format(schedule.endTime)})',
                      ),
                    );
                  }).toList(),
              onChanged:
                  widget.isLoading
                      ? null
                      : (String? newValue) {
                        setState(() {
                          _selectedScheduleId = newValue;
                        });
                      },
              validator:
                  (value) =>
                      value == null
                          ? 'Please select a training schedule'
                          : null,
            ),
            if (widget.schedules.isEmpty && !widget.isLoading) ...[
              const SizedBox(height: 16),
              const Text(
                'No training schedules available',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: widget.isLoading ? null : _submitForm,
              child:
                  widget.isLoading
                      ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                      : const Text('Assign Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
