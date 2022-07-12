import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

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
                "INTERESTS",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < arts.length; i++)
                  utils.interestsHomeWidget(
                    text: arts[i],
                    selected: false,
                    onTap: () {},
                  ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "THE PROMPTS",
                style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
              ),
            ),
            utils.editProfileWidget(
                title: "Prompt Question 1...", body: "Prompt Answer"),
            utils.line(),
            utils.editProfileWidget(
                title: "Prompt Question 2...", body: "Prompt Answer"),
            utils.line(),
            utils.editProfileWidget(
                title: "Prompt Question 3...", body: "Prompt Answer"),
            utils.line(),
            const SizedBox(
              height: 40,
            ),
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
                title: "Height", body: "Not filled out yet", isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(title: "Gender", body: "Male"),
            utils.line(),
            utils.editProfileWidget(title: "Children", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(title: "Sect", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(
                title: "Religious Practice",
                body: "Lorem Ipsum",
                isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(title: "Diet", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(
                title: "Alcohol", body: "Lorem Ipsum", isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(title: "Smoking", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(title: "Education", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(title: "Profession", body: "Lorem Ipsum"),
            utils.line(),
            utils.editProfileWidget(title: "Language(s)", body: "Lorem Ipsum"),
            utils.line(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
