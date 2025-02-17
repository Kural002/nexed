import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexed/Colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/settings'),
          child: const Text("Go to Settings"),
        ),
      ),
    );
  }
}
