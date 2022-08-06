import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  var utils = AppUtils();
  var val1 = false;
  var val2 = false;
  var val3 = false;
  var val4 = false;
  var val5 = false;
  var val6 = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
                  "Privacy",
                  style: utils.mediumHeadingTextStyle(color: blueColor),
                ),
                Container(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            utils.privacyWidget(
                text2: "No one can see your profile.",
                text1: "Discoverable",
                width: width,
                value: val1,
                onChanged: (value) {
                  val1 = value;
                  setState(() {});
                }),
            utils.line(width: MediaQuery.of(context).size.width),
            utils.privacyWidget(
                text2: "You'll see message content in notifications.",
                text1: "Show Message Preview",
                value: val2,
                width: width,
                onChanged: (value) {
                  val2 = value;
                  setState(() {});
                }),
            utils.line(width: MediaQuery.of(context).size.width),
            utils.privacyWidget(
                text2: "You will only be shown to people you like.",
                text1: "Stealth Mode",
                value: val3,
                width: width,
                onChanged: (value) {
                  val3 = value;
                  setState(() {});
                }),
            utils.line(width: MediaQuery.of(context).size.width),
            utils.privacyWidget(
                text2: "Prevent others from seeing if you're online.",
                text1: "Hide Online Status",
                value: val4,
                width: width,
                onChanged: (value) {
                  val4 = value;
                  setState(() {});
                }),
            utils.line(width: MediaQuery.of(context).size.width),
            utils.privacyWidget(
                text2: "Hide your location on your profile.",
                text1: "Hide Location",
                value: val5,
                width: width,
                onChanged: (value) {
                  val5 = value;
                  setState(() {});
                }),
            utils.line(width: MediaQuery.of(context).size.width),
            utils.privacyWidget(
                text2:
                    "You will only be shown to people who are \nwithin your set preference parameters.",
                text1: "Visibility",
                value: val6,
                width: width,
                onChanged: (value) {
                  val6 = value;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
