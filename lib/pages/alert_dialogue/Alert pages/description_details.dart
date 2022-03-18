// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedAlertBox extends StatefulWidget {
  const RoundedAlertBox(BuildContext context, {Key? key}) : super(key: key);

  @override
  _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
}

class _RoundedAlertBoxState extends State<RoundedAlertBox> {
  Color myColor = const Color(0xff00bfa5);

  @override
  Widget build(BuildContext context) {
    
    return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: const EdgeInsets.only(top: 10.0),
        content: Container(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Text(
                    "Details",
                    style: TextStyle(
                        color: Color.fromRGBO(25, 50, 80, 10),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Icon(
                    Icons.star_border,
                    size: 30.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Divider(
                color: Colors.grey,
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    Text(
                      "Finish UI Designs",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w900,
                          fontSize: 13),
                    ),
                    Text(
                      "Finish UI design for STUDO App before September 2021",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Priority",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w900,
                          fontSize: 13),
                    ),
                    _button2("low"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w900,
                          fontSize: 13),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _button2("Work"),
                        _button2("Personal"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Reminder",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w900,
                          fontSize: 13),
                    ),
                    Text(
                      "1 hour before",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 50, 80, 10),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0)),
                  ),
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _button2(String title) {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: FlatButton(
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
      ),
      color: const Color.fromRGBO(25, 50, 80, 10),
      textColor: Colors.white,
      onPressed: () {},
    ),
  );
}
