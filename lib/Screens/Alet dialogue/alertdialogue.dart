// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables

import 'dart:ui';
//import 'package:custom_dialog_flutter_demo/constants.dart';
import 'package:flutter/material.dart';
import 'package:studo/Screens/Alet%20dialogue/constant.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

  CustomDialogBox(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.text})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(25, 50, 80, 10),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Tags",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Deadline",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              body: TabBarView(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Title',
                            isDense: true, // Added this
                            contentPadding: EdgeInsets.all(8), // Added this
                          ),
                        ),
                        _buildTextField()
                      ]),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Even Densed TextFiled',
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(8), // Added this
                              ),
                            ),
                          ])
                    ])),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _button("Low"),
                            Spacer(),
                            _button("Medium"),
                            Spacer(),
                            _button("High")
                          ]),
                    ],
                  ),
                ),
              ]),
            )));
  }
}

Widget _buildTextField() {
  const maxLines = 5;

  return Container(
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Even Densed TextFiled',
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(8), // Added this
      ),
    ),
  );
}

Widget _button(String title) {
  return Container(
      margin: EdgeInsets.all(25),
      child: FlatButton(
        child: Text(
          title,
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.red,
        textColor: Colors.white,
        onPressed: () {},
      ));
}
