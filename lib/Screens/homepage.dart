// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Alert_dialogue/constant.dart';

class TodoHomePage extends StatefulWidget {
  @override
  _MyTodoHomePage createState() => _MyTodoHomePage();
}

class _MyTodoHomePage extends State<TodoHomePage> {
  final List<TaskList> _item = [
    TaskList("Finish Ui Design", "12:00pm", "02/04/21"),
    TaskList("Call Charlotte", "2:00pm", "03/05/21"),
    TaskList("Buy Goceries", "6:00pm", "03/06/21"),
    TaskList("Hello", "12.00 am", "05/05/21"),
    TaskList("Hello", "12.00 am", "04/06/21"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              elevation: 0,
              title: const Text(""),
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
            // Drawer view
            drawer: Drawer(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: Constants.avatarRadius,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Constants.avatarRadius)),
                            child: Image.asset("asset/studosreen.png")),
                      ),
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
                        padding: EdgeInsets.only(
                            top: 0, bottom: 0, right: 20, left: 20),
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
                                  padding: EdgeInsets.all(10),
                                  child: TabBar(
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          "Todo",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  25, 50, 80, 10),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          "Missing",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  25, 50, 80, 10),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  25, 50, 80, 10),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Expanded(
                                  child: TabBarView(children: [
                                    // First TAb view
                                    SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        // height: 200,
                                        // width: 400,
                                        child: Column(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Pending Task",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          25, 50, 80, 10),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                ListView.builder(
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, position) {
                                                    return Card(
                                                      color: Color.fromRGBO(
                                                          240, 244, 245, 10),
                                                      child: ListTile(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        leading: Image.asset(
                                                          "asset/Rectangle green.png",
                                                          height: 90,
                                                          width: 10,
                                                          fit: BoxFit.fill,
                                                        ),
                                                        title: Text(
                                                          _item[position].title,
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromRGBO(
                                                                    25,
                                                                    50,
                                                                    80,
                                                                    10),
                                                          ),
                                                        ),
                                                        subtitle: Text(
                                                          _item[position].time,
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Color.fromRGBO(
                                                                    25,
                                                                    50,
                                                                    80,
                                                                    10),
                                                          ),
                                                        ),
                                                        trailing: Text(
                                                          _item[position].date,
                                                        ),
                                                        // trailing: Icon(
                                                        //   Icons.circle,
                                                        //   color: Colors.yellow,
                                                        // ),
                                                      ),
                                                    );
                                                  },
                                                  itemCount: 5,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Second Tab View
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            // height: 200,
                                            // width: 400,
                                            child: Column(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Missing Task",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              25, 50, 80, 10),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    ListView.builder(
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      shrinkWrap: true,
                                                      itemBuilder:
                                                          (context, position) {
                                                        return Card(
                                                          color: Color.fromRGBO(
                                                              240,
                                                              244,
                                                              245,
                                                              10),
                                                          child: ListTile(
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            leading:
                                                                Image.asset(
                                                              "asset/Rectangle.png",
                                                              height: 90,
                                                              width: 10,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            title: Text(
                                                              _item[position]
                                                                  .title,
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        25,
                                                                        50,
                                                                        80,
                                                                        10),
                                                              ),
                                                            ),
                                                            subtitle: Text(
                                                              _item[position]
                                                                  .time,
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        25,
                                                                        50,
                                                                        80,
                                                                        10),
                                                              ),
                                                            ),
                                                            trailing: Text(
                                                              _item[position]
                                                                  .date,
                                                            ),
                                                            // trailing: Icon(
                                                            //   Icons.circle,
                                                            //   color: Colors.yellow,
                                                            // ),
                                                          ),
                                                        );
                                                      },
                                                      itemCount: 5,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Third Tab View
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            // height: 200,
                                            // width: 400,
                                            child: Column(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Finished Task",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              25, 50, 80, 10),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    ListView.builder(
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      shrinkWrap: true,
                                                      itemBuilder:
                                                          (context, position) {
                                                        return Card(
                                                          color: Color.fromRGBO(
                                                              240,
                                                              244,
                                                              245,
                                                              10),
                                                          child: ListTile(
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            leading:
                                                                Image.asset(
                                                              "asset/Rectangle blue.png",
                                                              height: 90,
                                                              width: 10,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            title: Text(
                                                              _item[position]
                                                                  .title,
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        25,
                                                                        50,
                                                                        80,
                                                                        10),
                                                              ),
                                                            ),
                                                            subtitle: Text(
                                                              _item[position]
                                                                  .time,
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        25,
                                                                        50,
                                                                        80,
                                                                        10),
                                                              ),
                                                            ),
                                                            trailing: Text(
                                                              _item[position]
                                                                  .date,
                                                            ),
                                                            // trailing: Icon(
                                                            //   Icons.circle,
                                                            //   color: Colors.yellow,
                                                            // ),
                                                          ),
                                                        );
                                                      },
                                                      itemCount: 5,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ])))
                    ]))));
  }
}

Widget list(String title, String subtitle) {
  return Container(
    height: 75,
    child: Card(
      color: Colors.grey[100],
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: FaIcon(FontAwesomeIcons.wineBottle),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(25, 50, 80, 10),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(25, 50, 80, 10),
          ),
        ),
        trailing: Text("12/05/2020"),
        // trailing: Icon(
        //   Icons.circle,
        //   color: Colors.yellow,
        // ),
      ),
    ),
  );
}

Widget daylist(String day) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Text(
          day,
          style: TextStyle(
              color: Color.fromRGBO(25, 50, 80, 10),
              fontWeight: FontWeight.bold,
              fontSize: 15),
          textAlign: TextAlign.end,
        ),
      ],
    ),
  );
}

class TaskList {
  late String title;
  String time;
  late String date;

  TaskList(
    this.title,
    this.time,
    this.date,
  );
}
