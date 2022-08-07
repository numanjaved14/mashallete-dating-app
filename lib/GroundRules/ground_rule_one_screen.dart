import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class GroundRuleOneScreen extends StatefulWidget {
  const GroundRuleOneScreen({Key? key}) : super(key: key);

  @override
  State<GroundRuleOneScreen> createState() => _GroundRuleOneScreenState();
}

class _GroundRuleOneScreenState extends State<GroundRuleOneScreen> {
  final List<String> imgList = [
    'assets/rules1.png',
    'assets/rules2.png',
  ];
  var _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  CarouselController crouselController = CarouselController();

  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            CarouselSlider(
              carouselController: crouselController,
              options: CarouselOptions(
                  initialPage: 0,
                  reverse: false,
                  disableCenter: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      imgUrl,
                      scale: 4,
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(
                imgList,
                (index, url) {
                  return Container(
                    width: 15.0,
                    height: 15.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _current == index ? blueColor : Colors.grey[400],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                _current == 0 ? "No Inactive Profiles" : "Expiring Matches",
                style: const TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w800,
                  fontFamily: "ProximaNova",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "If you are inactive for more",
                    style: utils.xMediumTitleTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "than ",
                        style: utils.xMediumTitleTextStyle(),
                      ),
                      Text(
                        "10 days, ",
                        style: utils.xMediumHeadingTextStyle(),
                      ),
                      Text(
                        "your profile will ",
                        style: utils.xMediumTitleTextStyle(),
                      ),
                    ],
                  ),
                  Text(
                    "be invisible until you log back \nin.",
                    style: utils.xMediumTitleTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            utils.gradientBigButton(
              width: double.infinity,
              textColor: _current == 0 ? Colors.black : Colors.white,
              borderRadius: 10.0,
              height: 50.0,
              shadowColors: Colors.white,
              enabled: _current == 0 ? true : false,
              text: "I Understand",
              fontWeight: FontWeight.w900,
              onTap: () {
                Navigator.pushNamed(context, bottomNavigationBarScreenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
