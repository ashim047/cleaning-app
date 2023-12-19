import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



import '../Widgets/Inputfield.dart';
import '../Widgets/Page_header.dart';

class Bookmaidpayment extends StatelessWidget {
  const Bookmaidpayment({super.key});

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
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Total Hours:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      '1 hours',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Total Payment:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Rs. 3000/-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'To see the list of maid, you need to make the payment first.Thankyou.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
            SizedBox(
              height: 20,
            ),
            Inputfields(
              hinttextholder: 'Pay via e-Sewa',
              obsecuretextvalue: false,
              color: Colors.white,
              Iconholder: Image.asset(
                "../../assets/esewa.png",
                height: 40,
                width: 80,
              ),
            ),
            Inputfields(
              hinttextholder: 'Pay via Khalti',
              obsecuretextvalue: false,
              color: Colors.white,
              Iconholder: Image.asset(
                "../../assets/khalti.png",
                height: 40,
                width: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SvgPicture.asset(
                'assets/man.svg',
                height: 300,
                width: 300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
