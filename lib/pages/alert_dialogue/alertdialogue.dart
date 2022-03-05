// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'constant.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("USA"), value: "USA"),
      const DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      const DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      const DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  const CustomDialogBox(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.text})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  String selectedValue = "USA";

  get dropdownItems => null;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: const EdgeInsets.only(top: 10.0),
        content: Container(
            width: 300.0,
            child: MaterialApp(
                home: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                        resizeToAvoidBottomInset: true,
                        appBar: AppBar(
                          backgroundColor: const Color.fromRGBO(25, 50, 80, 10),
                          bottom: const TabBar(
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

                        // Details Tab
                        body: TabBarView(children: [
                          SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Title',
                                        isDense: true, // Added this
                                        contentPadding:
                                            EdgeInsets.all(8), // Added this
                                      ),
                                    ),
                                    _buildTextField(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        _button2("Cancel"),
                                        _button2("Save")
                                      ],
                                    )
                                  ]),
                            ),
                          ),

                          // Tags Tab
                          SingleChildScrollView(
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Priority",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          _button2("Low"),
                                          _button2("Medium"),
                                          _button2("High"),
                                        ]),
                                    const Text(
                                      "Category",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          _button2("Low"),
                                        ]),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        _button2("Cancel"),
                                        _button2("Save")
                                      ],
                                    )
                                  ],
                                )),
                          ),

                          //Deadline tab
                          SingleChildScrollView(
                              child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Date",
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 50, 80, 10),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      _buttonMonth(),
                                      _buttonDate(),
                                      _buttonYear()
                                    ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Time",
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 50, 80, 10),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      _buttonHour(),
                                      _buttonMin(),
                                      _buttonZone()
                                    ]),
                              ],
                            ),
                          ))
                        ]))))));
  }
}

Widget _buildTextField() {
  const maxLines = 5;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    height: maxLines * 24.0,
    child: const TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Description',
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(8), // Added this
      ),
    ),
  );
}

Widget _button2(String title) {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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

Widget _buttonMonth() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        'January',
        'Febuary',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        "September",
        'Octber',
        'November',
        'December'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("August"),
      onChanged: (_) {},
    ),
  );
}

Widget _buttonDate() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        "9",
        '10',
        '11',
        '24'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("24"),
      onChanged: (_) {},
    ),
  );
}

Widget _buttonYear() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        '2021',
        '2022',
        '2023',
        '2024',
        '2025',
        '2026',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("2022"),
      onChanged: (_) {},
    ),
  );
}

Widget _buttonHour() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("04"),
      onChanged: (_) {},
    ),
  );
}

Widget _buttonMin() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("30"),
      onChanged: (_) {},
    ),
  );
}

Widget _buttonZone() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    // decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(25, 50, 80, 10))),
    child: DropdownButton<String>(
      items: <String>[
        'AM',
        'PM',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text("PM"),
      onChanged: (_) {},
    ),
  );
}
