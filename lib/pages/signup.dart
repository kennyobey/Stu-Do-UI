// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:studo/services/repository/auth_repository.dart';
import 'package:studo/widget/app_colors.dart';
import 'package:studo/widget/custom_textform_field.dart';
import 'signin.dart';

class SignUp extends GetView<AuthenticationRepository> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primarycolor,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ), // padding
              SizedBox(height: 20),
              Container(
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
                      "Let's Get Started",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 50, 80, 10),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextForField(
                      hint: 'First Name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextForField(
                      hint: 'Last Name',
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
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextForField(
                            hint: 'Department',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextForField(
                            hint: 'Faculty',
                          ),
                        ),
                      ],
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
                    signup(context),
                    // Spacer(),
                    haveaccount()
                  ],
                ),
              ),
            ]),
      ),
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
              color: AppColors.primarycolor,
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
  return Center(
    child: InkWell(
      child: Text(
        "Already have an account? Login",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: AppColors.primarycolor,
            fontFamily: "Montserrat"),
      ),
    ),
  );
}
