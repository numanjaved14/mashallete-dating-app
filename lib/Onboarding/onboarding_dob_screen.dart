import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingDateOfBirthScreen extends StatefulWidget {
  const OnBoardingDateOfBirthScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingDateOfBirthScreen> createState() =>
      _OnBoardingDateOfBirthScreenState();
}

class _OnBoardingDateOfBirthScreenState
    extends State<OnBoardingDateOfBirthScreen> {
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
            SizedBox(
              height: 50,
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
            const SizedBox(
              height: 10,
            ),
            Text(
              "What's your date of \nbirth?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/selfie.png",
                  scale: 6,
                ),
                Text(
                  "sent to 5555 5555 5555. ",
                  style: utils.mediumTitleTextStyle(color: Colors.black),
                ),
                const Text(
                  "Change",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: blueColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
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
                        fontWeight: FontWeight.w600,
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
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
