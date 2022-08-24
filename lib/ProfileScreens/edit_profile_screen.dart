import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class EditProfileScreen extends StatefulWidget {
  var snap;
  EditProfileScreen({
    Key? key,
    this.snap,
  }) : super(key: key);

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
                // widget.snap['fullName'],
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
                    SizedBox(
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            child: GridView.builder(
                                itemCount: widget.snap['photoURL'].length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3),
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                widget.snap['photoURL'][index]),
                                            fit: BoxFit.cover)),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    // for (int i = 0; i < 6; i++)
                    //   utils.addPhotosHomeWidget(
                    //     width: width,
                    //     onTap: () {},
                    //     enabled: true,
                    //   ),
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
              body: widget.snap['tagline'] == ''
                  ? "I have passion for art and I am looking to meet..."
                  : widget.snap['tagline'],
              onTap: () {
                Navigator.pushNamed(context, editTaglineScreenRoute);
              },
            ),
            utils.editProfileWidget(
              title: "About Me",
              body: widget.snap['aboutMe'] == ''
                  ? "I have passion for art and I am looking to meet..."
                  : widget.snap['aboutMe'],
              margin: 0.0,
              onTap: () {
                Navigator.pushNamed(context, aboutMeEditScreenRoute);
              },
            ),
            utils.editProfileWidget(
                title: "Interests",
                body: widget.snap['likes'] == []
                    ? "Acting, Art Galleries, Hockey"
                    : '${widget.snap['likes'][0]}, ${widget.snap['likes'][1]}, ${widget.snap['likes'][2]}...',
                margin: 0.0,
                onTap: () {
                  Navigator.pushNamed(context, editInterestScreenRoute,
                      arguments: widget.snap['likesIndex`']);
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
            utils.editProfileWidget(
                title: "Full Name",
                body: "${widget.snap['fullName']} ${widget.snap['lastName']}"),
            utils.line(),
            utils.editProfileWidget(
                onTap: () {
                  Navigator.pushNamed(context, heightScreenRoute);
                },
                title: "Height",
                body: widget.snap['heightFeet'] == ''
                    ? "Not filled out yet"
                    : '${widget.snap['heightFeet']}\' ${widget.snap['heightInch']}\'\'',
                isColorBlue: true),
            utils.line(),
            utils.editProfileWidget(
                title: "Gender", body: "${widget.snap['gender']}"),
            utils.line(),
            utils.editProfileWidget(
                title: "Children",
                body: widget.snap['haveChildren'] == ''
                    ? "Don't have any"
                    : widget.snap['haveChildren'],
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
                title: "Religiousness", body: "${widget.snap['religion']}"),
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
