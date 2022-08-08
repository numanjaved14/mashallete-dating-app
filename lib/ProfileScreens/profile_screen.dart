import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool premiumUser = true;
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
            premiumUser == true
                ? GestureDetector(
                    onTap: () {
                      premiumUser = !premiumUser;
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/heartProfileIcon.png",
                          scale: 4,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Premium User",
                          style: utils.mediumTitleTextStyle(color: purpleColor),
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          premiumUser = !premiumUser;
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/profileIncompleteIcon.png",
                              scale: 4,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Profile Incomplete",
                              style: utils.mediumTitleTextStyle(
                                  color: darkRedColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: purpleColor,
                            width: 0.5,
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/appIcon.png",
                              scale: 6,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Get Premium",
                              style: utils.mediumHeadingTextStyle(
                                  color: purpleColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mashalatte users that have premium end up \ngoing on 30% more matches!",
                              style: utils.smallTitleTextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            utils.bigButton(
                              width: MediaQuery.of(context).size.width * 0.8,
                              textColor: Colors.white,
                              borderRadius: 10.0,
                              height: 50.0,
                              text: "Upgrade to Premium",
                              containerColor: purpleColor,
                              shadowColors: Colors.white,
                              fontWeight: FontWeight.w900,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, premiumAccessScreenRoute);
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

            SizedBox(
              height: premiumUser == false ? 20 : 40,
            ),
            utils.generalRow(
              context: context,
              iconContainerColor: Colors.blue,
              onTap: () {
                Navigator.pushNamed(context, editProfileTabBarScreenRoute);
              },
              text: "Edit Profile",
              image: "assets/person.png",
              scale: 4.0,
              premium: !premiumUser,
              text2: "70% complete",
            ),
            SizedBox(
              height: premiumUser == false ? 0 : 5,
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
              premium: false,
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
              premium: false,
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
              image: "assets/helpAndSupportIcon.png",
              premium: false,
            ),
          ],
        ),
      ),
    );
  }
}
