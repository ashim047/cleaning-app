import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:royal/Presentations/Pages/Successfulbook.dart';

import '../Widgets/Page_header.dart';
import '../Widgets/button.dart';
import '../Widgets/tabbar.dart';

class Servicedetail extends StatelessWidget {
  const Servicedetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaf4),
      appBar: pageheader(
        //title
        title: 'Service Detail',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'Image',
                            child: Image.asset(
                              '../../assets/carpet.png',
                              height: 120,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Carpet Cleaning',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Rate:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.4))),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Quality:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.4))),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Amount:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.4))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  buttondata(
                      Buttontext: 'Book This Service',
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                          child: Booksucessfull(),
                          type: PageTransitionType.scale,
                          alignment: Alignment.topCenter,
                          childCurrent: this,
                          reverseDuration: Duration(milliseconds: 1000),
                          duration: Duration(milliseconds: 1000),
                        ));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Container(
                        height: 400,
                        child: Tabbar(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
