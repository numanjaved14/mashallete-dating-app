import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';
import '../Utilities/app_utils.dart';

class OnBoardingReligiousScreen extends StatefulWidget {
  const OnBoardingReligiousScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingReligiousScreen> createState() =>
      _OnBoardingReligiousScreenState();
}

class _OnBoardingReligiousScreenState extends State<OnBoardingReligiousScreen> {
  var utils = AppUtils();
  var selected = 0;
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
                  width: MediaQuery.of(context).size.width * 0.562,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.187,
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
              "How religious are you?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                selected = 1;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Very Religious"),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selected == 1 ? blueColor : Colors.grey,
                          width: selected == 1 ? 5 : 1,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                selected = 2;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Religious"),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selected == 2 ? blueColor : Colors.grey,
                          width: selected == 2 ? 5 : 1,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                selected = 3;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Somewhat Religious"),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selected == 3 ? blueColor : Colors.grey,
                          width: selected == 3 ? 5 : 1,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                selected = 4;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Not Religious"),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selected == 4 ? blueColor : Colors.grey,
                          width: selected == 4 ? 5 : 1,
                        )),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  " ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova",
                    color: blueColor,
                  ),
                ),
                utils.gradientBigButton(
                  onTap: selected == 0
                      ? () {}
                      : () {
                          addData();
                        },
                  width: MediaQuery.of(context).size.width * 0.35,
                  text: "Continue",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  enabled: selected == 0 ? true : false,
                  borderRadius: 8.0,
                  fontSize: 14.0,
                  height: 50.0,
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

  void addData() async {
    String res = await Database().updateData(
      key: 'religion',
      value: selected == 1
          ? 'Very Religious'
          : selected == 2
              ? 'Religious'
              : selected == 3
                  ? 'Somewhat Religious'
                  : 'Not Religious',
    );
    if (res == 'success') {
      Navigator.pushNamed(context, onBoardingInterestsScreenRoute);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
