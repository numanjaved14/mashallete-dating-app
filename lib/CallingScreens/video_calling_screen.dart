import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class VideoCallingScreen extends StatefulWidget {
  const VideoCallingScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallingScreen> createState() => _VideoCallingScreenState();
}

class _VideoCallingScreenState extends State<VideoCallingScreen> {
  bool largeView = true;
  bool connecting = true;
  bool timeOut = false;
  var utils = AppUtils();
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      connecting = false;
      setState(() {});
    });

    Timer(const Duration(seconds: 10), () {
      timeOut = true;
      setState(() {});
    });

    Timer(const Duration(seconds: 15), () {
      timeOut = false;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            connecting == true
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                        Container(
                          width: 110,
                          height: 110,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/boy.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          "Connecting...",
                          style: utils.mediumHeadingTextStyle(color: greyColor),
                        )
                      ],
                    ),
                  )
                : largeView == true
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/girlBackground.png"),
                          fit: BoxFit.cover,
                        )),
                      )
                    : Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/girlBackground.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/boyForeground.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
            timeOut == false
                ? Container()
                : Positioned(
                    top: 120,
                    left: 125,
                    right: 125,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "5 minutes remaining",
                          style: utils.smallHeadingTextStyle(
                            color: redColor,
                          ),
                        ),
                      ),
                    ),
                  ),
            Positioned(
              top: 60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Usama",
                          style: utils.mediumHeadingTextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "5:00",
                          style: utils.smallHeadingTextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              left: 85,
              right: 85,
              child: BlurryContainer(
                width: 240,
                height: 65,
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    utils.callSmallButtons(
                        assetImage: largeView == true
                            ? "assets/doubleArrows.png"
                            : "assets/doubleArrowClosing.png",
                        colorOfButton: callButtonBackgroundColor,
                        onTap: () {
                          largeView = !largeView;
                          setState(() {});
                        }),
                    utils.callSmallButtons(
                        assetImage: "assets/callMic.png",
                        colorOfButton: callButtonBackgroundColor),
                    utils.callSmallButtons(
                        assetImage: "assets/callSpeaker.png",
                        colorOfButton: callButtonBackgroundColor),
                    utils.callSmallButtons(
                        assetImage: "assets/callEnd.png",
                        colorOfButton: redColor),
                  ],
                ),
              ),
            ),
            largeView == true
                ? Positioned(
                    bottom: 125,
                    right: 20,
                    child: Container(
                      width: 170,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/boyForeground.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
