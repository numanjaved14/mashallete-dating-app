import 'package:dating_app/Constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../Utilities/app_utils.dart';

class OnBoardingLocationScreen extends StatefulWidget {
  const OnBoardingLocationScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingLocationScreen> createState() =>
      _OnBoardingLocationScreenState();
}

class _OnBoardingLocationScreenState extends State<OnBoardingLocationScreen> {
  var locationController = TextEditingController();
  var utils = AppUtils();
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
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.437,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueColor,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.312,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              "Where do you live?",
              style: utils.largeHeadingTextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: TextFormField(
                controller: locationController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_on,
                      color: blueColor,
                    ),
                    contentPadding: const EdgeInsets.only(top: 5, left: 15),
                    hintText: "Location",
                    border: InputBorder.none,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 19),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: blueColor, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, onBoardingEthnicityScreenRoute);
                      },
                      child: const Text(
                        "Skip for now",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, onBoardingEthnicityScreenRoute);
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
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
