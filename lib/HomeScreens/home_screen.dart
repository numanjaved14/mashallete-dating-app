import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Image.asset(
                            "assets/mashalatteText.png",
                            scale: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                          child: Icon(CupertinoIcons.arrow_turn_up_left),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        utils.imageBigHomeContainer(
                          image: "assets/background.png",
                          top: true,
                          name: "Usama Majid",
                          age: 21,
                          profession: "Software Developer",
                          country: "Pakistani",
                          flagImage: "assets/pakistan.png",
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text(
                                "New User",
                                style: utils.smallTitleTextStyle(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Always live life to the fullest.",
                        style: utils.largeHeadingTextStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "The Basics",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "ProximaNova",
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          utils.homeWidget(
                              name: "5'6", image: "assets/ruler.png"),
                          utils.homeWidget(
                              name: "Bachelors at University of Chicago",
                              image: "assets/graduateHat.png"),
                          utils.homeWidget(
                              name: "Los Angeles, CA",
                              image: "assets/infoHome.png"),
                          utils.homeWidget(
                              name: "Developer",
                              image: "assets/profession.png"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png",
                        top: false,
                        bottom: false),
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Interests",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "ProximaNova",
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          utils.infoInterestWidget(
                            name: "Art Galleries",
                            image: "assets/art.png",
                          ),
                          utils.infoInterestWidget(
                            name: "Movies",
                            image: "assets/infoVideoCamera.png",
                          ),
                          utils.infoInterestWidget(
                            name: "Music",
                            image: "assets/musicNote.png",
                          ),
                          utils.infoInterestWidget(
                            name: "Gaming",
                            image: "assets/console.png",
                          ),
                          utils.infoInterestWidget(
                            name: "Photography",
                            image: "assets/infoCamera.png",
                          ),
                          utils.infoInterestWidget(
                            name: "History",
                            image: "assets/historyBook.png",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.aboutPersonScreen(
                        name: "My comfort food is...",
                        answer: "Chaat or Tacos"),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.promptTitleWidget(
                        promptTitle: "About Sana",
                        promptBody:
                            "Hey there, I'm out here looking for my soulmate! \n \nI love being outdoors and I love history. \n \nI don't want to give away everything so don't be afraid to start a conversation."),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.aboutPersonScreen(
                        name: "I'm likely famous for...",
                        answer: "Dancing in my kitchen"),
                    const SizedBox(
                      height: 30,
                    ),
                    utils.imageBigContainer(
                        image: "assets/background.png",
                        top: false,
                        bottom: false),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.black,
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
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: blueColor,
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
                                  CupertinoIcons.heart_fill,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: _scrollToTop,
                    //   child: const Text(
                    //     "BACK TO THE TOP",
                    //     style: TextStyle(
                    //         fontSize: 16,
                    //         fontFamily: "ProximaNova",
                    //         fontWeight: FontWeight.w900,
                    //         color: blueColor),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
