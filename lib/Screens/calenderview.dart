// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:studo/Screens/Alet%20dialogue/constant.dart';
import 'package:table_calendar/table_calendar.dart';

class Calenderpage extends StatelessWidget {
  final CalendarController _controller = CalendarController();

  Calenderpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          title: Text(""),
          backgroundColor: Color.fromRGBO(25, 50, 80, 1),
          actions: [
            Padding(padding: EdgeInsets.all(8)),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
        drawer: Drawer(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //     child: CircleAvatar(
                    //       backgroundColor: Colors.transparent,
                    //       radius: Constants.avatarRadius,
                    //       child: ClipRRect(
                    //           borderRadius: BorderRadius.all(
                    //               Radius.circular(Constants.avatarRadius)),
                    //           child: Image.asset("asset/studosreen.png")),
                    //     ),
                    //   ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Text('Profile'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Text('Settings'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Text('Log Out'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Help & Feedback"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Term of Use"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Contact")
                      ],
                    )
                  ],
                ),
              ),
            ),

            // End of Drawer
            //resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(25, 50, 80, 1)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
                    child: Container(
                      height: 70,
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "August 24, Tuesday",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), // padding
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0))),
                          child: Column(children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TableCalendar(
                                    calendarController: _controller,
                                  )
                                ],
                              ),
                            ),
                          ])))
                ])));
  }
}
