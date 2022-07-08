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
  List selected1 = [];
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
    "Acting",
    "Art Galleries",
    "Board Games",
    "Creative Writing",
    "DIY",
    "Design ",
    "Fashion",
    "Film Making",
    "Painting",
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
  void initState() {
    for (int i = 0; i < arts.length; i++) {
      selected1.add(false);
    }
    super.initState();
  }

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
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.625,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
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
                "Add your interests",
                style: utils.largeHeadingTextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Wrap(
                children: [
                  for (int i = 0; i < arts.length; i++)
                    utils.interestsWidget(
                      text: arts[i],
                      selected: selected1[i],
                      onTap: () {
                        if (selected1[i] == false) {
                          selected1[i] = true;
                        } else {
                          selected1[i] = false;
                        }
                        setState(() {});
                      },
                    ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, onBoardingLookingGoodScreenRoute);
                        },
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
                    onTap: () {
                      Navigator.pushNamed(
                          context, onBoardingLookingGoodScreenRoute);
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
      ),
    );
  }
}
