import 'package:flutter/material.dart';

import 'constant.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

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
                              contentPadding: EdgeInsets.all(8), // Added this
                            ),
                          ),
                          _buildTextField(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [_button("Cancel"), _button("Save")],
                          )
                        ]),
                  ),
                ),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _button("Low"),
                                _button("Medium"),
                                _button("High")
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _button("Low"),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [_button("Cancel"), _button("Save")],
                          )
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _button("Low"),
                            const Spacer(),
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

Widget _button(String title) {
  return Container(
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromRGBO(25, 50, 80, 10),
    ),
    child: Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),
    ),
  );
}
