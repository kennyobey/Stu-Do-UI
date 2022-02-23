import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studo/widget/custom_theme.dart';
import 'pages/splashscreen.dart';
import 'services/app_binding/appbinding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print(constraints.maxHeight);
      final customTheme = CustomTheme(constraints);
      return GetMaterialApp(
        initialBinding: AppBinding(),
        theme: ThemeData(
          textTheme: customTheme.nunito(),
          elevatedButtonTheme: customTheme.elevatedButtonTheme(),
          outlinedButtonTheme: customTheme.outlinedButtonTheme(),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
        ),
        home: const Splash(),
      );
    });
  }
}
