import 'package:flutter/material.dart';

class buttondata extends StatelessWidget {
  final onTap;
  final String Buttontext;

  const buttondata({super.key, required this.Buttontext, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: SizedBox(
        width: 350,
        height: 45,
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff8e1625),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              Buttontext,
              style: TextStyle(
                color: Color.fromARGB(255, 230, 223, 222),
              ),
            )),
      ),
    ));
  }
}
