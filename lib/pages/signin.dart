// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:studo/widget/custom_textform_field.dart';

import 'bottomnav.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color.fromRGBO(25, 50, 80, 1)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(top: 40, bottom: 40, right: 40, left: 40),
                  child: Container(
                    height: 70,
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ), // padding
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    padding: EdgeInsets.only(bottom: 40, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                              color: Color.fromRGBO(25, 50, 80, 10),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextForField(
                          hint: 'Email',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextForField(
                          hint: 'Password',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        forgot(),
                        SizedBox(height: 40),
                        signup(context),
                        Spacer(),
                        haveaccount()
                      ],
                    ),
                  ),
                ),
              ])),
    );
  }
}

Widget name(String name) {
  return Container(
    padding: EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: name,
            labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(25, 50, 80, 10),
              fontSize: 15,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(25, 50, 80, 10))),
          ),
        )
      ],
    ),
  );
}

Widget password(String name) {
  return Container(
    padding: EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: name,
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(25, 50, 80, 10),
                fontSize: 15),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(25, 50, 80, 10))),
          ),
        )
      ],
    ),
  );
}

Widget signup(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    height: 50,
    child: Material(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromRGBO(25, 50, 80, 10),
      child: Center(
        child: (GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyNavPage()),
            );
          },
          child: InkWell(
            child: Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Montserrat"),
            ),
          ),
        )),
      ),
    ),
  );
}

Widget haveaccount() {
  return Container(
    padding: EdgeInsets.only(left: 0, right: 0),
    height: 45,
    child: Material(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromRGBO(25, 50, 80, 10),
      child: Center(
        child: InkWell(
          child: Text(
            "Dont have an account yet? signup",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Colors.white,
                fontFamily: "Montserrat"),
          ),
        ),
      ),
    ),
  );
}

Widget forgot() {
  return Container(
    alignment: Alignment(1.0, 0.0),
    padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 20),
    child: InkWell(
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 10,
          color: Color.fromRGBO(25, 50, 80, 10),
        ),
      ),
    ),
  );
}
