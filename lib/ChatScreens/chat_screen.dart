import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  var utils = AppUtils();

  late TabController _controller;
  var selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
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
                            fontFamily: "ProximaNova",
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
                TabBar(
                  controller: _controller,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  unselectedLabelColor: Colors.grey,
                  labelColor: blueColor,
                  onTap: (val) {
                    selectedIndex = val;
                    setState(() {});
                  },
                  indicatorColor: blueColor,
                  tabs: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Your Turn",
                            style: utils.smallTitleTextStyle(),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: selectedIndex == 0
                                    ? blueColor
                                    : Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "1",
                                style: utils.smallHeadingTextStyle(
                                    color: selectedIndex == 0
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "All Conversations",
                            style: utils.smallTitleTextStyle(),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: selectedIndex == 1
                                    ? blueColor
                                    : Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "4",
                                style: utils.smallHeadingTextStyle(
                                    color: selectedIndex == 1
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  controller: _controller,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, likedProfilesScreenRoute);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: blueColor,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/heartCircle.png",
                                    scale: 3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "You have 2 likes!",
                                        style: utils.mediumTitleTextStyle(),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Like them back to start a conversation!",
                                        style: utils.smallTitleTextStyle(
                                            color: blueColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Start the conversation",
                              textColor: Colors.white,
                              senderName: "Usama",
                              time: "12:20",
                              messageTextColor: blueColor,
                              color: darkRedColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          utils.line(width: double.infinity),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Start the conversation",
                              textColor: Colors.white,
                              senderName: "Usama",
                              messageTextColor: blueColor,
                              time: "12:20",
                              color: darkRedColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, likedProfilesScreenRoute);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: blueColor,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/heartCircle.png",
                                    scale: 3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "You have 2 likes!",
                                        style: utils.mediumTitleTextStyle(),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Like them back to start a conversation!",
                                        style: utils.smallTitleTextStyle(
                                            color: blueColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Start the conversation",
                              textColor: Colors.white,
                              senderName: "Usama",
                              messageTextColor: blueColor,
                              time: "12:20",
                              color: darkRedColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          utils.line(width: double.infinity),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Start the conversation",
                              textColor: Colors.white,
                              senderName: "Usama",
                              time: "12:20",
                              color: darkRedColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          utils.line(width: double.infinity),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Start the conversation",
                              textColor: blueColor,
                              senderName: "Usama",
                              time: "12:20",
                              color: blueColor.withOpacity(0.1),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          utils.line(width: double.infinity),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.newChatWidget(
                              image: "assets/boy.png",
                              lastMessage: "Typing..",
                              textColor: blueColor,
                              senderName: "Usama",
                              time: "12:20",
                              color: blueColor.withOpacity(0.1),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, chatBoxScreenRoute);
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          // Positioned(
          //   left: 35,
          //   right: width > 400 ? 35 : 20,
          //   bottom: width > 400 ? 30 : 20,
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.pushNamed(context, premiumAccessScreenRoute);
          //     },
          //     child: Container(
          //       padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
          //       height: 70,
          //       decoration: BoxDecoration(
          //         color: purpleColor,
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.4),
          //             offset: const Offset(0, 1),
          //             blurRadius: 3,
          //           ),
          //         ],
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Image.asset(
          //             "assets/mashalattePremium.png",
          //             scale: 3,
          //             color: Colors.white,
          //           ),
          //           Text(
          //             "Upgrade to premium to \nview all of your likes",
          //             style: utils.smallHeadingTextStyle(
          //               color: Colors.white,
          //             ),
          //           ),
          //           SizedBox(
          //             width: width > 400 ? 20 : 10,
          //           ),
          //           Container(
          //             width: 100,
          //             height: 30,
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(25),
          //               border: Border.all(
          //                 color: purpleColor.withOpacity(0.3),
          //               ),
          //             ),
          //             child: Center(
          //               child: Text(
          //                 "Learn More",
          //                 style: utils.extraSmallHeadingTextStyle(
          //                   color: purpleColor,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
