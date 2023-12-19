import 'package:flutter/material.dart';
import 'package:royaldevelopment/Presentations/Pages/Dashboard.dart';

import '../Widgets/Inputfield.dart';
import '../Widgets/button.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeaeaf4),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        color: Color.fromARGB(255, 3, 48, 85),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login to Continue',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 168,
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
                      obsecuretextvalue: true,
                      suffixIconholder: Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height: 94,
                    ),
                    buttondata(
                        Buttontext: 'Login',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        }),
                    SizedBox(
                      height: 115,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'New member,',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.showRegisterPage,
                        child: Text(
                          ' Register Here',
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
        ));
  }
}
