import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class WelcomeNameScreen extends StatefulWidget {
  const WelcomeNameScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeNameScreen> createState() => _WelcomeNameScreenState();
}

class _WelcomeNameScreenState extends State<WelcomeNameScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/welcomeFrame.png",
              scale: 4,
            ),
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Welcome Aadil.",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                fontFamily: "ProximaNova",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let's get to know you better.",
              textAlign: TextAlign.center,
              style: utils.mediumTitleTextStyle(
                  color: Colors.black.withOpacity(0.8)),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: utils.gradientBigButton(
                  onTap: () {
                    Navigator.pushNamed(context, onBoardingMenWomenScreenRoute);
                  },
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 55.0,
                  containerColor: blueColor,
                  textColor: Colors.white,
                  shadowColors: Colors.white,
                  text: "Complete your visible profile",
                  fontSize: 15,
                  borderRadius: 10.0),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
