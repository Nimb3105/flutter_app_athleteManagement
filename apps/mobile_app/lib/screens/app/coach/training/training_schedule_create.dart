import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrainingScheduleCreate extends StatelessWidget {
  const TrainingScheduleCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TrainingScheduleCreateView();
  }
}

class _TrainingScheduleCreateView extends StatefulWidget {
  const _TrainingScheduleCreateView();

  @override
  State<_TrainingScheduleCreateView> createState() =>
      _TrainingScheduleCreateViewState();
}

class _TrainingScheduleCreateViewState
    extends State<_TrainingScheduleCreateView> {
  final _formKey = GlobalKey<FormState>();
  final _locationController = TextEditingController();
  final _typeController = TextEditingController();
  final _notesController = TextEditingController();

  DateTime? _selectedDate;
  DateTime? _startTime;
  DateTime? _endTime;
  String? _selectedStatus;

  final List<String> _statusOptions = [
    'Scheduled',
    'In Progress',
    'Completed',
    'Cancelled',
  ];

  @override
  void dispose() {
    _locationController.dispose();
    _typeController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final now = _selectedDate ?? DateTime.now();
      final selectedDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        picked.hour,
        picked.minute,
      );
      setState(() {
        if (isStartTime) {
          _startTime = selectedDateTime;
        } else {
          _endTime = selectedDateTime;
        }
      });
    }
  }

  String? _validateForm() {
    if (_selectedDate == null) return 'Please select a date';
    if (_startTime == null) return 'Please select a start time';
    if (_endTime == null) return 'Please select an end time';
    if (_selectedStatus == null) return 'Please select a status';
    if (_endTime!.isBefore(_startTime!)) {
      return 'End time must be after start time';
    }
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

      final schedule = TrainingSchedule(
        id: "",
        date: _selectedDate!,
        startTime: _startTime!,
        endTime: _endTime!,
        status: _selectedStatus!,
        location: _locationController.text,
        type: _typeController.text,
        notes: _notesController.text,
        createdBy: "507f1f77bcf86cd799439012",
        createdAt: null,
        updatedAt: null,
      );

      context.read<TrainingScheduleBloc>().add(
        CreateTrainingSchedule(schedule),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Training Schedule')),
      body: BlocConsumer<TrainingScheduleBloc, TrainingScheduleState>(
        listener: (context, state) {
          if (state is LoadedTrainingSchedule) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('TrainingSchedule created successfully!')),
            );
            context.read<TrainingScheduleBloc>().add(
              const GetAllTrainingSchedules(),
            );
            Navigator.of(context).pop();
          } else if (state is TrainingSchedule_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
        },
        builder: (context, state) {
          bool isLoading = state is TrainingSchedule_Loading;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  ListTile(
                    title: Text(
                      _selectedDate == null
                          ? 'Select Date'
                          : 'Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: isLoading ? null : () => _selectDate(context),
                  ),
                  ListTile(
                    title: Text(
                      _startTime == null
                          ? 'Select Start Time'
                          : 'Start Time: ${DateFormat('HH:mm').format(_startTime!)}',
                    ),
                    trailing: const Icon(Icons.access_time),
                    onTap: isLoading ? null : () => _selectTime(context, true),
                  ),
                  ListTile(
                    title: Text(
                      _endTime == null
                          ? 'Select End Time'
                          : 'End Time: ${DateFormat('HH:mm').format(_endTime!)}',
                    ),
                    trailing: const Icon(Icons.access_time),
                    onTap: isLoading ? null : () => _selectTime(context, false),
                  ),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(labelText: 'Status'),
                    value: _selectedStatus,
                    items:
                        _statusOptions.map((String status) {
                          return DropdownMenuItem<String>(
                            value: status,
                            child: Text(status),
                          );
                        }).toList(),
                    onChanged:
                        isLoading
                            ? null
                            : (String? newValue) {
                              setState(() {
                                _selectedStatus = newValue;
                              });
                            },
                    validator:
                        (value) =>
                            value == null ? 'Please select a status' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _locationController,
                    decoration: const InputDecoration(labelText: 'Location'),
                    validator:
                        (value) =>
                            value!.isEmpty ? 'Please enter a location' : null,
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _typeController,
                    decoration: const InputDecoration(labelText: 'Type'),
                    validator:
                        (value) =>
                            value!.isEmpty ? 'Please enter a type' : null,
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _notesController,
                    decoration: const InputDecoration(labelText: 'Notes'),
                    validator:
                        (value) => value!.isEmpty ? 'Please enter notes' : null,
                    enabled: !isLoading,
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: isLoading ? null : _submitForm,
                    child:
                        isLoading
                            ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                            : const Text('Create Schedule'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
