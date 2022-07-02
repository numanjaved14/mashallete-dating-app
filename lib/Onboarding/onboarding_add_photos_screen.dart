import 'package:flutter/material.dart';
import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingAddPhotosScreen extends StatefulWidget {
  const OnBoardingAddPhotosScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingAddPhotosScreen> createState() =>
      _OnBoardingAddPhotosScreenState();
}

class _OnBoardingAddPhotosScreenState extends State<OnBoardingAddPhotosScreen> {
  var phoneNumberController = TextEditingController();
  var utils = AppUtils();
  List<bool> enabled = [false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor.withOpacity(0.4),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 0.0,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blueColor,
                            width: 2.5,
                          ),
                        ),
                        child: Image.asset(
                          "assets/photos.png",
                          scale: 1.3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Add your photos",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Add at least one photo to showcase in your profile. ",
                  style: utils.mediumTitleTextStyle(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Don't be afraid to smile!",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/smile.png",
                      scale: 7,
                    ),
                  ],
                ),
              ],
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
                      utils.addPhotosWidget(
                        onTap: () {
                          if (enabled[i] == true) {
                            enabled[i] = false;
                          } else {
                            enabled[i] = true;
                          }
                          setState(() {});
                        },
                        enabled: enabled[i],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "",
                ),
                GestureDetector(
                  onTap: () {
                    if (enabled[0] == true ||
                        enabled[1] == true ||
                        enabled[2] == true ||
                        enabled[3] == true ||
                        enabled[4] == true ||
                        enabled[5] == true) {
                      Navigator.pushNamed(
                          context, onBoardingPhotoVerificationScreenRoute);
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: enabled.contains(true)
                          ? blueColor
                          : Colors.grey.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: enabled.contains(true)
                          ? Colors.white
                          : Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
