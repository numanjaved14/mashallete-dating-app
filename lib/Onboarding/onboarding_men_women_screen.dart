import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';

class OnBoardingMenWomenScreen extends StatefulWidget {
  const OnBoardingMenWomenScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingMenWomenScreen> createState() =>
      _OnBoardingMenWomenScreenState();
}

class _OnBoardingMenWomenScreenState extends State<OnBoardingMenWomenScreen> {
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
                  width: MediaQuery.of(context).size.width * 0.375,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.375,
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
              "What describes you \nbest?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                selected = 1;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Man"),
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
                  const Text("Woman"),
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "",
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
                  borderRadius: 8.0,
                  enabled: selected == 0 ? true : false,
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
      key: 'gender',
      value: selected == 1 ? 'Man' : 'Woman',
    );
    if (res == 'success') {
      Navigator.pushNamed(context, onBoardingLookingForScreenRoute);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
