import 'package:dating_app/Constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class OnBoardingLocationScreen extends StatefulWidget {
  const OnBoardingLocationScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingLocationScreen> createState() =>
      _OnBoardingLocationScreenState();
}

class _OnBoardingLocationScreenState extends State<OnBoardingLocationScreen> {
  var locationController = TextEditingController();
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
                  width: MediaQuery.of(context).size.width * 0.437,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.312,
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
              "Where do you live?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: TextFormField(
                  showCursor: false,
                  onChanged: (val) {
                    setState(() {});
                  },
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: locationController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "Location",
                    hintStyle: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 22,
                      fontFamily: "ProximaNova",
                    ),
                    suffixIcon: Image.asset(
                      "assets/locationTarget.png",
                      scale: 4,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova",
                    color: blueColor,
                  ),
                ),
                utils.gradientBigButton(
                  onTap: locationController.text.isEmpty
                      ? () {}
                      : () {
                          Navigator.pushNamed(
                              context, onBoardingEthnicityScreenRoute);
                        },
                  width: MediaQuery.of(context).size.width * 0.35,
                  text: "Continue",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
                  enabled: locationController.text.isEmpty ? true : false,
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
