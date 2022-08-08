import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class PreviewEditProfileScreen extends StatefulWidget {
  const PreviewEditProfileScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            utils.imageBigHomeContainer(
              image: "assets/background.png",
              top: true,
              name: "Usama Majid",
              age: 21,
              profession: "Software Developer",
              country: "Pakistani",
              flagImage: "assets/pakistan.png",
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
                  utils.homeWidget(name: "5'6", image: "assets/ruler.png"),
                  utils.homeWidget(
                      name: "Bachelors at University of Chicago",
                      image: "assets/graduateHat.png"),
                  utils.homeWidget(
                      name: "Los Angeles, CA", image: "assets/infoHome.png"),
                  utils.homeWidget(
                      name: "Developer", image: "assets/profession.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.imageBigContainer(
                image: "assets/background.png", top: false, bottom: false),
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
                name: "My comfort food is...", answer: "Chaat or Tacos"),
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
                image: "assets/background.png", top: false, bottom: false),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
