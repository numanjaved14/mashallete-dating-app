import 'package:dating_app/Utilities/app_utils.dart';
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
    return Scaffold(
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
                Text(
                  "Cancel",
                  style: utils.smallHeadingTextStyle(),
                ),
                const Text(
                  "Sana",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Done",
                  style: utils.smallHeadingTextStyle(color: blueColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: TabBar(
              controller: _controller,
              unselectedLabelStyle: const TextStyle(color: Colors.black),
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), // Creates border
                  color: blueColor),
              tabs: const [
                Text(
                  "Edit",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Preview",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                EditProfileScreen(),
                PreviewEditProfileScreen(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}