import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LikedProfilesScreen extends StatefulWidget {
  const LikedProfilesScreen({Key? key}) : super(key: key);

  @override
  State<LikedProfilesScreen> createState() => _LikedProfilesScreenState();
}

class _LikedProfilesScreenState extends State<LikedProfilesScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, profileScreenRoute);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/boy.png",
                                  ),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle),
                          height: 32,
                          width: 32,
                        ),
                      ),
                      const Text(
                        "Likes",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: blueColor,
                          fontFamily: "ProximaNova",
                        ),
                      ),
                      Container(
                        width: 30,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 1),
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      children: [
                        utils.imageBigContainer(
                            image: "assets/background.png", top: true),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Usama Majid,",
                                    style: utils.xxLargeHeadingTextStyle(),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "22",
                                    style: utils.xMediumTitleTextStyle(
                                        height: 1.7),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: blueColor,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2 mi, US",
                                    style: utils.mediumTitleTextStyle(
                                        color: blueColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "I have passion for art and I'm looking to meet new people in the city!",
                            style: TextStyle(
                              fontSize: 17,
                              wordSpacing: 1.5,
                              fontFamily: "ProximaNova",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < 6; i++)
                          utils.blurredImageContainer(
                            image: "assets/boy.png",
                            name: "Aadil,",
                            age: "22",
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, premiumAccessScreenRoute);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: const Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Learn More",
                          style: utils.extraSmallHeadingTextStyle(
                            color: blueColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Upgrade to premium for unlimited \naccess, swipes and likes.",
                      style: utils.extraSmallHeadingTextStyle(color: blueColor),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
