import 'package:dating_app/ChatScreens/chat_screen.dart';
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

  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController!.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: const <Widget>[
          HomeScreen(),
          LikedProfilesScreen(),
          ChatScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                height: 26,
                child: Image.asset(
                  _selectedIndex == 0
                      ? "assets/bottomIcon1.png"
                      : "assets/bottomIcon2.png",
                  scale: 5,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                height: 26,
                child: Image.asset(
                  _selectedIndex == 1
                      ? "assets/bottomIcon4.png"
                      : "assets/bottomIcon3.png",
                  scale: 5,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                height: 26,
                child: Image.asset(
                  _selectedIndex == 2
                      ? "assets/bottomIcon6.png"
                      : "assets/bottomIcon5.png",
                  scale: 5,
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
