import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class GroundRuleThreeScreen extends StatefulWidget {
  const GroundRuleThreeScreen({Key? key}) : super(key: key);

  @override
  State<GroundRuleThreeScreen> createState() => _GroundRuleThreeScreenState();
}

class _GroundRuleThreeScreenState extends State<GroundRuleThreeScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.6),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/screenshot.png",
                      scale: 3,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.6),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/screenshot.png",
                      scale: 3,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: blueColor,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/warning.png",
                      scale: 2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Expiring Matches",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "If you don't message each other for 7 days, we'll unmatch you automatically. Don't worry, we'll send you some reminders!.",
              style: utils.mediumTitleTextStyle(color: Colors.black),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
            ),
            Align(
              alignment: Alignment.center,
              child: utils.bigButton(
                  onTap: () {},
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 55.0,
                  containerColor: blueColor,
                  textColor: Colors.white,
                  text: "Get Started",
                  fontSize: 15,
                  borderRadius: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
