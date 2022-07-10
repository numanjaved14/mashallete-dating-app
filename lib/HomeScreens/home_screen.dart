import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/cupHeart.png",
                        scale: 2,
                      ),
                      const Text(
                        "Mashalatte",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: blueColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
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
                        "Sana Yaseen,",
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
                        style: utils.mediumTitleTextStyle(color: blueColor),
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
                height: 20,
              ),
              utils.imageBigContainer(
                  image: "assets/background.png", top: false, bottom: false),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
