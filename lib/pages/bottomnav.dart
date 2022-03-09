import 'package:flutter/material.dart';
import 'package:studo/pages/calenderview.dart';
import 'package:studo/pages/homepage.dart';

import 'Alert_dialogue/alertdialogue.dart';

class MyNavPage extends StatefulWidget {
  const MyNavPage({Key? key}) : super(key: key);

  @override
  _MyNavPageState createState() => _MyNavPageState();
}

class _MyNavPageState extends State<MyNavPage> {
  late int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    TodoHomePage(),
    Calenderpage()
    //TableRangeExample()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(25, 50, 80, 1),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogBox(
                    title: "Custom Dialog Demo",
                    descriptions:
                        "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                    text: "Yes",
                  );
                });
          },
        ),
        backgroundColor: Color.fromRGBO(
          25,
          50,
          80,
          10,
        ),
        body: Center(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(25, 50, 80, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          // selectedIconTheme: IconThemeData(
          //   color: Color.fromRGBO(25, 50, 80, 10),
          // ),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
