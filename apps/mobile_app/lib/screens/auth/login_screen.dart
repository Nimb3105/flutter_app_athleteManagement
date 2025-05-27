import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_app/screens/app/coach/coach_home.dart';

class LoginScreen extends StatefulWidget {
  final UserRepository userRepository;

  const LoginScreen({super.key, required this.userRepository});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController(
    text: "tai1@gmail.com",
  );

  final TextEditingController passwordController = TextEditingController(
    text: "123",
  );

  final storage = const FlutterSecureStorage();
  bool isPasswordVisible = false;
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => UserBloc(userRepository: widget.userRepository),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade100, Colors.white],
            ),
          ),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Logo or App Icon
                      Container(
                        height: screenHeight * 0.15,
                        width: screenHeight * 0.15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: screenHeight * 0.08,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Welcome Text
                      Text(
                        'Welcome Back',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Sign in to continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Email Input
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: 'Enter your email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 16),

                      // Password Input
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        obscureText: !isPasswordVisible,
                      ),

                      const SizedBox(height: 8),

                      // Remember Me & Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value ?? false;
                                  });
                                },
                              ),
                              const Text('Remember me'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              // Forgot password logic
                            },
                            child: const Text('Forgot Password?'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Login Button
                      BlocConsumer<UserBloc, UserState>(
                        listener: (context, state) async {
                          if (state is LoggedIn) {
                            // Store the JWT token securely
                            await storage.write(
                              key: 'jwt_token',
                              value: state.token,
                            );

                            // Show success message
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login successful!'),
                                backgroundColor: Colors.green,
                              ),
                            );

                            // Navigate to CoachHomeApp, replacing the login screen
                            Navigator.pushReplacement(
                              // ignore: use_build_context_synchronously
                              context,
                              MaterialPageRoute(
                                builder: (context) => CoachHomeApp(),
                              ),
                            );
                          } else if (state is User_Error) {
                            // Show error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.message),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          return ElevatedButton(
                            onPressed:
                                state is User_Loading
                                    ? null
                                    : () {
                                      if (emailController.text.isEmpty ||
                                          passwordController.text.isEmpty) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Please fill all fields',
                                            ),
                                            backgroundColor: Colors.orange,
                                          ),
                                        );
                                        return;
                                      }

                                      context.read<UserBloc>().add(
                                        UserEvent.login(
                                          emailController.text.trim(),
                                          passwordController.text.trim(),
                                        ),
                                      );
                                    },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              elevation: 3,
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child:
                                state is User_Loading
                                    ? const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 2,
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Text('Logging in...'),
                                      ],
                                    )
                                    : const Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                          );
                        },
                      ),

                      const SizedBox(height: 24),

                      // Register Option
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate to registration page
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
