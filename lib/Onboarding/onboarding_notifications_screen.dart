import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/cupertino.dart';
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
  bool val1 = false;
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return clicked == false
        ? Scaffold(
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
                        width: MediaQuery.of(context).size.width * 0.312,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: linearGradientBlue,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.437,
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
                  const Text(
                    "Never miss out on a \nmessage!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "ProximaNova",
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Allow Notifications",
                        style: TextStyle(
                          fontFamily: "ProximaNova",
                          fontSize:
                              MediaQuery.of(context).size.width > 400 ? 16 : 14,
                        ),
                      ),
                      CupertinoSwitch(
                        value: val1,
                        onChanged: (value) {
                          val1 = value;
                          setState(() {});
                        },
                        activeColor: blueColor,
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
                      const Text(
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
                          if (val1 == false) {
                            clicked = true;
                          } else {
                            Navigator.pushNamed(
                                context, welcomeNameScreenRoute);
                          }
                          setState(() {});
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
                  //
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Padding(
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
                            width: MediaQuery.of(context).size.width * 0.312,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: linearGradientBlue,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.437,
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
                      const Text(
                        "Never miss out on a \nmessage!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          fontFamily: "ProximaNova",
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Allow Notifications",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 16
                                  : 14,
                            ),
                          ),
                          CupertinoSwitch(
                            value: val1,
                            onChanged: (value) {
                              val1 = value;
                              setState(() {});
                            },
                            activeColor: blueColor,
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
                          const Text(
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
                              if (val1 == false) {
                                clicked = true;
                              } else {
                                Navigator.pushNamed(
                                    context, welcomeNameScreenRoute);
                              }
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
                      //
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: const Offset(0, 1),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/notificationPopUp.png",
                                scale: 4,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Are you sure?",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "ProximaNova",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "When you disable notifications, you'll miss new likes and matches from other matches.",
                                style: utils.smallTitleTextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              utils.bigButton(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, welcomeNameScreenRoute);
                                  },
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height: 45.0,
                                  containerColor: blueColor,
                                  textColor: Colors.white,
                                  shadowColors: Colors.white,
                                  text: "Enable Notifications",
                                  fontSize: 16,
                                  borderRadius: 8.0),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  clicked = false;
                                  setState(() {});
                                },
                                child: Text(
                                  "Not Now",
                                  style: utils.smallHeadingTextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
