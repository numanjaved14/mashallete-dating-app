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
                  style: utils.smallHeadingTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Today 2:58 PM",
                        style: utils.smallTitleTextStyle(),
                      ),
                      utils.otherPersonChatContainer(
                          context: context,
                          messageText:
                              "Hi Umer how is it going. Hope you are doing well!"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Today 2:58 PM",
                        style: utils.smallTitleTextStyle(),
                      ),
                      utils.myChatContainer(
                          context: context,
                          messageText:
                              "Hi Umer how is it going. Hope you are doing well!"),
                      utils.audioMessage(context: context, time: "2:30"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
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
                          color: Colors.grey[600],
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
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/audioVideo.png",
                    scale: 1.7,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
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
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
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
