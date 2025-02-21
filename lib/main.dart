import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nexed/Colors/app_colors.dart';
import 'package:nexed/bottom_nav/bottom_nav_controller.dart';
import 'package:nexed/route/go_route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 setupLocator();
  runApp(const MyApp());
}
final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<BottomNavController>(() => BottomNavController());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: AppColors.primary, 
         fontFamily: 'futura',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

