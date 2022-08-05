import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingEthnicityScreen extends StatefulWidget {
  const OnBoardingEthnicityScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingEthnicityScreen> createState() =>
      _OnBoardingEthnicityScreenState();
}

class _OnBoardingEthnicityScreenState extends State<OnBoardingEthnicityScreen> {
  var ethnicityController = TextEditingController();
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              "What is your ethnicity?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/pakistan.png",
                      scale: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Pakistani"),
                  ],
                ),
                Checkbox(
                  value: val1,
                  onChanged: (val) {
                    val1 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/indian-flag.png",
                      scale: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Indian"),
                  ],
                ),
                Checkbox(
                  value: val2,
                  onChanged: (val) {
                    val2 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/bangladesh.png",
                      scale: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Bengali"),
                  ],
                ),
                Checkbox(
                  value: val3,
                  onChanged: (val) {
                    val3 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip for now",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova",
                    color: blueColor,
                  ),
                ),
                utils.gradientBigButton(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingReligiousScreenRoute);
                  },
                  width: MediaQuery.of(context).size.width * 0.35,
                  text: "Continue",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
                  fontSize: 14.0,
                  height: 50.0,
                  shadowColors: Colors.white,
                )
              ],
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
