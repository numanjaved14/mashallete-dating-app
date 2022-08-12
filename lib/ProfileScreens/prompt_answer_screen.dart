import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class PromptAnswerScreen extends StatefulWidget {
  const PromptAnswerScreen({Key? key}) : super(key: key);

  @override
  State<PromptAnswerScreen> createState() => _PromptAnswerScreenState();
}

class _PromptAnswerScreenState extends State<PromptAnswerScreen> {
  var controller = TextEditingController();
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Edit Prompt",
                    style: utils.mediumHeadingTextStyle(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "sad ",
                    style: utils.smallHeadingTextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/promptComma2.png",
              scale: 4,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My comfort food is..",
                  style: utils.largeHeadingTextStyle(color: blueColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, promptQuestionScreenRoute);
                  },
                  child: Image.asset(
                    "assets/reloadArrow.png",
                    scale: 4,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.otpTextField(
                onChanged: (val) {
                  setState(() {});
                },
                width: MediaQuery.of(context).size.width * 0.9,
                hintText: "Enter your prompt answer..",
                alignText: TextAlign.left,
                hintSize: 20.0,
                fontSize: 20.0,
                bottomPadding: 0.0,
                controller: controller),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Skip for now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "ProximaNova",
                      color: blueColor,
                    ),
                  ),
                ),
                utils.gradientBigButton(
                  onTap: controller.text.isEmpty
                      ? () {}
                      : () {
                          Navigator.pop(context);
                          setState(() {});
                        },
                  width: MediaQuery.of(context).size.width * 0.35,
                  text: "Save",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
                  fontSize: 14.0,
                  enabled: controller.text.isEmpty ? true : false,
                  height: 50.0,
                  shadowColors: Colors.white,
                )
              ],
            ),
            // utils.gradientBigButton(
            //   width: double.infinity,
            //   textColor: Colors.white,
            //   borderRadius: 10.0,
            //   height: 50.0,
            //   shadowColors: Colors.white,
            //   text: "Save",
            //   fontWeight: FontWeight.w900,
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
