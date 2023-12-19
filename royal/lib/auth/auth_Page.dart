import 'package:flutter/material.dart';
import 'package:royal/Presentations/Pages/Register.dart';
import 'package:royal/Presentations/Pages/login.dart';

class authpage extends StatefulWidget {
  const authpage({super.key});

  @override
  State<authpage> createState() => _authpageState();
}

class _authpageState extends State<authpage> {
  //to show log in page first
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        showRegisterPage: toggleScreen,
      );
    } else {
      return RegisterScreen(showLoginPage: toggleScreen);
    }
  }
}
