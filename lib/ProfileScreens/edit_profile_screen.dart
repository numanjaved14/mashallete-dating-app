import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  List arts = [
    "90s Kid",
    "Self Care",
    "Hot Yoga",
    "Writing",
    "Meditation",
  ];
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
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PHOTOS & VIDEOS",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    for (int i = 0; i < 6; i++)
                      utils.addPhotosHomeWidget(
                        width: width,
                        onTap: () {},
                        enabled: true,
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ABOUT ME",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            utils.editProfileWidget(
              title: "Tagline",
              margin: 0.0,
              body: "I have passion for art and I am looking to meet...",
              onTap: () {
                Navigator.pushNamed(context, editTaglineScreenRoute);
              },
            ),
            utils.editProfileWidget(
              title: "About Me",
              body: "I have passion for art and I am looking to meet...",
              margin: 0.0,
              onTap: () {
                Navigator.pushNamed(context, aboutMeEditScreenRoute);
              },
            ),
            utils.editProfileWidget(
                title: "Interests",
                body: "Acting, Art Galleries, Hockey",
                margin: 0.0,
                onTap: () {
                  Navigator.pushNamed(context, editInterestScreenRoute);
                }),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PROMPTS",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            utils.editProfileWidget(
                title: "Facts about me that surprises people..",
                body: "Prompt Answer",
                onTap: () {
                  Navigator.pushNamed(context, promptAnswerScreenRoute);
                }),
            utils.line(),
            utils.editProfileWidget(
              title: "Select a prompt",
              body: "Write your Answer",
              color: blueColor,
              isColorBlue: true,
              onTap: () {
                Navigator.pushNamed(context, promptQuestionScreenRoute);
              },
            ),
            utils.line(),
            utils.editProfileWidget(
              title: "Select a prompt",
              body: "Prompt Answer",
              color: blueColor,
              isColorBlue: true,
              onTap: () {
                Navigator.pushNamed(context, promptQuestionScreenRoute);
              },
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "THE BASICS",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            utils.editProfileWidget(title: "Full Name", body: "Aadil Nazir"),
            utils.line(),
            utils.editProfileWidget(
                onTap: () {
                  Navigator.pushNamed(context, heightScreenRoute);
                },
                title: "Height",
                body: "Not filled out yet",
                isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(title: "Gender", body: "Male"),
            utils.line(),
            utils.editProfileWidget(
                title: "Children",
                body: "Don't have any",
                onTap: () {
                  Navigator.pushNamed(context, haveChildrenScreenRoute);
                }),
            utils.line(),
            utils.editProfileWidget(
                title: "Sect",
                body: "Sunni",
                onTap: () {
                  Navigator.pushNamed(context, sectScreenRoute);
                }),
            utils.line(),
            utils.editProfileWidget(
                title: "Religiousness", body: "Very Religious"),
            utils.line(),
            utils.editProfileWidget(
                onTap: () {
                  Navigator.pushNamed(context, alcoholScreenRoute);
                },
                title: "Alcohol",
                body: "Not filled out yet",
                isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(
                onTap: () {
                  Navigator.pushNamed(context, smokingScreenRoute);
                },
                title: "Smoking",
                body: "Not filled out yet",
                isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(
              onTap: () {
                Navigator.pushNamed(context, educationScreenRoute);
              },
              title: "Education",
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            utils.editProfileWidget(
              onTap: () {
                Navigator.pushNamed(context, professionScreenRoute);
              },
              title: "Profession",
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            utils.editProfileWidget(
              onTap: () {
                Navigator.pushNamed(context, languagesScreenRoute);
              },
              title: "Languages",
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            utils.editProfileWidget(
              onTap: () {
                Navigator.pushNamed(context, marriedScreenRoute);
              },
              title: "Have you ever been married?",
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            utils.editProfileWidget(
              title: "Want kids?",
              onTap: () {
                Navigator.pushNamed(context, wantKidsScreenRoute);
              },
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            utils.editProfileWidget(
              onTap: () {
                Navigator.pushNamed(context, willingToRelocateScreenRoute);
              },
              title: "Willing to relocate?",
              body: "Not filled out yet",
              isColorBlue: true,
            ),
            utils.line(),
            const SizedBox(
              height: 30,
            ),
            utils.gradientBigButton(
              width: double.infinity,
              textColor: Colors.white,
              borderRadius: 10.0,
              height: 50.0,
              text: "Save",
              fontWeight: FontWeight.w900,
              onTap: () {},
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
