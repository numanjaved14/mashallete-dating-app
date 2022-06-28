import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingNameScreen extends StatefulWidget {
  const OnBoardingNameScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingNameScreen> createState() => _OnBoardingNameScreenState();
}

class _OnBoardingNameScreenState extends State<OnBoardingNameScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
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
              height: 100,
            ),
            SizedBox(
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor.withOpacity(0.4),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 0.0,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blueColor,
                            width: 2.5,
                          ),
                        ),
                        child: Image.asset(
                          "assets/telephone.png",
                          scale: 1.3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "What's your name?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.textField(
                controller: firstNameController,
                width: MediaQuery.of(context).size.width * 0.9,
                hintText: "First Name"),
            const SizedBox(
              height: 20,
            ),
            utils.textField(
                controller: lastNameController,
                width: MediaQuery.of(context).size.width * 0.9,
                hintText: "Last Name"),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.lock,
                      color: blueColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "We'll never share this with anyone",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingDateOfBirthScreenRoute);
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
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
}
