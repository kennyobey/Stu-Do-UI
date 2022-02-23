import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class CustomTheme {
  final BoxConstraints constraints;

  CustomTheme(this.constraints);

  final double designWidth = 375.0;
  final double designHeight = 812.0;

  double _getProportionateScreenWidth(inputWidth) {
    return (inputWidth / designWidth) * constraints.maxWidth;
  }

  double _getProportionateScreenHeight(inputHeight) {
    return (inputHeight / designHeight) * constraints.maxHeight;
  }

  nunito() => GoogleFonts.nunitoTextTheme(
        TextTheme(
          headline1: TextStyle(
            fontSize: _getProportionateScreenWidth(60),
            fontWeight: FontWeight.normal,
          ),
          headline2: TextStyle(
            fontSize: _getProportionateScreenWidth(36),
            fontWeight: FontWeight.normal,
          ),
          headline3: TextStyle(
            fontSize: _getProportionateScreenWidth(24),
            fontWeight: FontWeight.normal,
          ),
          headline4: const TextStyle().copyWith(
            fontSize: _getProportionateScreenWidth(16),
            fontWeight: FontWeight.normal,
          ),
          bodyText1: TextStyle(
            fontSize: _getProportionateScreenWidth(14),
            fontWeight: FontWeight.w600,
          ),
          bodyText2: TextStyle(
            fontSize: _getProportionateScreenWidth(14),
          ),
        ),
      );

  elevatedButtonTheme() => ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primarycolor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                _getProportionateScreenWidth(4),
              ),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: _getProportionateScreenWidth(16),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            Size(
              double.infinity,
              _getProportionateScreenHeight(56),
            ),
          ),
        ),
      );

  outlinedButtonTheme() => OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(AppColors.primarycolor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                _getProportionateScreenWidth(4),
              ),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          side: MaterialStateProperty.all(
            BorderSide(
                width: _getProportionateScreenWidth(1.5),
                color: AppColors.primarycolor),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: _getProportionateScreenWidth(16),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            Size(double.infinity, _getProportionateScreenHeight(56)),
          ),
        ),
      );
}
