import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: 170,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 146,
                  height: 146,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/boy.png"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle),
                ),
                CircularPercentIndicator(
                  radius: 81.0,
                  lineWidth: 6.0,
                  percent: 0.75,
                  startAngle: 180.0,
                  progressColor: blueColor,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 52,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Container(
                        width: 46,
                        height: 38,
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "75%",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Aadil, 26",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          utils.generalRow(
            context: context,
            iconContainerColor: Colors.blue,
            onTap: () {},
            text: "Edit Profile",
            image: "assets/person.png",
            scale: 2.0,
          ),
          utils.line(width: double.infinity),
          const SizedBox(
            height: 5,
          ),
          utils.generalRow(
            context: context,
            iconContainerColor: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, privacyScreenRoute);
            },
            text: "Privacy Settings",
            image: "assets/lockOpen.png",
            scale: 4.0,
          ),
          utils.line(width: double.infinity),
          const SizedBox(
            height: 5,
          ),
          utils.generalRow(
            scale: 4.0,
            context: context,
            iconContainerColor: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, preferencesScreenRoute);
            },
            text: "Preferences",
            image: "assets/settings.png",
          ),
          utils.line(width: double.infinity),
          const SizedBox(
            height: 5,
          ),
          utils.generalRow(
            scale: 4.0,
            context: context,
            iconContainerColor: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, premiumAccessScreenRoute);
            },
            text: "Premium",
            image: "assets/electricCharge.png",
          ),
          utils.line(width: double.infinity),
          const SizedBox(
            height: 5,
          ),
          utils.generalRow(
            scale: 4.0,
            context: context,
            iconContainerColor: Colors.blue,
            onTap: () {},
            text: "Help and Support",
            image: "assets/support.png",
          ),
        ],
      ),
    );
  }
}
