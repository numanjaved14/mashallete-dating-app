import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/HomeScreens/LIkedProfileScreens/liked_by_screen.dart';
import 'package:dating_app/HomeScreens/LIkedProfileScreens/liked_to_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/app_constants.dart';
import '../../Utilities/app_utils.dart';

class LikeTab extends StatelessWidget {
  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
        builder: (context,
            AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;

            return MaterialApp(
              home: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, profileScreenRoute);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      data['profilePhotoURL'],
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle),
                            height: 32,
                            width: 32,
                          ),
                        ),
                        const Text(
                          "Likes",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: blueColor,
                            fontFamily: "ProximaNova",
                          ),
                        ),
                        Container(
                          width: 30,
                        )
                      ],
                    ),
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "Liked You",
                            style:
                                utils.smallTitleTextStyle(color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Liked",
                            style:
                                utils.smallTitleTextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      LikedByScreen(),
                      LikedToScreen(),
                    ],
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
