import 'package:flutter/material.dart';
import 'package:mashalatte/Constants/app_constants.dart';

class OnBoardingFirstMainScreen extends StatefulWidget {
  const OnBoardingFirstMainScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingFirstMainScreen> createState() =>
      _OnBoardingFirstMainScreenState();
}

class _OnBoardingFirstMainScreenState extends State<OnBoardingFirstMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 2.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: blueColor.withOpacity(0.5)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
