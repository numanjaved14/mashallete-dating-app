import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class AboutMeEditScreen extends StatefulWidget {
  const AboutMeEditScreen({Key? key}) : super(key: key);

  @override
  State<AboutMeEditScreen> createState() => _AboutMeEditScreenState();
}

class _AboutMeEditScreenState extends State<AboutMeEditScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    "About Me",
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
              height: 30,
            ),
            const TextField(
              maxLines: 20,
              decoration: InputDecoration(
                hintText:
                    "Write more about yourself and what you're looking for...",
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
