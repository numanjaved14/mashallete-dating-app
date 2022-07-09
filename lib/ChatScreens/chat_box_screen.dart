import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class ChatBoxScreen extends StatefulWidget {
  const ChatBoxScreen({Key? key}) : super(key: key);

  @override
  State<ChatBoxScreen> createState() => _ChatBoxScreenState();
}

class _ChatBoxScreenState extends State<ChatBoxScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
                Text(
                  "Sana",
                  style: utils.mediumHeadingTextStyle(),
                ),
                Text(
                  "More",
                  style: utils.mediumHeadingTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Message",
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Send",
                    style: utils.smallHeadingTextStyle(color: blueColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/audioVideo.png",
                    scale: 1.5,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/giffy.png",
                    scale: 0.8,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    "assets/microphone.png",
                    scale: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
