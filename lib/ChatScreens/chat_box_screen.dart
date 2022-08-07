import 'dart:async';

import 'package:audio_wave/audio_wave.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class ChatBoxScreen extends StatefulWidget {
  const ChatBoxScreen({Key? key}) : super(key: key);

  @override
  State<ChatBoxScreen> createState() => _ChatBoxScreenState();
}

class _ChatBoxScreenState extends State<ChatBoxScreen> {
  Object? val;
  var videoCallEnabled = false;
  Timer? timer;
  late final PlayerController controller;
  bool pause = false;
  bool played = false;
  bool send = false;
  late final RecorderController recorderController;
  var heightFactor = [
    0.3,
    0.5,
    0.6,
    0.6,
    0.7,
    0.2,
    0.2,
    0.2,
    0.1,
    0.1,
    0.1,
    0.9,
    0.9,
    0.9,
    0.1,
    0.1,
    0.1,
    0.1,
    0.1,
    0.9,
    0.9,
    0.9,
    0.9,
    0.7,
    0.7,
    0.8,
    0.5,
    0.5,
    0.9,
    0.9,
    0.1,
    0.1,
    0.9,
    0.9,
    0.9,
    0.7,
    0.8,
    0.5,
  ];
  List colorFactor = [
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor,
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
    purpleColor.withOpacity(0.4),
  ];

  var messageController = TextEditingController();
  @override
  void initState() {
    super.initState();
    recorderController = RecorderController();
    controller = PlayerController();
  }

  bool gif = false;
  bool mic = false;
  var utils = AppUtils();

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, profileViewScreenRoute);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Usama",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "5:00 minutes left to respond",
                        style: utils.smallTitleTextStyle(),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    optionsDialog(width);
                  },
                  child: const Icon(
                    Icons.keyboard_control_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Today 2:58 PM",
                        style: utils.smallTitleTextStyle(),
                      ),
                      utils.otherPersonChatContainer(
                          context: context,
                          messageText:
                              "Hi Umer how is it going. Hope you are doing well!"),
                      const SizedBox(
                        height: 5,
                      ),
                      utils.audioMessageReceived(
                          context: context, time: "12:20"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Today 2:58 PM",
                        style: utils.smallTitleTextStyle(),
                      ),
                      utils.myChatContainer(
                          context: context,
                          messageText:
                              "Hi Umer how is it going. Hope you are doing well!"),
                      send == true
                          ? utils.audioMessageSent(
                              context: context, time: "2:30")
                          : Container(),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            gif == false && mic == false
                ? Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: messageController,
                            onChanged: (val) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Message",
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                                fontFamily: "ProximaNova",
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Send",
                          style: utils.smallHeadingTextStyle(
                              color: messageController.text.isNotEmpty
                                  ? blueColor
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  )
                : gif == false && mic == true
                    ? Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: pause == false
                              ? purpleColor
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            pause == true
                                ? GestureDetector(
                                    onTap: () async {
                                      played = !played;
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 25,
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: purpleColor,
                                            width: 2,
                                          )),
                                      child: Icon(
                                        played == true
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: played == true ? 16 : 20,
                                        color: purpleColor,
                                      ),
                                    ))
                                : Container(),
                            played == true
                                ? Expanded(
                                    child: AudioWave(
                                      height: 22,
                                      animationLoop: 1,
                                      spacing: 2.5,
                                      bars: [
                                        for (int i = 0;
                                            i < heightFactor.length;
                                            i++)
                                          AudioWaveBar(
                                            color: colorFactor[i],
                                            heightFactor: heightFactor[i],
                                          ),
                                      ],
                                    ),
                                  )
                                : Expanded(
                                    child: AudioWaveforms(
                                      recorderController: recorderController,
                                      waveStyle: WaveStyle(
                                          extendWaveform: true,
                                          middleLineColor: Colors.transparent,
                                          waveColor: pause == false
                                              ? Colors.white
                                              : purpleColor,
                                          spacing: 5.0),
                                      size: const Size(double.infinity, 30.0),
                                    ),
                                  ),
                            GestureDetector(
                              onTap: () {
                                pause = true;
                                recorderController.pause();
                                setState(() {});
                              },
                              child: pause == true
                                  ? GestureDetector(
                                      onTap: () {
                                        send = true;
                                        mic = false;
                                        recorderController.stop();
                                        setState(() {});
                                        setState(() {});
                                      },
                                      child: Text(
                                        "Send",
                                        style: utils.smallHeadingTextStyle(
                                            color: lightBlueColor),
                                      ),
                                    )
                                  : Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          )),
                                      child: const Icon(
                                        Icons.stop,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < 10; i++)
                                    utils.gifContainer(
                                      image: "assets/boy.png",
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width > 400 ? 10 : 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  gif = !gif;
                                  mic = false;
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.close,
                                  size: 25,
                                ),
                              ),
                              SizedBox(
                                width: width > 400 ? 10 : 5,
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search GIFs...",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[600],
                                      fontFamily: "ProximaNova",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    wantsVideoCallDialog();
                  },
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      color: videoCallEnabled == true
                          ? greenColor
                          : Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: videoCallEnabled == true
                        ? Image.asset(
                            "assets/videoIcon.png",
                            color: Colors.white,
                            scale: 5,
                          )
                        : Image.asset(
                            "assets/videoIcon.png",
                            color: blueColor,
                            scale: 5,
                          ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    gif = !gif;
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      color: gif == true
                          ? blueColor
                          : Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/giffy.png",
                      scale: 0.8,
                      color: gif == true ? Colors.white : blueColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mic = !mic;
                    if (mic == true) {
                      pause = false;

                      recorderController.record();
                    } else {
                      recorderController.stop();
                    }
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      color: mic == false
                          ? Colors.grey.withOpacity(0.1)
                          : purpleColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset(
                      "assets/microphone.png",
                      scale: 1.5,
                      color: mic == false ? blueColor : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  optionsDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      barrierDismissible: true,
      // transitionBuilder: _buildNewTransition,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: width > 415
                      ? MediaQuery.of(context).size.width * 1.63
                      : MediaQuery.of(context).size.width * 1.43,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        unMatchDialog(width);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Center(
                          child: Text(
                            "Unmatch with Sana",
                            style: utils.smallHeadingTextStyle(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        reportDialog(width);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Center(
                          child: Text(
                            "Report Sana",
                            style: utils.smallHeadingTextStyle(
                                color: darkRedColor),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: utils.smallHeadingTextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  reportDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.40,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: width > 400 ? 580 : 550,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width > 400 ? 20 : 20,
                              right: width > 400 ? 10 : 10),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Report Sana",
                                style: utils.xMediumHeadingTextStyle(
                                    color: darkRedColor),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "We won't tell them",
                                style: utils.mediumTitleTextStyle(),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fake profile or spam",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 1
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate messages",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 2
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate photo(s)",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 3
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 3,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate bio",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 4
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 4,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Underaged user",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 5
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 5,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Offline behaviour",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color: val == 6
                                          ? darkRedColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 6,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: darkRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 35 : 25,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    thankYouDialog();
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: darkRedColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Report Sana",
                                        style: utils.smallHeadingTextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  thankYouDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.82,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Thank you!",
                                style: utils.xMediumHeadingTextStyle(),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Our team will review your report as \nsoon as possible.",
                                textAlign: TextAlign.center,
                                style: utils.mediumTitleTextStyle(),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: blueColor,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Dismiss",
                                      style: utils.smallHeadingTextStyle(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  unMatchDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: width > 400
                      ? MediaQuery.of(context).size.width * 0.70
                      : MediaQuery.of(context).size.width * 0.63,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/boy.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        offset: const Offset(0, 1),
                                        blurRadius: 15)
                                  ]),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Are you sure you want to \nunmatch with Sana?",
                              style: utils.mediumHeadingTextStyle(),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "ProximaNova",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Yes, Unmatch",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: "ProximaNova",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text("This cannot be undone.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontFamily: "ProximaNova",
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  enableCallOptionsDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: width > 400
                      ? MediaQuery.of(context).size.width * 0.62
                      : MediaQuery.of(context).size.width * 0.52,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 390,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: purpleColor.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/videoIcon.png",
                                          scale: 4,
                                          color: purpleColor,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          color: extraLightBlueColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/audioIcon.png",
                                          scale: 4,
                                          color: blueColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Ready for a live call with ",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "ProximaNova",
                                    ),
                                  ),
                                  Text(
                                    "Omer?",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "This option remains private until you're both \nready. Once you're ready, you'll both be able to call \neach other when you'er both online.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: width > 400 ? 15 : 13,
                                  color: Colors.black.withOpacity(0.5),
                                  fontFamily: "ProximaNova",
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      videoCallEnabled = true;
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: purpleColor,
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Enable Video Call",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Enable Audio Call",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "I'm not ready yet",
                                  style: TextStyle(
                                    fontSize: width > 400 ? 16 : 14,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  wantsVideoCallDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.72,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: purpleColor.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/videoIcon.png",
                                          scale: 4,
                                          color: purpleColor,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/background.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Omer wants to video chat!",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Not yet",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      incomingVideoCallDialog();
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Enable",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "This can always be enabled later down below.",
                                style: utils.extraSmallTitleTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  incomingVideoCallDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.76,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: purpleColor.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/videoIcon.png",
                                          scale: 4,
                                          color: purpleColor,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/background.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Incoming Video Call from Omer",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Decline",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                          context, videoCallingScreenRoute);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Accept",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "ProximaNova",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
