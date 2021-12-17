// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:studo/Screens/drawer.dart';
import 'package:studo/Screens/signin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodoHomePage extends StatefulWidget {
  @override
  _MyTodoHomePage createState() => _MyTodoHomePage();
}

class _MyTodoHomePage extends State<TodoHomePage> {
  final List<TaskList> _item = [
    TaskList("Finish Ui Design", "12:00pm"),
    TaskList("Call Charlotte", "2:00pm"),
    TaskList("Buy Goceries", "6:00pm"),
    TaskList("Hello", "12.00 am"),
    TaskList("Hello", "12.00 am"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
            // Drawer view
            drawer: Drawer(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(100.0),
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
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
            resizeToAvoidBottomInset: false,
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
                              padding: EdgeInsets.all(10),
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
                                SizedBox(height: 10),
                                Expanded(
                                  child: TabBarView(children: [
                                    // First TAb view
                                    Container(
                                      height: 200,
                                      width: 400,
                                      child: Column(
                                        children: [
                                          Text(
                                          "Today",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  25, 50, 80, 10),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                          ListView.builder(
                                            // itemBuilder: (context, position) {
                                            //   return Card(
                                            //     child: Padding(
                                            //       padding:
                                            //           const EdgeInsets.all(15.0),
                                            //       child: Text(
                                            //         'Today $position',
                                            //       ),
                                            //     ),
                                            //   );
                                            // },
                                            itemBuilder: (context, position) {
                                              return Card(
                                                color: Color.fromRGBO(
                                                    240, 244, 245, 10),
                                                child: ListTile(
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  leading: Image.asset(
                                                    "asset/Rectangle blue.png",
                                                    height: 90,
                                                    width: 10,
                                                    fit: BoxFit.fill,
                                                  ),
                                                  title: Text(
                                                    _item[position].title,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color.fromRGBO(
                                                          25, 50, 80, 10),
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    _item[position].date,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color.fromRGBO(
                                                          25, 50, 80, 10),
                                                    ),
                                                  ),
                                                  trailing: Icon(
                                                    Icons.circle,
                                                    color: Colors.yellow,
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Second Tab View
                                    Container(
                                      height: 200,
                                      width: 400,
                                      child: ListView.separated(
                                        itemBuilder: (context, position) {
                                          return Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                'Today $position',
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, position) {
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
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      25, 50, 80, 10),
                                                ),
                                              ),
                                              subtitle: Text(
                                                _item[position].date,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromRGBO(
                                                      25, 50, 80, 10),
                                                ),
                                              ),
                                              trailing: Icon(
                                                Icons.circle,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                          );
                                        },
                                        itemCount: 5,
                                      ),
                                    ),
                                          // Third Tab View
                                    Container(
                                      height: 200,
                                      width: 400,
                                      child: ListView.separated(
                                        itemBuilder: (context, position) {
                                          return Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                'Today $position',
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, position) {
                                          return Card(
                                            color: Color.fromRGBO(
                                                240, 244, 245, 10),
                                            child: ListTile(
                                              contentPadding:
                                                  EdgeInsets.all(10),
                                              leading: Image.asset(
                                                "asset/Rectangle.png",
                                                height: 90,
                                                width: 10,
                                                fit: BoxFit.fill,
                                              ),
                                              title: Text(
                                                _item[position].title,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      25, 50, 80, 10),
                                                ),
                                              ),
                                              subtitle: Text(
                                                _item[position].date,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromRGBO(
                                                      25, 50, 80, 10),
                                                ),
                                              ),
                                              trailing: Icon(
                                                Icons.circle,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                          );
                                        },
                                        itemCount: 5,
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
        trailing: Icon(
          Icons.circle,
          color: Colors.yellow,
        ),
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
  late String date;

  TaskList(
    this.title,
    this.date,
  );
}
