// // ignore_for_file: prefer_final_fields, deprecated_member_use, prefer_const_constructors

// import 'package:flutter/material.dart';  
  
// abstract class TextFieldAlertDialog extends StatelessWidget {  
//   final TextEditingController _textFieldController = TextEditingController();

//   TextFieldAlertDialog({Key? key}) : super(key: key);  
  
//   _displayDialog(BuildContext context) async {  
//     return showDialog(  
//         context: context,  
//         builder: (context) {  
//           return AlertDialog(  
//             title: Text('TextField AlertDemo'),  
//             content: TextField(  
//               controller: _textFieldController,  
//               decoration: InputDecoration(hintText: "TextField in Dialog"),  
//             ),  
//             actions: <Widget>[  
//             FlatButton(  
//                 child: Text('SUBMIT'),  
//                 onPressed: () {  
//                   Navigator.of(context).pop();  
//                 },  
//               )  
//             ],  
//           );  
//         });   
//  } 