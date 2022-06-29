import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingInterestsScreen extends StatefulWidget {
  const OnBoardingInterestsScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingInterestsScreen> createState() =>
      _OnBoardingInterestsScreenState();
}

class _OnBoardingInterestsScreenState extends State<OnBoardingInterestsScreen> {
  List arts = [
    "Acting",
    "Art Galleries",
    "Board Games",
    "Creative Writing",
    "DIY",
    "Design ",
    "Fashion",
    "Film Making",
    "Painting",
  ];

  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
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
                "Add your interests",
                style: utils.largeHeadingTextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Arts and Culture",
                style: utils.smallHeadingTextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              Wrap(
                children: [
                  for (int i = 0; i < 9; i++)
                    utils.interestsWidget(text: arts[i]),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Show less",
                    style: utils.extraSmallHeadingTextStyle(color: blueColor),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_up_outlined,
                    size: 20,
                    color: blueColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Skip for now",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: blueColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
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
      ),
    );
  }
}
