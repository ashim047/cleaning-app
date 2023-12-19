import 'package:flutter/material.dart';

class navigationdrawer extends StatefulWidget {
  const navigationdrawer({super.key});

  @override
  State<navigationdrawer> createState() => _navigationdrawerState();
}

class _navigationdrawerState extends State<navigationdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 210,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffeaeaf4),
              ),

              //content
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0),
                      child: IconButton(
                          onPressed: () {
                            Scaffold.of(context).closeDrawer();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Color(0xffefc53d),
                          )),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/worldcup.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  'John Doe',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kathmandu',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xffefc53d),
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add_circle,
              color: Color(0xffefc53d),
            ),
            title: const Text('Booked Service'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.assessment,
              color: Color(0xffefc53d),
            ),
            title: const Text('Aboout Royal Cleaning'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Color(0xffefc53d),
            ),
            title: const Text('Account Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Color(0xffefc53d),
            ),
            title: const Text('Help'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
