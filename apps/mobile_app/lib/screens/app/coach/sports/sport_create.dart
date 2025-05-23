import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SportCreateForm extends StatefulWidget {
  const SportCreateForm({super.key});

  @override
  State<SportCreateForm> createState() => _SportCreateFormState();
}

class _SportCreateFormState extends State<SportCreateForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final sport = Sport(
        name: _nameController.text.trim(),
        createdAt: null,
        updatedAt: null,
        id: '',
      );
      context.read<SportBloc>().add(SportEvent.createSport(sport));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.add_box),
            SizedBox(width: 8),
            Text('Thêm bộ môn mới'),
          ],
        ),
      ),
      body: BlocListener<SportBloc, SportState>(
        listener: (context, state) {
          if (state is Sport_Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tạo bộ môn thành công')),
            );
            Navigator.pop(context);
          } else if (state is Sport_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Lỗi: ${state.message}')),
            );
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Tên bộ môn',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.sports),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập tên bộ môn';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                BlocBuilder<SportBloc, SportState>(
                  builder: (context, state) {
                    bool isLoading = state is Sport_Loading;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilledButton(
                          onPressed:
                              isLoading ? null : () => _submitForm(context),
                          child: isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2, color: Colors.white),
                                )
                              : const Text('Tạo bộ môn'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Huỷ bỏ'),
                        ),
                      ],
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
