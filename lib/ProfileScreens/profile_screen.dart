import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
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
            Container(
              width: width > 400 ? 136 : 126,
              height: width > 400 ? 136 : 126,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/boy.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Usama",
              style: TextStyle(
                fontSize: 32,
                fontFamily: "ProximaNova",
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
              onTap: () {
                Navigator.pushNamed(context, editProfileTabBarScreenRoute);
              },
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
            // utils.generalRow(
            //   scale: 4.0,
            //   context: context,
            //   iconContainerColor: Colors.blue,
            //   onTap: () {
            //     Navigator.pushNamed(context, premiumAccessScreenRoute);
            //   },
            //   text: "Premium",
            //   image: "assets/electricCharge.png",
            // ),
            // utils.line(width: double.infinity),
            // const SizedBox(
            //   height: 5,
            // ),
            utils.generalRow(
              scale: 4.0,
              context: context,
              iconContainerColor: Colors.blue,
              onTap: () {
                Navigator.pushNamed(context, helpAndSupportScreenRoute);
              },
              text: "Help and Support",
              image: "assets/support.png",
            ),
          ],
        ),
      ),
    );
  }
}
