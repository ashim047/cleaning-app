import 'package:flutter/material.dart';

//normal field form
class Inputfields extends StatelessWidget {
  final String hinttextholder;
  final bool obsecuretextvalue;
  final Iconholder;
  final IconData? suffixIconholder;
  final color;

  const Inputfields({
    super.key,
    required this.hinttextholder,
    this.Iconholder,
    this.suffixIconholder,
    required this.obsecuretextvalue,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 45,
        child: TextFormField(
          textAlign: TextAlign.start,
          obscureText: obsecuretextvalue,
          decoration: InputDecoration(
            filled: true,
            hintText: hinttextholder,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.2),
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.only(top: 10),
            prefixIcon: Iconholder,
            suffixIcon: Icon(
              suffixIconholder,
              color: Colors.black.withOpacity(0.3),
            ),
            fillColor: color,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    ));
  }
}

class smallinputfields extends StatelessWidget {
  final String smallhinttext;

  final Icon? Prefixiconname;
  const smallinputfields({
    super.key,
    required this.smallhinttext,
    this.Prefixiconname,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 105,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: smallhinttext,
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.2)),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Prefixiconname,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
