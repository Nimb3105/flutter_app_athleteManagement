import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HealthTab extends StatelessWidget {
  final String athleteId;
  const HealthTab({super.key, required this.athleteId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHealthSection(),
          const SizedBox(height: 24),
          _buildInjurySection(),
        ],
      ),
    );
  }

  Widget _buildHealthSection() {
    return BlocConsumer<HealthBloc, HealthState>(
      listener: (context, state) {
        // Sau khi tải Health thành công, dùng healthId để tải MedicalHistory
        if (state is LoadedHealthRecords && state.healthRecords.isNotEmpty) {
          final healthId = state.healthRecords.first.id;
          if (healthId != null) {
            context.read<MedicalHistoryBloc>().add(
              MedicalHistoryEvent.getMedicalHistoryByHealthId(healthId),
            );
          }
        }
      },
      builder: (context, state) {
        if (state is Health_Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Health_Error) {
          return Text('Lỗi tải dữ liệu sức khỏe: ${state.message}');
        }
        if (state is LoadedHealthRecords && state.healthRecords.isNotEmpty) {
          final health = state.healthRecords.first;
          return Card(
            elevation: 2,
            child: Column(
              children: [
                ListTile(
                  title: const Text("Chỉ số sức khỏe gần nhất"),
                  subtitle: Text(
                    'Cập nhật ngày: ${DateFormat('dd/MM/yyyy').format(health.date.toLocal())}',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildInfoRow(
                        Icons.height,
                        'Chiều cao',
                        '${health.height} cm',
                      ),
                      _buildInfoRow(
                        Icons.monitor_weight_outlined,
                        'Cân nặng',
                        '${health.weight} kg',
                      ),
                      _buildInfoRow(
                        Icons.calculate_outlined,
                        'Chỉ số BMI',
                        health.bmi.toStringAsFixed(2),
                      ),
                      _buildInfoRow(
                        Icons.bloodtype_outlined,
                        'Nhóm máu',
                        health.bloodType,
                      ),
                    ],
                  ),
                ),
                _buildMedicalHistorySection(), // Lồng vào đây cho tiện
              ],
            ),
          );
        }
        return const Text('Không có dữ liệu sức khỏe.');
      },
    );
  }

  Widget _buildInjurySection() {
    return BlocBuilder<InjuryBloc, InjuryState>(
      builder: (context, state) {
        if (state is Injury_Loading) return const SizedBox.shrink();
        if (state is Injury_Error) {
          return Text('Lỗi tải dữ liệu chấn thương: ${state.message}');
        }
        if (state is LoadedInjuries && state.injuries.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              title: const Text("Lịch sử chấn thương"),
              children:
                  state.injuries
                      .map(
                        (injury) => ListTile(
                          leading: const Icon(Icons.personal_injury_outlined),
                          title: Text(injury.type),
                          subtitle: Text(
                            'Ngày: ${DateFormat('dd/MM/yyyy').format(injury.date.toLocal())} - Mức độ: ${injury.severity}',
                          ),
                        ),
                      )
                      .toList(),
            ),
          );
        }
        return Card(
          child: ListTile(title: Text("Không có dữ liệu chấn thương.")),
        );
      },
    );
  }

  Widget _buildMedicalHistorySection() {
    return BlocBuilder<MedicalHistoryBloc, MedicalHistoryState>(
      builder: (context, state) {
        if (state is MedicalHistory_Loading) {
          return const LinearProgressIndicator();
        }
        if (state is MedicalHistory_Error) {
          return Text('Lỗi tải bệnh sử: ${state.message}');
        }
        if (state is LoadedMedicalHistories &&
            state.medicalHistories.isNotEmpty) {
          return ExpansionTile(
            title: const Text("Tiền sử bệnh án"),
            children:
                state.medicalHistories
                    .map(
                      (history) => ListTile(
                        leading: const Icon(Icons.history_edu_outlined),
                        title: Text(history.description),
                        subtitle: Text(
                          'Ngày ghi nhận: ${DateFormat('dd/MM/yyyy').format(history.date.toLocal())}',
                        ),
                      ),
                    )
                    .toList(),
          );
        }
        return const ListTile(title: Text("Không có tiền sử bệnh án."));
      },
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[600], size: 20),
          const SizedBox(width: 16),
          Text('$label:', style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
