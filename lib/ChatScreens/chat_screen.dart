import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, profileScreenRoute);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/boy.png",
                              ),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                      height: 32,
                      width: 32,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Conversations",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: blueColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Text(
                      "Your Turn",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "(2)",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              utils.newChatWidget(
                  image: "assets/boy.png",
                  lastMessage: "Start the conversation",
                  senderName: "Sana",
                  time: "12:20",
                  onTap: () {
                    Navigator.pushNamed(context, chatBoxScreenRoute);
                  }),
              utils.line(width: double.infinity),
              const SizedBox(
                height: 20,
              ),
              utils.newChatWidget(
                  image: "assets/boy.png",
                  lastMessage: "Start the conversation",
                  senderName: "Aliza",
                  time: "12:20",
                  onTap: () {
                    Navigator.pushNamed(context, chatBoxScreenRoute);
                  }),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Text(
                      "All Conversations",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "(3)",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              utils.oldChatWidget(
                image: "assets/boy.png",
                lastMessage: "Thank you, you as well.",
                senderName: "Fatima",
                sent: false,
                time: "3 days",
                onTap: () {
                  Navigator.pushNamed(context, chatBoxScreenRoute);
                },
              ),
              utils.line(width: double.infinity),
              const SizedBox(
                height: 20,
              ),
              utils.oldChatWidget(
                image: "assets/boy.png",
                lastMessage: "Hi Zara! how's it going?",
                senderName: "Zara",
                sent: true,
                time: "",
                onTap: () {
                  Navigator.pushNamed(context, chatBoxScreenRoute);
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
