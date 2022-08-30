import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/ChatScreens/chatpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Utilities/constants.dart';

class Chat extends StatefulWidget {
  Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Map<String, dynamic>? ds;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
      // appBar: AppBar(
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Your Messages',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'Your Messages',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white),
                ),
                // child: TextField(
                //   decoration: InputDecoration(
                //     hintText: "Search...",
                //     hintStyle: TextStyle(color: Colors.grey.shade600),
                //     prefixIcon: Icon(
                //       Icons.search,
                //       color: Colors.grey.shade600,
                //       size: 20,
                //     ),
                //     filled: true,
                //     // fillColor: Colors.grey.shade100,
                //     contentPadding: EdgeInsets.all(8),
                //     enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20),
                //         borderSide: BorderSide(color: Colors.grey.shade100)),
                //   ),
                // ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Color(0xff404040)),
                child: FutureBuilder<DocumentSnapshot>(
                    future: firebaseFirestore
                        .collection("locations")
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .get(),
                    builder: (BuildContext context,
                        AsyncSnapshot<DocumentSnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            "Something went wrong",
                            style: TextStyle(
                              color: Color(0xff8D8989),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        );
                      }

                      if (snapshot.hasData && !snapshot.data!.exists) {
                        return Center(
                          child: Text(
                            "No chats to show there",
                            style: TextStyle(
                              color: Color(0xff8D8989),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        );
                      }
                      if (snapshot.hasData) {
                        ds = snapshot.data!.data() as Map<String, dynamic>;
                        return FutureBuilder<DocumentSnapshot>(
                            future: firebaseFirestore
                                .collection("users")
                                .doc(ds!['courierId'])
                                .get(),
                            builder: (context,
                                AsyncSnapshot<DocumentSnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text(
                                    "Something went wrong",
                                    style: TextStyle(
                                      color: Color(0xff8D8989),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                );
                              }

                              if (snapshot.hasData && !snapshot.data!.exists) {
                                return Center(
                                  child: Text(
                                    "No chats to show there",
                                    style: TextStyle(
                                      color: Color(0xff8D8989),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                );
                              }
                              if (snapshot.hasData) {
                                return ListView.builder(
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      Map<String, dynamic> data = snapshot.data!
                                          .data() as Map<String, dynamic>;
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              onTap: () {
                                                Navigator.push(
                                                  this.context,
                                                  MaterialPageRoute(
                                                    builder: (builder) =>
                                                        ChatPage(
                                                      receiverName:
                                                          data["username"],
                                                      receiverId: data['id'],
                                                      // receiverimageLink:
                                                      //     ds.get("imageLink"),
                                                    ),
                                                  ),
                                                );
                                                // Navigator.pushNamed(this.context, MaterialPageRoute(builder: (builder) => ChatPage()));
                                              },
                                              leading: CircleAvatar(
                                                radius: 30,
                                                backgroundImage: NetworkImage(
                                                  data["photoUrl"],
                                                ),
                                              ),
                                              title: Text(
                                                data["username"],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                              // trailing: Text('2 hrs ago'),
                                            ),
                                            Divider()
                                          ],
                                        ),
                                      );
                                    });
                              } else {
                                return CircularProgressIndicator();
                              }
                              ;
                            });
                      } else if (snapshot.hasError) {
                        return Icon(Icons.error_outline);
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
