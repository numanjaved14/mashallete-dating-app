import 'package:dating_app/Constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../Database/firebasedatabase.dart';
import '../Utilities/app_utils.dart';

class ProfessionScreen extends StatefulWidget {
  const ProfessionScreen({Key? key}) : super(key: key);

  @override
  State<ProfessionScreen> createState() => _ProfessionScreenState();
}

class _ProfessionScreenState extends State<ProfessionScreen> {
  var _professionController = TextEditingController();
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
                    "Profession",
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
            utils.otpTextField(
              width: MediaQuery.of(context).size.width * 0.9,
              hintText: "i.e. Business Analyst",
              alignText: TextAlign.left,
              controller: _professionController,
              onChanged: (val) {
                setState(() {});
              },
              hintSize: 20.0,
              fontSize: 20.0,
              bottomPadding: 0.0,
            ),
            const Spacer(),
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
                  onTap: _professionController.text.isEmpty
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
                  enabled: _professionController.text.isEmpty ? true : false,
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
      key: 'profession',
      value: _professionController.text,
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
