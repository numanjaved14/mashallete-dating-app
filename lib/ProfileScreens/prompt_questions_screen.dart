import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class PromptQuestionScreen extends StatefulWidget {
  const PromptQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PromptQuestionScreen> createState() => _PromptQuestionScreenState();
}

class _PromptQuestionScreenState extends State<PromptQuestionScreen> {
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
                    size: 25,
                  ),
                ),
                Text(
                  "Prompts",
                  style: utils.mediumHeadingTextStyle(),
                ),
                Container(
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Facts about me that surprises people...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 2...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 3...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 4...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 5...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 6...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 7...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Prompt question 8...",
              style: utils.smallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.line(),
          ],
        ),
      ),
    );
  }
}
