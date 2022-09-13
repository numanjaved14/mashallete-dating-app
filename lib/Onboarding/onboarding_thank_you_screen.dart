import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingThankYouScreen extends StatefulWidget {
  const OnBoardingThankYouScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingThankYouScreen> createState() =>
      _OnBoardingThankYouScreenState();
}

class _OnBoardingThankYouScreenState extends State<OnBoardingThankYouScreen> {
  var utils = AppUtils();
  var userData = {};
  bool _isLoading = false;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Image.asset(
                    "assets/welcomeFrame.png",
                    scale: 4,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Thanks, ${userData['fullName']}!",
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      fontFamily: "ProximaNova",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "While we verify you, Let's go \nover some ground rules before \nyou get started.",
                    textAlign: TextAlign.center,
                    style: utils.mediumTitleTextStyle(
                        color: Colors.black.withOpacity(0.8)),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: utils.gradientBigButton(
                        onTap: () {
                          Navigator.pushNamed(
                              context, groundRuleOneScreenRoute);
                        },
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 55.0,
                        containerColor: blueColor,
                        textColor: Colors.white,
                        shadowColors: Colors.white,
                        text: "Go over the rules",
                        fontSize: 15,
                        borderRadius: 10.0),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
      ),
    );
  }

  getData() async {
    setState(() {
      _isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      userData = userSnap.data()!;
      setState(() {});
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
    setState(() {
      _isLoading = false;
    });
  }
}
