import 'package:flutter/material.dart';

class Containermenu extends StatelessWidget {
  final IconData containermenuicon;
  final String containermenutext;
  const Containermenu(
      {super.key,
      required this.containermenuicon,
      required this.containermenutext});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xffefc53d),
          child: Icon(
            containermenuicon,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              containermenutext,
              style: TextStyle(
                  overflow: TextOverflow.visible,
                  fontSize: 12,
                  color: Color.fromARGB(211, 30, 11, 11),
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
