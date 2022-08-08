import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
          ],
        ),
      ),
    );
  }
}
