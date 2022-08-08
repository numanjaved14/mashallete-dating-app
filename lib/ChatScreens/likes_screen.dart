import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  bool clicked = false;
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
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
                  children: const [
                    Text(
                      "Likes",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "ProximaNova",
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
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black.withOpacity(0.3), width: 0.7),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      clicked = !clicked;
                      setState(() {});
                    },
                    child: Image.asset(
                      clicked == false
                          ? "assets/likesBlue.png"
                          : "assets/likesPurple.png",
                      scale: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      clicked == false
                          ? "No Likes Yet!"
                          : "Get Premium for More Likes",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ProximaNova",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    clicked == false
                        ? "They'll come soon! in the meantime, complete \nyour profile for a better chance of getting a like."
                        : "Our premium members get 10x the amount of likes as standard members!",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.8),
                      fontFamily: "ProximaNova",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  utils.bigButton(
                      onTap: () {
                        clicked == false
                            ? Navigator.pushNamed(context, profileScreenRoute)
                            : Navigator.pushNamed(
                                context, premiumAccessScreenRoute);
                      },
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 45.0,
                      containerColor:
                          clicked == false ? blueColor : purpleColor,
                      textColor: Colors.white,
                      shadowColors: Colors.white,
                      text: clicked == false
                          ? "Complete your Profile"
                          : "Upgrade to Premium",
                      fontSize: 16,
                      borderRadius: 8.0),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
