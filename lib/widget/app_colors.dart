import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> orange = <int, Color>{
    50: Color(0xFFFCF2E7),
    100: Color(0xFFF8DEC3),
    200: Color(0xFFF3C89C),
    300: Color(0xFFEEB274),
    400: Color(0xFFEAA256),
    500: Color(0xFFE69138),
    600: Color(0xFFE38932),
    700: Color(0xFFDF7E2B),
    800: Color(0xFFDB7424),
    900: Color(0xFFFF574D)
  };

  static const primarycolor = Color(0xF6193250);
  static const secondarycolor = Color(0xFFC66648);
  static const accentcolor = Color(0xFF347275);

  static const bgedittextcolor = Color(0xFFF8F9FA);

  static const whitecolor = Colors.white;

  static const backgroundlight = Color(0xFFF0F0F0);

  static const grayColor = Color(0xFFBBBBBB);

  static const bgcolor = Color(0xFFF2F2F2);
  static const bg2color = Color(0xFF2D2D2D);

  static const textGrayColor = Color(0xFFA3A3A4);
  static const transparent = Color(0x00000000);

  static const Color primary = Color(0xFF1DA1F2);
  static const Color notification = Color(0xFFFFF2F1);
  static const Color secondary = Color(0xFF14171A);
  static const Color darkGrey = Color(0xFF1657786);
  static const Color lightGrey = Color(0xFFAAB8C2);
  static const Color placeholder = Color(0xFFF8F9FA);
  static const Color extraExtraLightGrey = Color(0xFF5F8FA);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const blackcolor = Color(0xFF333333);

  static const Color extraLightGrey = Color(0xFFEFF5F5);
  static const Color brown = Color(0xFF2D2D2D);
  static const Color yellow = Color(0xFFFACD5D);
  static const Color green = Color(0xFF419D3E);

  static const google_plus_red_color = Color(0xFFE3411F);

  static const facebook_blue_color = Color(0xFF45619D);
  static const facebook_grey_color = Color(0xFFF0F2F5);
  static const facebook_dgrey_color = Color(0xFFAEB4BB);
  static const facebook_icon_color = Color(0xFF4B4C4F);
  static const Inactive_facebook_color = Color(0xFF4B4C4F);
  static const Active_facebook_color = Color(0xFFE7F3FF);
  static const Theme = TextStyle(
    color: Color(0xFF14171A),
    fontFamily: "SofiaPro",
    fontStyle: FontStyle.normal,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
