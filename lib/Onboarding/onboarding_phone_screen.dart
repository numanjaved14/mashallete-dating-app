import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingPhoneScreen extends StatefulWidget {
  const OnBoardingPhoneScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingPhoneScreen> createState() => _OnBoardingPhoneScreenState();
}

class _OnBoardingPhoneScreenState extends State<OnBoardingPhoneScreen> {
  var phoneNumberController = TextEditingController();
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
                  width: MediaQuery.of(context).size.width * 0.0625,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: linearGradientBlue),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.687,
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
              "Can I get your number?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "We protect our community by making sure ",
              style: utils.mediumTitleTextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  "everyone that uses Mashalatte has a heart ",
                  style: utils.mediumTitleTextStyle(color: Colors.black),
                ),
                const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: 110,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black.withOpacity(0.4), width: 1.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "US +1",
                        style: utils.mediumTitleTextStyle(
                          color: blueColor,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                utils.textField(
                  controller: phoneNumberController,
                  hintText: "Phone Number",
                  fontSize: 17.0,
                  width: MediaQuery.of(context).size.width * 0.57,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.lock,
                      color: blueColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "We'll never share this with anyone",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "ProximaNova",
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingPhoneVerificationScreenRoute);
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
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
