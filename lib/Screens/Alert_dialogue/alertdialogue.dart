import 'package:flutter/material.dart';

import 'constant.dart';

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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _button("Low"),
                          _button("Medium"),
                          _button("High")
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
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.red),
    child: Text(
      title,
      style: TextStyle(fontSize: 20.0),
    ),
  );
}
