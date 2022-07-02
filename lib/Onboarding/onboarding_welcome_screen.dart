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
            const SizedBox(
              height: 130,
            ),
            const Text(
              "Welcome Aadil!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let's get to know you a little \nbetter.",
              textAlign: TextAlign.center,
              style: utils.mediumTitleTextStyle(
                  color: Colors.black.withOpacity(0.8)),
            ),
            const Spacer(
              flex: 3,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.grey[300],
            ),
            const Spacer(
              flex: 4,
            ),
            Align(
              alignment: Alignment.center,
              child: utils.bigButton(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingLookingForScreenRoute);
                  },
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 55.0,
                  containerColor: blueColor,
                  textColor: Colors.white,
                  text: "Set your preferences",
                  fontSize: 15,
                  borderRadius: 30.0),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
