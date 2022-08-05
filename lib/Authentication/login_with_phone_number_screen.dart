import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LoginWithPhoneNumberScreen extends StatefulWidget {
  const LoginWithPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneNumberScreen> createState() =>
      _LoginWithPhoneNumberScreenState();
}

class _LoginWithPhoneNumberScreenState
    extends State<LoginWithPhoneNumberScreen> {
  var phoneNumberController = TextEditingController();
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
              height: 150,
            ),
            Text(
              "Sign in using your phone \nnumber.",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "We will send you a verification code to log in with.",
              style: utils.mediumTitleTextStyle(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "+1",
                      style: utils.mediumTitleTextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: "ProximaNova",
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "999 999 9999",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ProximaNova",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            utils.line(width: MediaQuery.of(context).size.width),
            const Spacer(),
            utils.gradientBigButton(
              width: double.infinity,
              textColor: Colors.white,
              containerColor: blueColor,
              borderRadius: 10.0,
              shadowColors: Colors.white,
              height: 50.0,
              text: "Continue",
              fontWeight: FontWeight.w900,
              onTap: () {
                Navigator.pushNamed(context, loginWithOtpScreenRoute);
              },
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: const [
            //         Icon(
            //           Icons.lock,
            //           color: blueColor,
            //         ),
            //         SizedBox(
            //           width: 5,
            //         ),
            //         Text(
            //           "We'll never share this with anyone",
            //           style: TextStyle(
            //             fontSize: 15,
            //             fontWeight: FontWeight.w700,
            //             color: blueColor,
            //           ),
            //         ),
            //       ],
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.pushNamed(context, loginWithOtpScreenRoute);
            //       },
            //       child: Container(
            //         width: 60,
            //         height: 60,
            //         decoration: const BoxDecoration(
            //           color: blueColor,
            //           shape: BoxShape.circle,
            //         ),
            //         child: const Icon(
            //           Icons.arrow_forward_ios_outlined,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
