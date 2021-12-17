// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:studo/Screens/signin.dart';

class SignUp extends StatelessWidget {
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
                            "Sign Up",
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
                          "Let's Get Started",
                          style: TextStyle(
                              color: Color.fromRGBO(25, 50, 80, 10),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        name('Name'),
                        SizedBox(
                          height: 10,
                        ),
                        name("E-mail"),
                        SizedBox(
                          height: 10,
                        ),
                        password("Password"),
                        SizedBox(
                          height: 10,
                        ),
                        password("Confirm Password"),
                        SizedBox(
                          height: 30,
                        ),
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
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          },
          child: InkWell(
            child: Text(
              "Sign Up",
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
            "Already have an account? Login",
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
