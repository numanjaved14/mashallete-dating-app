import 'package:blurrycontainer/blurrycontainer.dart';
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
  FocusNode? focusNode1;
  FocusNode? focusNode2;
  FocusNode? focusNode3;
  bool clicked = false;
  var monthController = TextEditingController();
  var dayController = TextEditingController();
  var yearController = TextEditingController();
  var utils = AppUtils();
  @override
  void dispose() {
    focusNode1!.dispose();
    focusNode2!.dispose();
    focusNode3!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    // TODO: implement initState
    super.initState();
  }

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
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: linearGradientBlue,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
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
                    "What's your date of \nbirth?",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "ProximaNova",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "This cannot be changed later. ",
                    style: utils.mediumTitleTextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      utils.textFieldDOB(
                          controller: monthController,
                          maxLength: 2,
                          onChanged: (val) {
                            if (monthController.text.length == 2) {
                              focusNode2!.requestFocus();
                            }
                            setState(() {});
                          },
                          width: MediaQuery.of(context).size.width * 0.16,
                          hintText: "MM",
                          focusNode: focusNode1,
                          keyboardType: TextInputType.number,
                          fontSize: 15.0),
                      const SizedBox(
                        width: 10,
                      ),
                      utils.textFieldDOB(
                          controller: dayController,
                          focusNode: focusNode2,
                          maxLength: 2,
                          width: MediaQuery.of(context).size.width * 0.16,
                          hintText: "DD",
                          onChanged: (val) {
                            if (dayController.text.length == 2) {
                              focusNode3!.requestFocus();
                            }
                            setState(() {});
                          },
                          keyboardType: TextInputType.number,
                          fontSize: 15.0),
                      const SizedBox(
                        width: 10,
                      ),
                      utils.textFieldDOB(
                          controller: yearController,
                          focusNode: focusNode3,
                          maxLength: 4,
                          onChanged: (val) {
                            if (yearController.text.length == 4) {
                              focusNode3!.unfocus();
                            }
                            setState(() {});
                          },
                          keyboardType: TextInputType.number,
                          width: MediaQuery.of(context).size.width * 0.23,
                          hintText: "YYYY",
                          fontSize: 15.0),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          clicked = true;
                          setState(() {});
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
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: blueColor,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
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
                        "What's your date of \nbirth?",
                        style: utils.largeHeadingTextStyle(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          utils.textField(
                              width: MediaQuery.of(context).size.width * 0.16,
                              keyboardType: TextInputType.number,
                              hintText: "MM"),
                          const SizedBox(
                            width: 10,
                          ),
                          utils.textField(
                              width: MediaQuery.of(context).size.width * 0.16,
                              keyboardType: TextInputType.number,
                              hintText: "DD"),
                          const SizedBox(
                            width: 10,
                          ),
                          utils.textField(
                              width: MediaQuery.of(context).size.width * 0.23,
                              keyboardType: TextInputType.number,
                              hintText: "YYYY"),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              clicked = false;
                              setState(() {});
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
                                height: 40,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Confirm your age",
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "ProximaNova",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Connecting your account will make it easier to sign in.",
                                style: utils.mediumTitleTextStyle(
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              utils.bigButton(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        onBoardingNotificationsScreenRoute);
                                  },
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height: 55.0,
                                  containerColor: blueColor,
                                  textColor: Colors.white,
                                  shadowColors: Colors.white,
                                  text: "I confirm that I am 26 years old.",
                                  fontSize: 15,
                                  borderRadius: 30.0),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  clicked = false;
                                  setState(() {});
                                },
                                child: Text(
                                  "Edit my birthday",
                                  style: utils.smallHeadingTextStyle(
                                      color: blueColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
