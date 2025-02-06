import 'package:flutter/material.dart';
import 'package:nexed/Colors/app_colors.dart';
import 'package:nexed/pages/my_loginpage.dart';

class MyIntropage extends StatelessWidget {
  const MyIntropage({super.key});

  void ontap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MyLoginpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text("Login"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Image.asset(
              "lib/Assets/images/ne.png",
              height: 58,
              width: 58,
            ),
            const Text(
              "Get Started",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              "Start by choosing your role.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            _buildRoleCard(
              //image: Image.asset("lib/Assets/images/student.png"),
              title: "I'm a Student",
              subtitle: "I want to get help and guidance from expert teachers",
              onTap: () => ontap(context),
            ),
            const SizedBox(height: 20),
            _buildRoleCard(
              // image: Image.asset("lib/Assets/images/tie.png"),
              title: "I'm a Teacher",
              subtitle: "I want to share my knowledge with the community",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleCard({
    //required Image image,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // Image.asset("$image",
            //   height: 35,
            //   width: 48,
            //   color: Colors.white,
            // ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
          ],
        ),
      ),
    );
  }
}
