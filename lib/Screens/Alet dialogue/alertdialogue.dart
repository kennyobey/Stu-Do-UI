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
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: Color.fromRGBO(25, 50, 80, 10),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Tags",
                        style: TextStyle(
                            color: Color.fromRGBO(25, 50, 80, 10),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Deadline",
                        style: TextStyle(
                            color: Color.fromRGBO(25, 50, 80, 10),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              body: TabBarView(children: [
                Container(
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
                            contentPadding: EdgeInsets.all(20), // Added this
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
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Even Densed TextFiled',
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(8), // Added this
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ]),
            )));

    //  Stack(
    //   children: <Widget>[
    //     Container(
    //       padding: EdgeInsets.only(left: Constants.padding,top: Constants.avatarRadius
    //           + Constants.padding, right: Constants.padding,bottom: Constants.padding
    //       ),
    //       margin: EdgeInsets.only(top: Constants.avatarRadius),
    //       decoration: BoxDecoration(
    //         shape: BoxShape.rectangle,
    //         color: Colors.white,
    //         borderRadius: BorderRadius.circular(Constants.padding),
    //         boxShadow: [
    //           BoxShadow(color: Colors.black,offset: Offset(0,5),
    //           blurRadius: 5
    //           ),
    //         ]
    //       ),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: <Widget>[
    //           Row(
    //           children: [
    //           Container(
    //           margin: EdgeInsets.all(3),
    //           child: FlatButton(
    //             child: Text('Details', style: TextStyle(fontSize: 15.0),),
    //             color: Color.fromRGBO(25, 50, 80, 1),
    //             textColor: Colors.white,
    //             onPressed: () {},
    //           ),
    //         ),
    //         Container(

    //           margin: EdgeInsets.all(3),
    //           child: FlatButton(
    //             child: Text('Tags', style: TextStyle(fontSize: 15.0),),
    //             color: Color.fromRGBO(25, 50, 80, 1),
    //             textColor: Colors.white,
    //             onPressed: () {},
    //           ),
    //         ),
    //         Container(
    //           margin: EdgeInsets.all(3),
    //           child: FlatButton(
    //             child: Text('Deadline', style: TextStyle(fontSize: 15.0),),
    //             color: Color.fromRGBO(25, 50, 80, 1),
    //             textColor: Colors.white,
    //             onPressed: () {},
    //           ),
    //         ),

    //         ],),
    //           TextFormField(
    //               decoration: InputDecoration(
    //                 labelText: 'Title',
    //                 labelStyle: TextStyle(
    //                     fontFamily: 'Montserrat',
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.grey,
    //                     fontSize: 15),
    //                 focusedBorder: UnderlineInputBorder(
    //                     borderSide: BorderSide(color: Color.fromRGBO(25, 50, 80, 1),)),
    //               ),
    //               onChanged: (text){
    //                  // var name = text;
    //               },
    //             ),
    //             TextFormField(
    //               decoration: InputDecoration(
    //                 labelText: 'Description',
    //                 labelStyle: TextStyle(
    //                     fontFamily: 'Montserrat',
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.grey,
    //                     fontSize: 15),
    //                 focusedBorder: UnderlineInputBorder(
    //                     borderSide: BorderSide(color: Color.fromRGBO(25, 50, 80, 1),)),
    //               ),
    //               onChanged: (text){
    //                  // var name = text;
    //               },
    //             ),
    //             Align(
    //             alignment: Alignment.bottomLeft,
    //             child: FlatButton(
    //                 onPressed: (){
    //                   Navigator.of(context).pop();
    //                 },
    //                 child: Text("Submit", style: TextStyle(fontSize: 18),)),
    //           ),

    //           Align(
    //             alignment: Alignment.bottomRight,
    //             child: FlatButton(
    //                 onPressed: (){
    //                   Navigator.of(context).pop();
    //                 },
    //                 child: Text("Submit", style: TextStyle(fontSize: 18),)),
    //           ),
    //         ],
    //       ),
    //     ),

    //   ],
    // );
  }
}

Widget _buildTextField() {
  final maxLines = 5;

  return Container(
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: "Enter a message",
        fillColor: Colors.grey[300],
        filled: true,
      ),
    ),
  );
}
