import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Trang Tổng Quan (Trang chủ)',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}