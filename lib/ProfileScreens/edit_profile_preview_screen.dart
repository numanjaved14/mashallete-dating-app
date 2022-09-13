import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class PreviewEditProfileScreen extends StatefulWidget {
  var snap;
  PreviewEditProfileScreen({
    Key? key,
    required this.snap,
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
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            utils.imageBigHomeContainer(
              image: widget.snap['profilePhotoURL'],
              top: true,
              name: widget.snap['fullName'],
              age: 21,
              profession: widget.snap['profession'],
              country: "Pakistani",
              flagImage: "assets/pakistan.png",
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.snap['tagline'],
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
                          "${widget.snap['heightFeet']}'${widget.snap['heightInch']}",
                      image: "assets/ruler.png"),
                  utils.homeWidget(
                      name: "${widget.snap['education']}",
                      image: "assets/graduateHat.png"),
                  utils.homeWidget(
                      name: "${widget.snap['location']}",
                      image: "assets/infoHome.png"),
                  utils.homeWidget(
                      name: "${widget.snap['profession']}",
                      image: "assets/profession.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            utils.imageBigContainer(
                image: widget.snap['photoURL'][0], top: false, bottom: false),
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
                    name: '${widget.snap['likes'][0]}',
                    image: "assets/art.png",
                  ),
                  utils.infoInterestWidget(
                    name: '${widget.snap['likes'][1]}',
                    image: "assets/infoVideoCamera.png",
                  ),
                  utils.infoInterestWidget(
                    name: '${widget.snap['likes'][2]}',
                    image: "assets/musicNote.png",
                  ),
                  utils.infoInterestWidget(
                    name: '${widget.snap['likes'][3]}',
                    image: "assets/console.png",
                  ),
                  utils.infoInterestWidget(
                    name: '${widget.snap['likes'][4]}',
                    image: "assets/infoCamera.png",
                  ),
                  utils.infoInterestWidget(
                    name: '${widget.snap['likes'][5]}',
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
                promptTitle: "About '${widget.snap['fullName']}'",
                promptBody: "'${widget.snap['aboutMe']}'"),
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
                image: widget.snap['photoURL'][1], top: false, bottom: false),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
