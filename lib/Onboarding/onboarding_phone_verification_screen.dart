import 'package:dating_app/Database/firebasedatabase.dart';
import 'package:dating_app/Onboarding/onboarding_name_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';
import 'package:pinput/pinput.dart';

class OnBoardingPhoneVerificationScreen extends StatefulWidget {
  final String phone;
  final String codeDigits;
  OnBoardingPhoneVerificationScreen(
      {required this.phone, required this.codeDigits});

  @override
  State<OnBoardingPhoneVerificationScreen> createState() =>
      _OnBoardingPhoneVerificationScreenState();
}

class _OnBoardingPhoneVerificationScreenState
    extends State<OnBoardingPhoneVerificationScreen> {
  final FocusNode pinOTPFocusNode = FocusNode();
  String? verificationCode;
  final GlobalKey<ScaffoldState> _scalfoldkey = GlobalKey<ScaffoldState>();

  var phoneNumberController = TextEditingController();
  var pin4Controller = TextEditingController();
  var pin3Controller = TextEditingController();
  var pin2Controller = TextEditingController();
  var pin1Controller = TextEditingController();
  var utils = AppUtils();
  FocusNode? focusNode1;
  FocusNode? focusNode2;
  FocusNode? focusNode3;
  FocusNode? focusNode4;
  @override
  void dispose() {
    focusNode1!.dispose();
    focusNode2!.dispose();
    focusNode3!.dispose();
    focusNode4!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    verificationPhone();

    super.initState();
  }

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
                  width: MediaQuery.of(context).size.width * 0.125,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: linearGradientBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.625,
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
            const Text(
              "Enter your verification \ncode.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                fontFamily: "ProximaNova",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Sent to ${widget.codeDigits} ${widget.phone}. ",
                  style: utils.mediumTitleTextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Change",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: blueColor,
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              child: Pinput(
                length: 6,
                focusNode: pinOTPFocusNode,
                controller: phoneNumberController,
                onSubmitted: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verificationCode!, smsCode: pin))
                        .then((value) {
                      if (value.user != null) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => OnBoardingNameScreen()));
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Invalid Code"),
                      duration: Duration(seconds: 12),
                    ));
                  }
                },
              ),
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => OnBoardingNameScreen(),
                      ),
                    );
                  },
                  width: MediaQuery.of(context).size.width * 0.3,
                  text: "Continue",
                  containerColor: blueColor,
                  enabled: phoneNumberController.text.isEmpty ? true : false,
                  textColor: Colors.white,
                  borderRadius: 8.0,
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

  void verificationPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "${widget.codeDigits + widget.phone}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) {
            if (value.user != null) {
              // Customdialog.showDialogBox(context);
              addPhone();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => OnBoardingNameScreen(),
                ),
              );
              // Customdialog.closeDialog(context);
            } else {}
          });
        },
        verificationFailed: (FirebaseException e) {
          FocusScope.of(context).unfocus();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(e.message.toString()),
            duration: Duration(seconds: 12),
          ));
        },
        codeSent: (String VID, int? resentToken) {
          setState(() {
            verificationCode = VID;
          });
        },
        codeAutoRetrievalTimeout: (String VID) {
          setState(() {
            verificationCode = VID;
          });
        },
        timeout: Duration(seconds: 50));
  }

  void addPhone() async {
    await Database().numberAdd();
    // .then((value) => Customdialog.closeDialog(context));
  }
}
