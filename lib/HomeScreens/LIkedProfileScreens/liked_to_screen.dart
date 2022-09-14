import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/Utilities/app_utils.dart';

class LikedToScreen extends StatefulWidget {
  const LikedToScreen({super.key});

  @override
  State<LikedToScreen> createState() => _LikedToScreenState();
}

class _LikedToScreenState extends State<LikedToScreen> {
  List<Map<String, dynamic>> likedToUsers = [];
  var utils = AppUtils();
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
              List.from(data['likedTo']).forEach((element) {
                String data = element;

                //then add the data to the List<Offset>, now we have a type Offset
                uids.add(data);
              });
              if (_isInit == false) {
                // for (int i = 0; i < data['likedTo'].length; i++) {
                //   debugPrint('Loop called: $i');
                //   getUserData(data['likedTo'][i]);
                // }
                uids.forEach((uid) {
                  getUserData(uid);
                });
                _isInit = true;
              }
              // for (int i = 0; i < data['likedTo'].length; i++) {
              //   getUserData(data['likedTo'][i]);
              // }
              return data['likedTo'].length == 0
                  ? const Center(
                      child: Text('You have no likes.'),
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
                                  for (int i = 0; i < likedToUsers.length; i++)
                                    utils.blurredImageContainer(
                                      width: width,
                                      image: likedToUsers[i]['profilePhotoURL'],
                                      name: likedToUsers[i]['fullName'],
                                      blurred: false,
                                      age: likedToUsers[i]['age'],
                                    )
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
              // : GridView.builder(
              //     gridDelegate:
              //         const SliverGridDelegateWithMaxCrossAxisExtent(
              //       maxCrossAxisExtent: 250,
              //       childAspectRatio: 2 / 3,
              //       crossAxisSpacing: 20,
              //       mainAxisSpacing: 20,
              //     ),
              //     // itemCount: data['likedTo'].length,
              //     itemCount: likedToUsers.length,
              //     itemBuilder: (BuildContext ctx, index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(15)),
              //         child:
              //             Text(likedToUsers[index]['fullName'].toString()),
              //       );
              //       // return utils.blurredImageContainer(
              //       //   width: width,
              //       //   image: likedToUsers[index]['profilePhotoURL'],
              //       //   name: likedToUsers[index]['fullName'],
              //       //   blurred: false,
              //       //   age: "22",
              //       // );
              //     });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  void getUserData(String uid) async {
    // StreamBuilder(
    //   stream:
    //       FirebaseFirestore.instance.collection('users').doc(uid).snapshots(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       Map<String, dynamic> userData =
    //           snapshot.data! as Map<String, dynamic>;
    //       likedToUsers.add(userData);
    //       // debugPrint(likedToUsers.toString());
    //       setState(() {
    //         likedToUsers;
    //       });
    //       debugPrint('This is array length: ${likedToUsers.length}');
    //     }
    //     return SizedBox();
    //   },
    // );
    debugPrint('getData called.');
    var userSnap =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    Map<String, dynamic> userData = userSnap.data()!;

    likedToUsers.add(userData);
    // debugPrint(likedToUsers.toString());
    setState(() {
      likedToUsers;
    });
    debugPrint('This is array length: ${likedToUsers.length}');
    // if(likedToUsers.length == data['likedTo'].length)
  }
}
