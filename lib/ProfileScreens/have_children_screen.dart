import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class HaveChildrenScreen extends StatefulWidget {
  const HaveChildrenScreen({Key? key}) : super(key: key);

  @override
  State<HaveChildrenScreen> createState() => _HaveChildrenScreenState();
}

class _HaveChildrenScreenState extends State<HaveChildrenScreen> {
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
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Text(
                    "Have Children",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontFamily: "ProximaNova",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                selected = 1;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Yes",
                    style: utils.mediumTitleTextStyle(),
                  ),
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
                  Text(
                    "No",
                    style: utils.mediumTitleTextStyle(),
                  ),
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
            utils.gradientBigButton(
              width: double.infinity,
              textColor: Colors.white,
              borderRadius: 10.0,
              height: 50.0,
              text: "Save",
              shadowColors: Colors.white,
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
