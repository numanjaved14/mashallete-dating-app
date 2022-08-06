import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Image.asset(
                "assets/mashalatteTextWhite.png",
                scale: 13,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Here's to the last dating app you'll need.",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up, you agree to our ",
                    style: width > 415
                        ? utils.smallTitleTextStyle(color: Colors.white)
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "ProximaNova",
                          ),
                  ),
                  Text(
                    "Terms of Service.",
                    style: width > 415
                        ? utils.smallTitleBoldTextStyle(color: Colors.white)
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "ProximaNova",
                          ),
                  ),
                  Text(
                    " See",
                    style: width > 415
                        ? utils.smallTitleTextStyle(color: Colors.white)
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "ProximaNova",
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "how we keep your data safe in our ",
                    style: width > 415
                        ? utils.smallTitleTextStyle(color: Colors.white)
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "ProximaNova",
                          ),
                  ),
                  Text(
                    "Privacy Policy.",
                    style: width > 415
                        ? utils.smallTitleBoldTextStyle(color: Colors.white)
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "ProximaNova",
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              utils.gradientBigButton(
                width: double.infinity,
                textColor: Colors.white,
                borderRadius: 10.0,
                height: 50.0,
                text: "Log In",
                fontWeight: FontWeight.w900,
                onTap: () {
                  Navigator.pushNamed(context, loginWithPhoneNumberScreenRoute);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              utils.bigButton(
                width: double.infinity,
                textColor: blueColor,
                containerColor: Colors.white,
                borderRadius: 10.0,
                height: 50.0,
                text: "Sign Up",
                fontWeight: FontWeight.w900,
                onTap: () {
                  Navigator.pushNamed(context, onBoardingPhoneScreenRoute);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              // Align(
              //   alignment: Alignment.center,
              //   child: utils.bigButton(
              //       onTap: () {
              //         Navigator.pushNamed(context, onBoardingPhoneScreenRoute);
              //       },
              //       width: MediaQuery.of(context).size.width * 0.7,
              //       height: 55.0,
              //       containerColor: blueColor,
              //       textColor: Colors.white,
              //       text: "Create Account",
              //       fontSize: 15,
              //       borderRadius: 30.0),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
