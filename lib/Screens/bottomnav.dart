// ignore_for_file: must_be_immutable, unused_label, unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studo/Screens/calenderview.dart';
import 'package:studo/Screens/homepage.dart';
import 'package:studo/Screens/signin.dart';

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
            onPressed: () {}),
        backgroundColor: Color.fromRGBO(25,50,80,10,),
        body: Center(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(25, 50, 80, 1),
          selectedItemColor: Colors.white,
           unselectedItemColor: Colors.grey[400],
          // selectedIconTheme: IconThemeData(
          //   color: Color.fromRGBO(25, 50, 80, 10),
          // ),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: <BottomNavigationBarItem>[
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
