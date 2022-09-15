import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import 'edit_profile_preview_screen.dart';
import 'edit_profile_screen.dart';

class ProfileEditTabBarScreen extends StatefulWidget {
  const ProfileEditTabBarScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditTabBarScreen> createState() =>
      _ProfileEditTabBarScreenState();
}

class _ProfileEditTabBarScreenState extends State<ProfileEditTabBarScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    final snap =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                    Text(
                      "${snap['fullName']}'s Profile",
                      style: TextStyle(
                        fontSize: 19,
                        color: blueColor,
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 20,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: const Icon(
                    //     Icons.check,
                    //     size: 20,
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: TabBar(
                  controller: _controller,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  unselectedLabelColor: Colors.grey,
                  labelColor: blueColor,
                  onTap: (val) {
                    setState(() {});
                  },
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Edit",
                        style: utils.smallHeadingTextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Preview",
                        style: utils.smallHeadingTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    EditProfileScreen(
                        // snap: snap,
                        ),
                    PreviewEditProfileScreen(
                        // snap: snap,
                        ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
