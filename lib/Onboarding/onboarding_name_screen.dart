import 'package:dating_app/Database/firebasedatabase.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.187,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.562,
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
              "What's your name?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Your last name is optional and is only shared with your matches.",
              style: utils.smallTitleTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            utils.otpTextField(
              controller: firstNameController,
              onChanged: (val) {
                setState(() {});
              },
              width: MediaQuery.of(context).size.width * 0.9,
              hintText: "First Name (Required)",
              alignText: TextAlign.left,
              hintSize: 20.0,
              fontSize: 20.0,
              bottomPadding: 0.0,
            ),
            const SizedBox(
              height: 20,
            ),
            utils.otpTextField(
              controller: lastNameController,
              width: MediaQuery.of(context).size.width * 0.9,
              hintText: "Last Name (Optional)",
              alignText: TextAlign.left,
              hintSize: 20.0,
              fontSize: 20.0,
              bottomPadding: 0.0,
            ),
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "ProximaNova",
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                utils.gradientBigButton(
                  onTap: firstNameController.text.isEmpty
                      ? () {}
                      : () {
                          // Navigator.pushNamed(
                          //     context, onBoardingDateOfBirthScreenRoute);
                          addName(firstNameController.text,
                              lastNameController.text);
                        },
                  width: MediaQuery.of(context).size.width * 0.3,
                  text: "Continue",
                  containerColor: blueColor,
                  textColor: Colors.white,
                  borderRadius: 8.0,
                  enabled: firstNameController.text.isEmpty ? true : false,
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

  void addName(String firstName, String? lastName,) async {
    await Database().updateName(
      // uid: FirebaseAuth.instance.currentUser!.uid,
      fullName: firstNameController.text,
      lastName: lastNameController.text
    );
  }
}
