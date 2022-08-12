import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LoginWithPhoneNumberScreen extends StatefulWidget {
  const LoginWithPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneNumberScreen> createState() =>
      _LoginWithPhoneNumberScreenState();
}

class _LoginWithPhoneNumberScreenState
    extends State<LoginWithPhoneNumberScreen> {
  var phoneNumberController = TextEditingController();
  var countryCode = "+1";

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
              height: 150,
            ),
            Text(
              "Sign in using your phone \nnumber.",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "We will send you a verification code to log in with.",
              style: utils.mediumTitleTextStyle(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    phones();
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
                        countryCode,
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
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    onChanged: (val) {
                      setState(() {});
                    },
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: "ProximaNova",
                    ),
                    decoration: const InputDecoration(
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
            utils.gradientBigButton(
              width: double.infinity,
              textColor: Colors.white,
              containerColor: blueColor,
              borderRadius: 10.0,
              shadowColors: Colors.white,
              height: 50.0,
              text: "Continue",
              enabled: phoneNumberController.text.isEmpty ? true : false,
              fontWeight: FontWeight.w900,
              onTap: () {
                Navigator.pushNamed(context, loginWithOtpScreenRoute);
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  phones() {
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
                                  countryCode = "+1";
                                  setState(() {});
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
                                        const SizedBox(
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
                              const SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  countryCode = "+1";
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Canada",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        const SizedBox(
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
                              const SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  countryCode = "+92";
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Pakistan",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        const SizedBox(
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
                              const SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  countryCode = "+91";
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "India",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        const SizedBox(
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
                              const SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  countryCode = "+880";
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bangladesh",
                                      textAlign: TextAlign.center,
                                      style: utils.smallTitleTextStyle(),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/united-states-of-america.png",
                                          scale: 30,
                                        ),
                                        const SizedBox(
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
                              const SizedBox(
                                height: 20,
                              ),
                              utils.line(width: double.infinity),
                              const SizedBox(
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
