import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class PromptAnswerScreen extends StatefulWidget {
  const PromptAnswerScreen({Key? key}) : super(key: key);

  @override
  State<PromptAnswerScreen> createState() => _PromptAnswerScreenState();
}

class _PromptAnswerScreenState extends State<PromptAnswerScreen> {
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
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Prompt Answer",
                    style: utils.mediumHeadingTextStyle(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Done",
                    style: utils.smallHeadingTextStyle(color: blueColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Facts about me that surprises people...",
                  style: utils.smallHeadingTextStyle(),
                ),
                Image.asset(
                  "assets/reloadArrow.png",
                  scale: 4,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset(
                    "assets/editPencil.png",
                    scale: 4,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: TextField(
                    maxLines: 20,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write an answer here...",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
