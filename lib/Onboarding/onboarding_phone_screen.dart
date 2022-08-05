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
                GestureDetector(
                  onTap: () {
                    thankYouDialog();
                  },
                  child: Container(
                    width: 50,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "+1",
                        style: utils.mediumTitleTextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: "ProximaNova",
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "999 999 9999",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ProximaNova",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "ProximaNova",
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                utils.gradientBigButton(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingPhoneVerificationScreenRoute);
                  },
                  width: MediaQuery.of(context).size.width * 0.3,
                  text: "Continue",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
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

  thankYouDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.62,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Select your region",
                                  style: utils.mediumHeadingTextStyle(),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "United States",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+1",
                                          textAlign: TextAlign.center,
                                          style: utils.smallTitleTextStyle(),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Region 1",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+1",
                                          textAlign: TextAlign.center,
                                          style: utils.smallTitleTextStyle(),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Region 2",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+1",
                                          textAlign: TextAlign.center,
                                          style: utils.smallTitleTextStyle(),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Region 3",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+1",
                                          textAlign: TextAlign.center,
                                          style: utils.smallTitleTextStyle(),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Region 4",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+1",
                                          textAlign: TextAlign.center,
                                          style: utils.smallTitleTextStyle(),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.5,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
