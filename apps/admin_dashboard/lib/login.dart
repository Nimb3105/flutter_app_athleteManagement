// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart'; // Import package 'core' của bạn
import 'home.dart'; // Import trang HomePage

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: "admin@gmail.com");
  final _passwordController = TextEditingController(text: "123");
  bool _obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      context.read<UserBloc>().add(
        UserEvent.login(_emailController.text, _passwordController.text),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          if (state is! User_Loading) {
            final isDialogShowing = ModalRoute.of(context)?.isCurrent != true;
            if (isDialogShowing) {
              Navigator.of(context).pop();
            }
          }

          if (state is User_Loading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder:
                  (context) => const Center(child: CircularProgressIndicator()),
            );
          } else if (state is LoginSuccess) {
            // SỬ DỤNG STATE MỚI
            // Kiểm tra vai trò của người dùng
            if (state.user.role == 'admin') {
              // Trên mobile, bạn có thể lưu state.token ở đây
              // await saveToken(state.token);

              // Điều hướng đến trang dashboard
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Đăng nhập thành công!'),
                  backgroundColor: Colors.green,
                ),
              );
            } else {
              // Hiển thị dialog thông báo không có quyền
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: const Text('Không có quyền truy cập'),
                      content: const Text('Bạn không phải là admin.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Đóng'),
                        ),
                      ],
                    ),
              );
            }
          } else if (state is User_Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Center(
          // ... (Phần UI không thay đổi)
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Vui lòng nhập email hợp lệ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: 'Mật khẩu',
                        prefixIcon: const Icon(Icons.lock),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập mật khẩu';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: _login,
                        child: const Text('Đăng nhập'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
