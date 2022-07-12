import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({Key? key}) : super(key: key);

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  late ScrollController _scrollController;

  List arts = [
    "90s Kid",
    "Self Care",
    "Hot Yoga",
    "Writing",
    "Meditation",
  ];
  var utils = AppUtils();
  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() {});

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png", top: true),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
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
                              style: utils.xMediumTitleTextStyle(height: 1.7),
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
                              style:
                                  utils.mediumTitleTextStyle(color: blueColor),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "I have passion for art and I'm looking to meet new people in the city!",
                      style: TextStyle(
                        fontSize: 17,
                        wordSpacing: 1.5,
                        fontFamily: "ProximaNova",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.personalInfoWidget(
                      text1: "5'6\"",
                      image1: "assets/ruler.png",
                      image2: "assets/graduateHat.png",
                      text2: "Bachelors at University of Chicago",
                      image3: "assets/profession.png",
                      text3: "Finance Professional",
                      image4: "assets/infoHome.png",
                      text4: "Los Angeles, CA",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png",
                        top: false,
                        bottom: false),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.aboutPersonScreen(
                        name: "Usama",
                        about:
                            "Hi, My name is Usama and I am a professional flutter developer and I have experience in developing iOS and android applications."),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.promptTitleWidget(
                        promptTitle: "PROMPT TITLE...",
                        promptBody:
                            "This is the first prompt body.This is the first prompt body.This is the first prompt body."),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png",
                        top: false,
                        bottom: false),
                    const SizedBox(
                      height: 15,
                    ),
                    utils.passionsWidget(
                      title: "USAMA'S PASSIONS",
                      widget: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          for (int i = 0; i < arts.length; i++)
                            utils.interestsHomeWidget(
                              text: arts[i],
                              selected: i % 2 == 0 ? true : false,
                              onTap: () {},
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png",
                        top: false,
                        bottom: false),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.promptTitleWidget(
                        promptTitle: "PROMPT TITLE...",
                        promptBody:
                            "This is the first prompt body.This is the first prompt body.This is the first prompt body."),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png", bottom: true),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: _scrollToTop,
                      child: Text(
                        "BACK TO THE TOP",
                        style: utils.smallHeadingTextStyle(color: blueColor),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              offset: const Offset(0, 1),
                              blurRadius: 6),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              offset: const Offset(0, 1),
                              blurRadius: 6),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red.withOpacity(0.4),
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeInBack);
  }
}