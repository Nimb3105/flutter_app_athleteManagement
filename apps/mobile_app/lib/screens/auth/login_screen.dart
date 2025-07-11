// lib/screens/auth/login_screen.dart

// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _emailController = TextEditingController(text: "tai1@gmail.com");
  final _passwordController = TextEditingController(text: "123");
  final _storage = const FlutterSecureStorage();

  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  /// Xử lý khi người dùng nhấn nút đăng nhập
  void _onLoginPressed() {
    // Ẩn bàn phím
    FocusScope.of(context).unfocus();
    context.read<UserBloc>().add(
      UserEvent.login(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      ),
    );
  }

  /// Xử lý các thay đổi trạng thái từ UserBloc
  void _handleStateChanges(BuildContext context, UserState state) {
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    // Tắt dialog loading trước khi xử lý state mới
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
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );
    } else if (state is LoginSuccess) {
      await _storage.write(key: 'jwt_token', value: state.token);
      final user = state.user;

      if (user.id != null) {
        context.read<CoachBloc>().add(CoachEvent.getCoachByUserId(user.id!));
        context.read<SportBloc>().add(SportEvent.getSportById(user.sportId));
        context.read<CoachAthleteBloc>().add(
          CoachAthleteEvent.getAllByCoachId(user.id!),
        );
      }

      Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: {'coachId': user.id!, 'sportId': user.sportId},
      );
    } else if (state is User_Error) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(state.message),
            backgroundColor: Theme.of(context).colorScheme.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
    }
  });
}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<UserBloc, UserState>(
      listener: _handleStateChanges,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.primary.withOpacity(0.1),
                theme.colorScheme.background,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildHeader(theme),
                        const SizedBox(height: 48),
                        _buildLoginForm(theme),
                        const SizedBox(height: 32),
                        _buildRegisterPrompt(theme),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Column(
      children: [
        Icon(
          Icons.motion_photos_on_rounded,
          size: 80,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(height: 24),
        Text(
          'Chào mừng trở lại!',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Đăng nhập để tiếp tục',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: theme.colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginForm(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
            hintText: 'Nhập email của bạn',
            prefixIcon: Icon(Icons.alternate_email_rounded),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: 'Nhập mật khẩu',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
                color: theme.colorScheme.onSurface.withOpacity(0.5),
              ),
              onPressed:
                  () =>
                      setState(() => _isPasswordVisible = !_isPasswordVisible),
            ),
          ),
          obscureText: !_isPasswordVisible,
        ),
        const SizedBox(height: 20),
        _buildLoginActions(theme),
        const SizedBox(height: 24),
        _buildLoginButton(),
      ],
    );
  }

  Widget _buildLoginActions(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: _rememberMe,
              onChanged:
                  (value) => setState(() => _rememberMe = value ?? false),
              activeColor: theme.colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const Text('Ghi nhớ tôi'),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Quên mật khẩu?',
            style: TextStyle(color: theme.colorScheme.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final isLoading = state is User_Loading;
        return ElevatedButton(
          onPressed: isLoading ? null : _onLoginPressed,
          child:
              isLoading
                  ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3,
                    ),
                  )
                  : const Text('ĐĂNG NHẬP'),
        );
      },
    );
  }

  Widget _buildRegisterPrompt(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Chưa có tài khoản?"),
        TextButton(
          onPressed: () {},
          child: Text(
            'Đăng ký ngay',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
