import 'package:flutter/material.dart';
import 'package:mashalatte/Utilities/app_utils.dart';
import 'package:mashalatte/Constants/app_constants.dart';

class OnBoardingFirstMainScreen extends StatefulWidget {
  const OnBoardingFirstMainScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingFirstMainScreen> createState() =>
      _OnBoardingFirstMainScreenState();
}

class _OnBoardingFirstMainScreenState extends State<OnBoardingFirstMainScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: blueColor.withOpacity(0.4),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: MediaQuery.of(context).size.width * 0.0,
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: blueColor,
                              width: 2.5,
                            ),
                          ),
                          child: Image.asset(
                            "assets/telephone.png",
                            scale: 1.3,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.lock,
                        color: blueColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "We'll never share this with anyone",
                        style: utils.smallBoldTitleTextStyle(color: blueColor),
                      ),
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
