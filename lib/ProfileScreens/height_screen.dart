import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';
import '../Utilities/app_utils.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  var _heightFeetcontroller = TextEditingController();
  var _heightInchcontroller = TextEditingController();
  var utils = AppUtils();
  @override
  void dispose() {
    _heightFeetcontroller.dispose();
    _heightFeetcontroller.dispose();
    super.dispose();
  }

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
                    "Height",
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
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                utils.otpTextField(
                  width: MediaQuery.of(context).size.width * 0.1,
                  hintText: "5",
                  alignText: TextAlign.center,
                  hintSize: 30.0,
                  keyboardType: TextInputType.number,
                  fontSize: 30.0,
                  bottomPadding: 0.0,
                  controller: _heightFeetcontroller,
                  onChanged: (val) {
                    setState(() {});
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    "assets/heightComma1.png",
                    scale: 3,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                utils.otpTextField(
                  onChanged: (val) {
                    setState(() {});
                  },
                  width: MediaQuery.of(context).size.width * 0.1,
                  hintText: "5",
                  alignText: TextAlign.center,
                  hintSize: 30.0,
                  keyboardType: TextInputType.number,
                  fontSize: 30.0,
                  bottomPadding: 0.0,
                  controller: _heightInchcontroller,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    "assets/heightComma2.png",
                    scale: 3,
                  ),
                ),
              ],
            ),
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
                  onTap: _heightFeetcontroller.text.isEmpty
                      ? () {}
                      : () {
                          addData();
                          setState(() {});
                        },
                  width: MediaQuery.of(context).size.width * 0.35,
                  text: "Save",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
                  fontSize: 14.0,
                  enabled: _heightInchcontroller.text.isEmpty ? true : false,
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

  void addData() async {
    String res = await Database().updateData(
      key: 'heightFeet',
      value: _heightFeetcontroller.text,
    );
    res = await Database().updateData(
      key: 'heightInch',
      value:
          _heightInchcontroller.text.isEmpty ? '' : _heightInchcontroller.text,
    );
    if (res == 'success') {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
