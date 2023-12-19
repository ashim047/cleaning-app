import 'package:flutter/material.dart';
import 'package:royaldevelopment/Presentations/Pages/BookMaid.dart';

import 'package:royaldevelopment/Presentations/Pages/Servicedetail.dart';
import 'package:royaldevelopment/Presentations/Widgets/Drawer.dart';

import '../Widgets/Containermenu.dart';
import '../Widgets/Inputfield.dart';
import '../Widgets/Page_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaf4),
      appBar: pageheader(
        title: 'Dashboard',
        action: Padding(
          padding: const EdgeInsets.only(right: 45.0),
          child: Icon(
            Icons.account_circle,
            size: 30,
            color: Color(0xff8e1625),
          ),
        ),
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  size: 28,
                ),
                color: Color(0xFF8E1625),
              );
            }),
          );
        }),
      ),

      // //drawer
      // .
      // .
      // .
      // //
      drawer: navigationdrawer(),

      ///**** */
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Inputfields(
                color: Colors.white,
                hinttextholder: 'Search Services',
                suffixIconholder: Icons.search,
                obsecuretextvalue: false,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 500,
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 30,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Bookmaid()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Housemaid',
                        ),
                      ),
                      //Container 2
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Carpet Cleaning',
                        ),
                      ),
                      //container 3
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.chair,
                          containermenutext: 'Chair Cleaning',
                        ),
                      ),

                      //container 4
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Marble Polishing',
                        ),
                      ),
                      //container 5
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.format_paint,
                          containermenutext: 'Painting',
                        ),
                      ),
                      //container 6
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.pest_control,
                          containermenutext: 'Pest Control',
                        ),
                      ),
                      //container 7
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Parquet Polishing',
                        ),
                      ),
                      //container 8
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.water,
                          containermenutext: 'Water Tank Cleaning',
                        ),
                      ),
                      //container 9
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Monthly office Cleaner',
                        ),
                      ),
                      //container 10
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.water_drop_sharp,
                          containermenutext: 'Disinfectant',
                        ),
                      ),
                      //container 11
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.home_repair_service,
                          containermenutext: 'Sofa repair',
                        ),
                      ),
                      //container 12
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.account_box,
                          containermenutext: 'False Ceiling',
                        ),
                      ),
                      //container 13
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Septic Tank Cleaning',
                        ),
                      ),
                      //container 14
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.directions_car,
                          containermenutext: 'Car Cleaning',
                        ),
                      ),
                      //container 15
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.settings,
                          containermenutext: 'Gardening',
                        ),
                      ),
                      //container 16
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Servicedetail()),
                        ),
                        child: Containermenu(
                          containermenuicon: Icons.brush,
                          containermenutext: 'Security Guard',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
