import 'package:flutter/material.dart';

class pageheader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget action;
  final Widget leading;

  const pageheader(
      {super.key,
      required this.title,
      required this.action,
      required this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.red),
      toolbarHeight: 110,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(100)),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 43, 89, 127))),
        ),
      ),
      actions: [action],
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 110);
}
