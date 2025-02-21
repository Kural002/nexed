import 'package:go_router/go_router.dart';
import 'package:nexed/bottom_nav/bottom_nav.dart';
import 'package:nexed/pages/home_screen/home_page.dart';
import 'package:nexed/pages/intro_screen/my_intropage.dart';
import 'package:nexed/pages/login_screen/my_loginpage.dart';
import 'package:nexed/pages/menu_screen/menu_page.dart';
import 'package:nexed/pages/splash_screen/splash_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: '/intro',
      name: 'intro',
      builder: (context, state) => const MyIntropage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const MyLoginpage(),
    ),
    GoRoute(
      path: '/nav',
      name: 'nav',
      builder: (context, state) => const BottomNav(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) =>  HomePage(),
    ),
    GoRoute(
      path: '/menu',
      name: 'menu',
      builder: (context, state) => const MenuPage(),
    ),
  ],
);
