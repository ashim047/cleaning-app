

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:royal/auth/auth_Page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splashIconSize: 400,
      splash: Image.asset('../../assets/Royallogo.png'),
      nextScreen: const authpage(),
    );
  }
}
