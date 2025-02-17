import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexed/Colors/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/home'),
          child: const Text("Back to Home"),
        ),
      ),
    );
  }
}
