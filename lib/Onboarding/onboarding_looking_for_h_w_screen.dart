import 'package:flutter/material.dart';
import '../Utilities/app_utils.dart';
import '../Constants/app_constants.dart';

class OnBoardingLookingForScreen extends StatefulWidget {
  const OnBoardingLookingForScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingLookingForScreen> createState() =>
      _OnBoardingLookingForScreenState();
}

class _OnBoardingLookingForScreenState
    extends State<OnBoardingLookingForScreen> {
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
                          "assets/temp.png",
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
              "What are your looking for?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            utils.bigButtonWithIcon(
                width: MediaQuery.of(context).size.width * 0.9,
                containerColor: Colors.grey[200],
                text: "A Husband",
                fontWeight: FontWeight.w500,
                height: 50.0,
                shadowColors: Colors.white,
                borderRadius: 20.0,
                image: "assets/husband.png"),
            const SizedBox(
              height: 25,
            ),
            utils.bigButtonWithIcon(
                width: MediaQuery.of(context).size.width * 0.9,
                containerColor: Colors.grey[200],
                text: "A Wife",
                shadowColors: Colors.white,
                fontWeight: FontWeight.w500,
                height: 50.0,
                borderRadius: 20.0,
                image: "assets/wife.png"),
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
                            context, onBoardingLocationScreenRoute);
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
                    Navigator.pushNamed(context, onBoardingLocationScreenRoute);
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
