import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:royaldevelopment/Presentations/Pages/Successfulbook.dart';
import 'package:royaldevelopment/Presentations/Widgets/Inputfield.dart';
import 'package:royaldevelopment/Presentations/Widgets/button.dart';

import '../Widgets/Page_header.dart';

class Bookservicepage extends StatelessWidget {
  const Bookservicepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaf4),
      appBar: pageheader(
        //title
        title: 'Book Service',
        //action
        action: Padding(
          padding: const EdgeInsets.only(right: 45.0),
          child: Icon(
            Icons.account_circle,
            size: 30,
            color: Color(0xff8e1625),
          ),
        ),
        //leading
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 28,
                ),
                color: Color(0xFF8E1625),
              );
            }),
          );
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 18,
                        ),
                        hintText: 'Click Photo',
                        hintStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Color(0xffefc53d),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  Inputfields(
                      hinttextholder: 'Your Name',
                      obsecuretextvalue: false,
                      color: Colors.white,
                      Iconholder: Icon(Icons.person,
                          color: Colors.black.withOpacity(0.3), size: 18)),
                  Inputfields(
                      hinttextholder: 'Your Email',
                      obsecuretextvalue: false,
                      color: Colors.white,
                      Iconholder: Icon(Icons.mail,
                          color: Colors.black.withOpacity(0.3), size: 18)),
                  Inputfields(
                      hinttextholder: 'Phone Number',
                      obsecuretextvalue: false,
                      color: Colors.white,
                      Iconholder: Icon(Icons.phone_android,
                          color: Colors.black.withOpacity(0.3), size: 18)),
                  Inputfields(
                      hinttextholder: 'Optional Phone Number',
                      obsecuretextvalue: false,
                      color: Colors.white,
                      Iconholder: Icon(Icons.phone_android,
                          color: Colors.black.withOpacity(0.3), size: 18)),
                  Inputfields(
                      hinttextholder: 'Your Address',
                      obsecuretextvalue: false,
                      color: Colors.white,
                      Iconholder: Icon(Icons.map,
                          color: Colors.black.withOpacity(0.3), size: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Rate
                      Expanded(
                        child: smallinputfields(
                          smallhinttext: 'Rate',
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: smallinputfields(
                          smallhinttext: 'Quantity',
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: smallinputfields(
                          smallhinttext: 'Amount',
                        ),
                      ),

                      //Amount
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.4),
                        size: 18,
                      ),
                      hintText: 'Additional Information',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.4)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(height: 10),
                  buttondata(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                        child: Booksucessfull(),
                        type: PageTransitionType.rightToLeft,
                        childCurrent: this,
                        reverseDuration: Duration(milliseconds: 100),
                        duration: Duration(milliseconds: 100),
                      ));
                    },
                    Buttontext: 'Book This Service',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
