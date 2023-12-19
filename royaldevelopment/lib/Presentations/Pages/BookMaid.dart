import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royaldevelopment/Presentations/Pages/bookmaidpayment.dart';
import 'package:royaldevelopment/Presentations/Widgets/Inputfield.dart';
import 'package:royaldevelopment/Presentations/Widgets/Page_header.dart';
import 'package:royaldevelopment/Presentations/Widgets/button.dart';

class Bookmaid extends StatelessWidget {
  const Bookmaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeaeaf4),
        appBar: pageheader(
          title: 'Book Maid',
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
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 150,
                      child: smallinputfields(
                          smallhinttext: 'Check In',
                          Prefixiconname: Icon(
                            Icons.access_time_filled,
                            size: 20,
                            color: Colors.black.withOpacity(0.2),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 150,
                      child: smallinputfields(
                          smallhinttext: 'Check Out',
                          Prefixiconname: Icon(
                            Icons.access_time_filled,
                            color: Colors.black.withOpacity(0.2),
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                    Text(
                      ' Add new Timing',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Inputfields(
                hinttextholder: 'Age',
                obsecuretextvalue: false,
                color: Colors.white,
                Iconholder: Icon(Icons.calendar_today,
                    color: Colors.black.withOpacity(0.3), size: 18),
              ),
              Inputfields(
                hinttextholder: 'Gender',
                obsecuretextvalue: false,
                color: Colors.white,
                Iconholder: Icon(Icons.person,
                    color: Colors.black.withOpacity(0.3), size: 18),
              ),
              Inputfields(
                hinttextholder: 'Job Location',
                obsecuretextvalue: false,
                color: Colors.white,
                Iconholder: Icon(Icons.location_on,
                    color: Colors.black.withOpacity(0.3), size: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Track my location',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
              Inputfields(
                hinttextholder: 'Job Description',
                obsecuretextvalue: false,
                color: Colors.white,
                Iconholder: Icon(Icons.checklist,
                    color: Colors.black.withOpacity(0.3), size: 18),
              ),
              SizedBox(
                height: 30,
              ),
              buttondata(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bookmaidpayment()));
                },
                Buttontext: 'Search Maid',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SvgPicture.asset(
                  'assets/lady.svg',
                  height: 150,
                  width: 200,
                ),
              ),
            ],
          ),
        ));
  }
}
