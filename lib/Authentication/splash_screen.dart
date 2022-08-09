import 'dart:async';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            "assets/mashalatteSplash.png",
          ),
        ),
      ),
    );
  }

  splashNavigator() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, landingScreenRoute);
    });
  }
}
