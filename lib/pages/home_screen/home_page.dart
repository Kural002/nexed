import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexed/Colors/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> subjects = [
    'Design And Analysis Of Algorithm',
    'Operating System',
    'Principles Of Data Communication',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.primary,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello !',
                    style: TextStyle(
                      color: AppColors.pureWhite,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.go('/menu'),
                    icon: Icon(
                      Icons.menu,
                      color: AppColors.pureWhite,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Kuralarasu B',
                    style: TextStyle(
                      color: AppColors.pureWhite,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildContainer('85%', 'Overall Attendance'),
                    _buildContainer('8.5', 'CGPA'),
                    _buildContainer('8.7', 'SGPA'),
                    _buildContainer('0', 'Number of Arrears'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String value, String label) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: AppColors.vibrantBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: TextStyle(
                color: AppColors.pureWhite,
                fontSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15,2,15,5),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
