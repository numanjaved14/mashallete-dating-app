import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class PreviewEditProfileScreen extends StatefulWidget {
  // var snap;
  PreviewEditProfileScreen({
    Key? key,
    // required this.snap,
  }) : super(key: key);

  @override
  State<PreviewEditProfileScreen> createState() =>
      _PreviewEditProfileScreenState();
}

class _PreviewEditProfileScreenState extends State<PreviewEditProfileScreen> {
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
      body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }
            if (snapshot.hasData) {
              Map<String, dynamic> snap =
                  snapshot.data!.data() as Map<String, dynamic>;
              return SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    utils.imageBigHomeContainer(
                      image: snap['profilePhotoURL'],
                      top: true,
                      name: snap['fullName'],
                      age: 21,
                      profession: snap['profession'],
                      country: "Pakistani",
                      flagImage: "assets/pakistan.png",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        snap['tagline'],
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
                              name:
                                  "${snap['heightFeet']}'${snap['heightInch']}",
                              image: "assets/ruler.png"),
                          utils.homeWidget(
                              name: "${snap['education']}",
                              image: "assets/graduateHat.png"),
                          utils.homeWidget(
                              name: "${snap['location']}",
                              image: "assets/infoHome.png"),
                          utils.homeWidget(
                              name: "${snap['profession']}",
                              image: "assets/profession.png"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    utils.imageBigContainer(
                        image: snap['photoURL'][0], top: false, bottom: false),
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
                            name: '${snap['likes'][0]}',
                            image: "assets/art.png",
                          ),
                          utils.infoInterestWidget(
                            name: '${snap['likes'][1]}',
                            image: "assets/infoVideoCamera.png",
                          ),
                          utils.infoInterestWidget(
                            name: '${snap['likes'][2]}',
                            image: "assets/musicNote.png",
                          ),
                          utils.infoInterestWidget(
                            name: '${snap['likes'][3]}',
                            image: "assets/console.png",
                          ),
                          utils.infoInterestWidget(
                            name: '${snap['likes'][4]}',
                            image: "assets/infoCamera.png",
                          ),
                          utils.infoInterestWidget(
                            name: '${snap['likes'][5]}',
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
                        promptTitle: "About '${snap['fullName']}'",
                        promptBody: "'${snap['aboutMe']}'"),
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
                        image: snap['photoURL'][1], top: false, bottom: false),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }),
    );
  }
}
