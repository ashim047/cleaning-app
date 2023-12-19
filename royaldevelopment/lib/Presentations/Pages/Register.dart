import 'package:flutter/material.dart';
import 'package:royaldevelopment/Presentations/Pages/Dashboard.dart';

import '../Widgets/Inputfield.dart';
import '../Widgets/button.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterScreen({super.key, required this.showLoginPage});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeaeaf4),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: Column(children: [
                        Image.asset(
                          'assets/Royallogo.png',
                          height: 90,
                          width: 200,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff8e1625),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Register to Continue',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Inputfields(
                          hinttextholder: 'your Name',
                          Iconholder: Icon(Icons.person,
                              color: Colors.black.withOpacity(0.3), size: 18),
                          obsecuretextvalue: false,
                        ),
                        Inputfields(
                          hinttextholder: 'Your Email',
                          Iconholder: Icon(Icons.mail,
                              color: Colors.black.withOpacity(0.3), size: 18),
                          obsecuretextvalue: false,
                        ),
                        Inputfields(
                          hinttextholder: 'Phone Number',
                          Iconholder: Icon(Icons.smartphone,
                              color: Colors.black.withOpacity(0.3), size: 18),
                          obsecuretextvalue: false,
                        ),
                        Inputfields(
                          hinttextholder: 'Password',
                          Iconholder: Icon(Icons.lock,
                              color: Colors.black.withOpacity(0.3), size: 18),
                          suffixIconholder: Icons.remove_red_eye,
                          obsecuretextvalue: true,
                        ),
                        Inputfields(
                          hinttextholder: 'Confirm Password',
                          Iconholder: Icon(Icons.lock,
                              color: Colors.black.withOpacity(0.3), size: 18),
                          suffixIconholder: Icons.remove_red_eye,
                          obsecuretextvalue: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        buttondata(
                          Buttontext: 'Register with royal cleaning',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                        ),
                        //text1
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By signing in, you accept our',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              GestureDetector(
                                onTap: null,
                                child: Text(
                                  ' Terms and Conditions',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already a member,',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              GestureDetector(
                                onTap: widget.showLoginPage,
                                child: Text(
                                  ' Login Here',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
