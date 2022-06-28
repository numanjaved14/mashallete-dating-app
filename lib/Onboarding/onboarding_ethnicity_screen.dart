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
              height: 120,
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
              "What is your ethnicity?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            utils.textField(
              controller: ethnicityController,
              width: MediaQuery.of(context).size.width * 0.9,
              hintText: "Search",
            ),
            const SizedBox(
              height: 25,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                utils.ethnicityWidget(icon1: Icons.flag, text: "Ethnicity 1"),
                utils.ethnicityWidget(icon1: Icons.flag, text: "Ethnicity 2"),
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
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, onBoardingReligiousScreenRoute);
                      },
                      child: const Text(
                        "Skip for now",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingReligiousScreenRoute);
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
