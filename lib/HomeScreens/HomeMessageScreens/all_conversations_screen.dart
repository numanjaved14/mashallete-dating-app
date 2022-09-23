import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/ChatScreens/chat_box_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../ChatScreens/chatpage.dart';
import '../../Constants/app_constants.dart';
import '../../Utilities/app_utils.dart';

class AllConversationsScreen extends StatefulWidget {
  const AllConversationsScreen({super.key});

  @override
  State<AllConversationsScreen> createState() => _AllConversationsScreenState();
}

class _AllConversationsScreenState extends State<AllConversationsScreen> {
  var utils = AppUtils();
  List<Map<String, dynamic>> allUsers = [];
  bool _isInit = false;
  List<String> uids = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder: (context,
              AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.hasData) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              List.from(data['likedBy']).forEach((element) {
                String data = element;

                uids.add(data);
              });
              List.from(data['likedTo']).forEach((element) {
                String data = element;

                if (!uids.contains(element)) {
                  uids.add(data);
                }
              });
              if (_isInit == false) {
                uids.forEach((uid) {
                  getUserData(uid);
                });
                _isInit = true;
              }

              return uids.isEmpty
                  ? const Center(
                      child: Text('You have no conversations.'),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  for (int i = 0; i < allUsers.length; i++)
                                    utils.newChatWidget(
                                        image: allUsers[i]['profilePhotoURL'],
                                        lastMessage: "",
                                        textColor: Colors.white,
                                        senderName: allUsers[i]['fullName'],
                                        time: "",
                                        messageTextColor: blueColor,
                                        color: darkRedColor,
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  // ChatBoxScreen(),
                                                  ChatPage(
                                                receiverName: allUsers[i]
                                                    ['fullName'],
                                                receiverId: allUsers[i]['uid'],
                                              ),
                                            ),
                                          );
                                        })
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  void getUserData(String uid) async {
    debugPrint('getData called.');
    var userSnap =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    Map<String, dynamic> userData = userSnap.data()!;

    allUsers.add(userData);
    setState(() {
      allUsers;
    });
    debugPrint('This is array length: ${allUsers.length}');
  }
}
