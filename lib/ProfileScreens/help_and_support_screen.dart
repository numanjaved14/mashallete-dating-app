import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  var utils = AppUtils();
  Object? val;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.close,
                      size: 35,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Image.asset(
                "assets/cupHeart.png",
                scale: 1.2,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "How can we improve?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "ProximaNova",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Onboarding experience",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 1 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "App crashes too often",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 2 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "I'm not getting any matches",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 3 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 3,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "I'm not getting any messages",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 4 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 4,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "The way the app looks can be better",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 5 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 5,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Other",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "ProximaNova",
                      color: val == 6 ? blueColor : Colors.black,
                    ),
                  ),
                  Radio(
                    value: 6,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    activeColor: blueColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset(
                      "assets/addText.png",
                      scale: 4,
                      color: val == 6 ? Colors.blue : Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      enabled: val != null ? true : false,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Leave a description so we can improve",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: "ProximaNova",
                            fontWeight: FontWeight.w400,
                          ),
                          counterText: ""),
                      maxLines: 7,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width > 415 ? 60 : 30,
              ),
              Align(
                alignment: Alignment.center,
                child: utils.gradientBigButton(
                    onTap: () {
                      thankYouDialog();
                    },
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 55.0,
                    containerColor:
                        val == null ? Colors.grey.withOpacity(0.2) : blueColor,
                    textColor: val == null ? Colors.black : Colors.white,
                    shadowColors: Colors.white,
                    text: "Submit",
                    fontSize: 16,
                    borderRadius: 7.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  thankYouDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
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
                  height: MediaQuery.of(context).size.width * 0.72,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 280,
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
                              "assets/heartBroken.png",
                              scale: 4,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Thank you!",
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
                              "To ensure Mashalatte maintains a safe \nenviroment, out team will review your report \nand take action as soon as possible.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.8),
                                fontFamily: "ProximaNova",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            utils.bigButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 45.0,
                                containerColor: blueColor,
                                textColor: Colors.white,
                                shadowColors: Colors.white,
                                text: "Dismiss",
                                fontSize: 16,
                                borderRadius: 8.0),
                          ],
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
                  height: MediaQuery.of(context).size.width * 0.7,
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
