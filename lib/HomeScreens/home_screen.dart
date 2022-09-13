import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Database/firebasedatabase.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  // List arts = [
  //   "90s Kid",
  //   "Self Care",
  //   "Hot Yoga",
  //   "Writing",
  //   "Meditation",
  // ];
  var utils = AppUtils();
  var userData = {};
  bool _isLoading = false;

  @override
  void initState() {
    getData();

    _scrollController = ScrollController()..addListener(() {});

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('users')
                        .where('uid',
                            isNotEqualTo:
                                FirebaseAuth.instance.currentUser!.uid)
                        .snapshots(),
                    builder: (context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot) {
                      if (snapshot.hasError) {
                        return const Text('Something went wrong');
                      }

                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (ctx, index) => Column(
                            children: [
                              const SizedBox(
                                height: 70,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, profileScreenRoute);
                                    },
                                    child: Container(
                                      decoration: _isLoading
                                          ? const BoxDecoration(
                                              color: Colors.white)
                                          : BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    userData['profilePhotoURL'],
                                                  ),
                                                  fit: BoxFit.cover),
                                              shape: BoxShape.circle),
                                      height: 32,
                                      width: 32,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/mashalatteText.png",
                                      scale: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                    child:
                                        Icon(CupertinoIcons.arrow_turn_up_left),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              Stack(
                                children: [
                                  utils.imageBigHomeContainer(
                                    image: snapshot.data!.docs[index]
                                        ['profilePhotoURL'],
                                    top: true,
                                    name: snapshot.data!.docs[index]['fullName']
                                        .toString(),
                                    age: 21,
                                    profession: snapshot
                                        .data!.docs[index]['profession']
                                        .toString(),
                                    country: "Pakistani",
                                    flagImage: "assets/pakistan.png",
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "New User",
                                          style: utils.smallTitleTextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  snapshot.data!.docs[index]['tagline']
                                      .toString(),
                                  style: utils.largeHeadingTextStyle(),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "The Basics",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.1),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Wrap(
                                  alignment: WrapAlignment.start,
                                  children: [
                                    utils.homeWidget(
                                        name:
                                            "${snapshot.data!.docs[index]['heightFeet']}'${snapshot.data!.docs[index]['heigthInch']}",
                                        image: "assets/ruler.png"),
                                    utils.homeWidget(
                                        name:
                                            "${snapshot.data!.docs[index]['education']}",
                                        image: "assets/graduateHat.png"),
                                    utils.homeWidget(
                                        name:
                                            "${snapshot.data!.docs[index]['location']}",
                                        image: "assets/infoHome.png"),
                                    utils.homeWidget(
                                        name:
                                            "${snapshot.data!.docs[index]['profession']}",
                                        image: "assets/profession.png"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              utils.imageBigContainer(
                                  image: snapshot.data!.docs[index]['photoURL']
                                      [0],
                                  top: false,
                                  bottom: false),
                              const SizedBox(
                                height: 40,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "My Interests",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.1),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Wrap(
                                  alignment: WrapAlignment.start,
                                  children: [
                                    // snapshot.data!.docs[index]['likes'].forEach(
                                    //   (likes) => utils.infoInterestWidget(
                                    //     name: likes,
                                    //   ),
                                    // ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [0],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [1],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [2],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [3],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [4],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [5],
                                      image: "assets/art.png",
                                    ),
                                    utils.infoInterestWidget(
                                      name: snapshot.data!.docs[index]['likes']
                                          [6],
                                      image: "assets/art.png",
                                    ),
                                    // utils.infoInterestWidget(
                                    //   name: snapshot.data!.docs[index]['likes']
                                    //       [7],
                                    //   image: "assets/art.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: snapshot.data!.docs[index]['likes']
                                    //       [8],
                                    //   image: "assets/art.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: snapshot.data!.docs[index]['likes']
                                    //       [9],
                                    //   image: "assets/art.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: "Movies",
                                    //   image: "assets/infoVideoCamera.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: "Music",
                                    //   image: "assets/musicNote.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: "Gaming",
                                    //   image: "assets/console.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: "Photography",
                                    //   image: "assets/infoCamera.png",
                                    // ),
                                    // utils.infoInterestWidget(
                                    //   name: "History",
                                    //   image: "assets/historyBook.png",
                                    // ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              utils.aboutPersonScreen(
                                  name: "My comfort food is...",
                                  answer: "Chaat or Tacos"),
                              const SizedBox(
                                height: 20,
                              ),
                              utils.promptTitleWidget(
                                  promptTitle:
                                      "About ${snapshot.data!.docs[index]['fullName']}",
                                  promptBody: snapshot
                                      .data!.docs[index]['aboutMe']
                                      .toString()),
                              const SizedBox(
                                height: 30,
                              ),
                              utils.aboutPersonScreen(
                                  name: "I'm likely famous for...",
                                  answer: "Dancing in my kitchen"),
                              const SizedBox(
                                height: 30,
                              ),
                              utils.imageBigContainer(
                                  image: snapshot.data!.docs[index]['photoURL']
                                      [1],
                                  top: false,
                                  bottom: false),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80),
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                offset: const Offset(0, 1),
                                                blurRadius: 6),
                                          ],
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => Database().likeProfile(
                                          snapshot.data!.docs[index]['uid'],
                                          FirebaseAuth
                                              .instance.currentUser!.uid,
                                          snapshot.data!.docs[index]['likedBy'],
                                        ),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            color: blueColor,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                  offset: const Offset(0, 1),
                                                  blurRadius: 6),
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              CupertinoIcons.heart_fill,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: _scrollToTop,
                              //   child: const Text(
                              //     "BACK TO THE TOP",
                              //     style: TextStyle(
                              //         fontSize: 16,
                              //         fontFamily: "ProximaNova",
                              //         fontWeight: FontWeight.w900,
                              //         color: blueColor),
                              //   ),
                              // ),
                              const SizedBox(
                                height: 80,
                              ),
                            ],
                          ),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
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
      ),
    );
  }

  getData() async {
    setState(() {
      _isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      userData = userSnap.data()!;
      setState(() {});
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
    setState(() {
      _isLoading = false;
    });
  }
}
