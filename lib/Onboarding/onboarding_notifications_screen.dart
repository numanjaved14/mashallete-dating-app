import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class OnBoardingNotificationsScreen extends StatefulWidget {
  const OnBoardingNotificationsScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingNotificationsScreen> createState() =>
      _OnBoardingNotificationsScreenState();
}

class _OnBoardingNotificationsScreenState
    extends State<OnBoardingNotificationsScreen> {
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
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: blueColor,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.0,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: blueColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 0.60,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blueColor,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          "assets/bell.png",
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
            const Text(
              "Never miss out on a \nmessage!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            utils.bigButton(
                width: MediaQuery.of(context).size.width * 0.9,
                containerColor: Colors.grey[200],
                text: "Enable Notifications",
                fontWeight: FontWeight.w500,
                height: 50.0,
                shadowColors: Colors.white,
                borderRadius: 20.0),
            const SizedBox(
              height: 16,
            ),
            utils.bigButton(
                width: MediaQuery.of(context).size.width * 0.9,
                containerColor: Colors.grey[200],
                text: "Disable Notifications",
                shadowColors: Colors.white,
                fontWeight: FontWeight.w500,
                height: 50.0,
                borderRadius: 20.0),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "",
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, welcomeNameScreenRoute);
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
