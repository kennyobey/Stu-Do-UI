import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studo/services/repository/auth_repository.dart';
import 'signup.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  Timer? timer;
  final controller = Get.find<AuthenticationRepository>();
  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(milliseconds: 2000), () {});
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    // ignore: unnecessary_this
    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'asset/studosreen.png',
            width: animation.value * 250,
            height: animation.value * 250,
          ),
          const Text(
            "STUDO",
            style: TextStyle(
                color: Color.fromRGBO(25, 50, 80, 10),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ],
      ),
    );
  }
}
