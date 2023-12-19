import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Booksucessfull extends StatelessWidget {
  const Booksucessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaf4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Booked Succesfuly!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/carpet.png',
                    height: 120,
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
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Category',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.4))),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Cost:',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.4))),
                      Text('Rs. 1000/-',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.4))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Color.fromARGB(227, 109, 100, 100).withOpacity(0.4),
              thickness: 1,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(50.0),
            //   child: SvgPicture.asset(
            //     "assets/1.svg",
            //     height: 230,
            //     width: 230,
            //   ),
            // ),
            Hero(
              tag: 'Image',
              child: Image.asset(
                'assets/carpet.png',
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please check your email for confirmation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'we also have send a confirmation SMS to your registered mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
