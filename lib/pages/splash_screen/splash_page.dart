import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexed/Colors/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _opacity = 0.0;
  Color _backgroundColor = AppColors.pureWhite;
  String _imagePath = 'assets/images/nex.png';

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        _backgroundColor = AppColors.primary;
        _imagePath = 'assets/images/nexx.png';
      });
    });

    Future.delayed(Duration(milliseconds: 4500), () {
      setState(() {
        _opacity = 0.0;
      });
    });

    Timer(Duration(milliseconds: 5000), () {
      context.go('/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1500), 
      color: _backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSwitcher(
                    duration: Duration(
                        milliseconds: 1500), 
                    child: Image.asset(
                      _imagePath,
                      key: ValueKey<String>(
                          _imagePath), 
                      width: 200,
                      height: 200,
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1500), 
                    opacity: _opacity,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
