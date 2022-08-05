import 'package:flutter/material.dart';
import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingPhoneVerificationScreen extends StatefulWidget {
  const OnBoardingPhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingPhoneVerificationScreen> createState() =>
      _OnBoardingPhoneVerificationScreenState();
}

class _OnBoardingPhoneVerificationScreenState
    extends State<OnBoardingPhoneVerificationScreen> {
  var phoneNumberController = TextEditingController();
  var pin4Controller = TextEditingController();
  var pin3Controller = TextEditingController();
  var pin2Controller = TextEditingController();
  var pin1Controller = TextEditingController();
  var utils = AppUtils();
  FocusNode? focusNode1;
  FocusNode? focusNode2;
  FocusNode? focusNode3;
  FocusNode? focusNode4;
  @override
  void dispose() {
    focusNode1!.dispose();
    focusNode2!.dispose();
    focusNode3!.dispose();
    focusNode4!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    super.initState();
  }

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
                  width: MediaQuery.of(context).size.width * 0.125,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.625,
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
              "Enter your verification \ncode.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                fontFamily: "ProximaNova",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Sent to 5555 5555 5555. ",
                  style: utils.mediumTitleTextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Change",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: blueColor,
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Row(
              children: [
                utils.otpTextField(
                    controller: pin1Controller,
                    maxLength: 1,
                    onChanged: (val) {
                      if (pin1Controller.text.length == 1) {
                        focusNode2!.requestFocus();
                      }
                      setState(() {});
                    },
                    width: MediaQuery.of(context).size.width * 0.2,
                    hintText: " ",
                    focusNode: focusNode1,
                    keyboardType: TextInputType.number,
                    hintSize: 15.0),
                const SizedBox(
                  width: 10,
                ),
                utils.otpTextField(
                    controller: pin2Controller,
                    focusNode: focusNode2,
                    maxLength: 1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    hintText: " ",
                    onChanged: (val) {
                      if (pin2Controller.text.length == 1) {
                        focusNode3!.requestFocus();
                      }
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    hintSize: 15.0),
                const SizedBox(
                  width: 10,
                ),
                utils.otpTextField(
                    controller: pin3Controller,
                    focusNode: focusNode3,
                    maxLength: 1,
                    onChanged: (val) {
                      if (pin3Controller.text.length == 1) {
                        focusNode4!.requestFocus();
                      }
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    width: MediaQuery.of(context).size.width * 0.2,
                    hintText: " ",
                    hintSize: 15.0),
                const SizedBox(
                  width: 10,
                ),
                utils.otpTextField(
                    controller: pin4Controller,
                    focusNode: focusNode4,
                    maxLength: 1,
                    onChanged: (val) {
                      if (pin4Controller.text.length == 1) {
                        focusNode4!.unfocus();
                      }
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    width: MediaQuery.of(context).size.width * 0.2,
                    hintText: " ",
                    hintSize: 15.0),
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
                    Navigator.pushNamed(context, onBoardingNameScreenRoute);
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
}
