import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/ChatScreens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'liked_profile_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const HomeScreen(),
    const LikedProfilesScreen(),
    const ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 23,
                height: 23,
                child: Image.asset(
                  "assets/homeBottomBar.png",
                  color: _selectedIndex == 0
                      ? blueColor
                      : blueColor.withOpacity(0.4),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 23,
                height: 23,
                child: Image.asset(
                  "assets/heartBottomBar.png",
                  color: _selectedIndex == 1
                      ? blueColor
                      : blueColor.withOpacity(0.4),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 23,
                height: 23,
                child: Icon(
                  CupertinoIcons.chat_bubble_fill,
                  size: 23,
                  color: _selectedIndex == 2
                      ? blueColor
                      : blueColor.withOpacity(0.4),
                ),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: _onItemTapped,
          elevation: 0,
        ),
      ),
    );
  }
}
