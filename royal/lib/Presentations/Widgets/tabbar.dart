import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
                labelColor: Color.fromARGB(255, 225, 205, 31),
                unselectedLabelColor: Colors.black,
                indicatorColor: Color(0xff8e1625),
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Description',
                  ),
                  Tab(text: 'More Info'),
                  Tab(text: 'Help'),
                ]),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TabBarView(children: [
                  Text(
                      'This is where we can employ clean architecture and test driven development. As proposed by our friendly Uncle Bob, we should all strive to separate code into independent layers and depend on abstractions instead of concrete implementations .How can such an independence be achieved Although we are getting ahead of ourselves a bit, on the layered "onion" image below, the horizontal arrows ---> represent dependency flow. For example, Entities do not depend on anything, Use Cases depend only on Entities etc.',
                      style: TextStyle(color: Colors.black.withOpacity(0.4))),
                  Text('info'),
                  Text('help'),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
