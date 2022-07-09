import 'package:cupertino_range_slider_improved/cupertino_range_slider.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({Key? key}) : super(key: key);

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  var _value = 16.0;
  var utils = AppUtils();
  var minValue = 10.0;
  var maxValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
                Text(
                  "Preferences",
                  style: utils.mediumHeadingTextStyle(),
                ),
                Container(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "ACCOUNT",
              style: utils.extraSmallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phone Number",
                  style: utils.smallTitleTextStyle(),
                ),
                Text(
                  "(5555)-5555-5555",
                  style: utils.smallTitleTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: double.infinity),
            const SizedBox(
              height: 20,
            ),
            Text(
              "FILTERS",
              style: utils.extraSmallHeadingTextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Maximum Distance",
                  style: utils.smallHeadingTextStyle(),
                ),
                Text(
                  "${_value.toInt()} Miles",
                  style: utils.smallTitleTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.07),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 50,
              child: Align(
                alignment: Alignment.centerRight,
                child: Transform.scale(
                  scale: 1.3,
                  child: Slider(
                    min: 14.0,
                    max: 100.0,
                    activeColor: blueColor,
                    inactiveColor: Colors.grey[500],
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: double.infinity),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Age Range",
                  style: utils.smallHeadingTextStyle(),
                ),
                Text(
                  "${minValue.toInt()}-${maxValue.toInt()} Years",
                  style: utils.smallTitleTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoRangeSlider(
                thumbColor: blueColor,
                minValue: minValue,
                activeColor: blueColor,
                trackColor: Colors.grey.withOpacity(0.3),
                maxValue: maxValue,
                min: 1.0,
                max: 100.0,
                onMinChanged: (minVal) {
                  minValue = minVal;
                  setState(() {});
                },
                onMaxChanged: (maxVal) {
                  maxValue = maxVal;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: double.infinity),
            utils.preferencesWidget(text: "Ethnicity", text2: "Open to All"),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: double.infinity),
            utils.preferencesWidget(text: "Flavor", text2: "Choose"),
            const SizedBox(
              height: 10,
            ),
            utils.line(width: double.infinity),
            utils.preferencesWidget(text: "Verified only", text2: "Yes"),
          ],
        ),
      ),
    );
  }
}
