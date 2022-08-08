import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class LikedProfilesScreen extends StatefulWidget {
  const LikedProfilesScreen({Key? key}) : super(key: key);

  @override
  State<LikedProfilesScreen> createState() => _LikedProfilesScreenState();
}

class _LikedProfilesScreenState extends State<LikedProfilesScreen>
    with TickerProviderStateMixin {
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
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
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
                const SizedBox(
                  height: 20,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Liked You",
                        style: utils.smallTitleTextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Liked",
                        style: utils.smallTitleTextStyle(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: TabBarView(
                  controller: _controller,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < 6; i++)
                                  utils.blurredImageContainer(
                                    width: width,
                                    image: "assets/boy.png",
                                    name: "Aadil,",
                                    age: "22",
                                    blurred: i == 0 ? false : true,
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < 6; i++)
                                  utils.blurredImageContainer(
                                    width: width,
                                    image: "assets/boy.png",
                                    name: "Aadil,",
                                    blurred: false,
                                    age: "22",
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            left: 35,
            right: width > 400 ? 35 : 20,
            bottom: width > 400 ? 30 : 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, premiumAccessScreenRoute);
              },
              child: Container(
                padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                height: 70,
                decoration: BoxDecoration(
                  color: purpleColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: const Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/mashalattePremium.png",
                      scale: 3,
                      color: Colors.white,
                    ),
                    Text(
                      "Upgrade to premium to \nview all of your likes",
                      style: utils.smallHeadingTextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width > 400 ? 20 : 10,
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: purpleColor.withOpacity(0.3),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Learn More",
                          style: utils.extraSmallHeadingTextStyle(
                            color: purpleColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
