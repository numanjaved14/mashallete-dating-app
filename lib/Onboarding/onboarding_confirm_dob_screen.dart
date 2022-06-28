import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class ConfirmAgeScreen extends StatefulWidget {
  const ConfirmAgeScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmAgeScreen> createState() => _ConfirmAgeScreenState();
}

class _ConfirmAgeScreenState extends State<ConfirmAgeScreen> {
  var monthController = TextEditingController();
  var dayController = TextEditingController();
  var yearController = TextEditingController();
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
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
                  "What's your date of \nbirth?",
                  style: utils.largeHeadingTextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    utils.textField(
                        controller: monthController,
                        width: MediaQuery.of(context).size.width * 0.15,
                        hintText: "MM"),
                    const SizedBox(
                      width: 10,
                    ),
                    utils.textField(
                        controller: dayController,
                        width: MediaQuery.of(context).size.width * 0.15,
                        hintText: "DD"),
                    const SizedBox(
                      width: 10,
                    ),
                    utils.textField(
                        controller: yearController,
                        width: MediaQuery.of(context).size.width * 0.2,
                        hintText: "YYYY"),
                  ],
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
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: blueColor,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, confirmAgeScreenRoute);
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: BlurryContainer(
              color: Colors.white.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 3)
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Confirm your age",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Connecting your account will make it easier to sign in.",
                          style:
                              utils.mediumTitleTextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        utils.bigButton(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, onBoardingNotificationsScreenRoute);
                            },
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 55.0,
                            containerColor: blueColor,
                            textColor: Colors.white,
                            shadowColors: Colors.white,
                            text: "I confirm that I am 26 years old.",
                            fontSize: 15,
                            borderRadius: 30.0),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Edit my birthday",
                            style: utils.extraSmallHeadingTextStyle(
                                color: blueColor),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
