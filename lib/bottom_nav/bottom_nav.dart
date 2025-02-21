import 'package:flutter/material.dart';
import 'package:nexed/Colors/app_colors.dart';
import 'package:nexed/bottom_nav/bottom_nav_controller.dart';
import 'package:nexed/main.dart';
import 'package:nexed/pages/assignment_screen/assignment_page.dart';
import 'package:nexed/pages/home_screen/home_page.dart';
import 'package:nexed/pages/performance_screen/performance_page.dart';
import 'package:nexed/pages/profile_screen/profile_page.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _screens = [
    HomePage(),
    PerformancePage(),
    AssignmentPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: getIt.get<BottomNavController>(),
      child:
          Consumer<BottomNavController>(builder: (context, controller, child) {
        return Scaffold(
          body: IndexedStack(
            index: controller.currentIndex,
            children: _screens,
          ),
          bottomNavigationBar: NavigationBar(
            backgroundColor: AppColors.pureWhite,
            onDestinationSelected: (index) =>
                controller.changeCurrentIndex(index),
            selectedIndex: controller.currentIndex,
            indicatorColor: AppColors.cloudtGray,
            destinations: [
              NavigationDestination(
                icon: Icon(Iconsax.home_1_copy),
                selectedIcon: Icon(Iconsax.home_1),
                label: "Home",
              ),
              NavigationDestination(
                  icon: Icon(Iconsax.chart),
                  selectedIcon: Icon(Iconsax.chart_1),
                  label: "Performance"),
              NavigationDestination(
                  icon: Icon(Iconsax.document),
                  selectedIcon: Icon(Iconsax.document_1),
                  label: "Assignment"),
              NavigationDestination(
                  icon: Icon(Iconsax.profile_circle_copy),
                  selectedIcon: Icon(Iconsax.profile_circle),
                  label: "Profile"),
            ],
          ),
        );
      }),
    );
  }
}
