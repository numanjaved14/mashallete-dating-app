import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  var ethnicityController = TextEditingController();
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
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
                    "Languages",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val1,
                  onChanged: (val) {
                    val1 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Urdu",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val2,
                  onChanged: (val) {
                    val2 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hindi",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val3,
                  onChanged: (val) {
                    val3 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Punjabi",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val4,
                  onChanged: (val) {
                    val4 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sindhi",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val5,
                  onChanged: (val) {
                    val5 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Telugu",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val6,
                  onChanged: (val) {
                    val6 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bengali",
                  style: utils.mediumTitleTextStyle(),
                ),
                Checkbox(
                  value: val7,
                  onChanged: (val) {
                    val7 = val!;
                    setState(() {});
                  },
                  activeColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            const Spacer(),
            utils.gradientBigButton(
              width: double.infinity,
              textColor: Colors.white,
              borderRadius: 10.0,
              height: 50.0,
              shadowColors: Colors.white,
              text: "Save",
              fontWeight: FontWeight.w900,
              onTap: () {
                Navigator.pop(context);
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
}
