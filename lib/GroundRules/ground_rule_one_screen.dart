import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class GroundRuleOneScreen extends StatefulWidget {
  const GroundRuleOneScreen({Key? key}) : super(key: key);

  @override
  State<GroundRuleOneScreen> createState() => _GroundRuleOneScreenState();
}

class _GroundRuleOneScreenState extends State<GroundRuleOneScreen> {
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
                      "assets/screenshot.png",
                      scale: 2,
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
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "No Screenshots",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "You should be able to find your special someone without being shared around.",
              style: TextStyle(fontSize: 17, height: 1.5),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
            ),
            Align(
              alignment: Alignment.center,
              child: utils.bigButton(
                  onTap: () {
                    Navigator.pushNamed(context, groundRuleTwoScreenRoute);
                  },
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 55.0,
                  containerColor: blueColor,
                  textColor: Colors.white,
                  text: "I understand",
                  fontSize: 15,
                  borderRadius: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
