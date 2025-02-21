import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexed/Colors/app_colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Menu Page", style: TextStyle(color: AppColors.pureWhite)),
        leading: IconButton(
          onPressed: () => context.go('/nav'),
          icon: Image.asset(
            "assets/images/arrowback.png",
            height: 25,
            width: 25,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
