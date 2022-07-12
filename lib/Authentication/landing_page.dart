import '../Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Text(
                "Mashalatte",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: "ProximaNova",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Unique tagline.",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up, you agree to our ",
                    style: utils.smallTitleTextStyle(color: Colors.white),
                  ),
                  Text(
                    "Terms of Service.",
                    style: utils.smallTitleBoldTextStyle(color: Colors.white),
                  ),
                  Text(
                    " See",
                    style: utils.smallTitleTextStyle(color: Colors.white),
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
                    style: utils.smallTitleTextStyle(color: Colors.white),
                  ),
                  Text(
                    "Privacy Policy.",
                    style: utils.smallTitleBoldTextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: utils.bigButton(
                    onTap: () {
                      Navigator.pushNamed(context, onBoardingPhoneScreenRoute);
                    },
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 55.0,
                    containerColor: blueColor,
                    textColor: Colors.white,
                    text: "Create Account",
                    fontSize: 15,
                    borderRadius: 30.0),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, loginWithPhoneNumberScreenRoute);
                },
                child: Text(
                  "Sign In",
                  style: utils.smallHeadingTextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
