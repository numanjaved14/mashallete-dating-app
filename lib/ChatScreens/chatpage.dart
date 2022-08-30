import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/ChatScreens/chatmodels.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';
import '../Utilities/constants.dart';
import '../Utilities/customdialog.dart';

class ChatPage extends StatefulWidget {
  String receiverId;
  // String receiverimageLink;
  String receiverName;
  ChatPage({
    Key? key,
    required this.receiverName,
    // required this.receiverimageLink,
    required this.receiverId,
  }) : super(key: key);
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String groupChatId = "";
  ScrollController scrollController = ScrollController();
  final ImagePicker _picker = ImagePicker();
  File? imageUrl;
  TextEditingController messageController = TextEditingController();
  String? imageLink;
  Object? val;
  void addImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageUrl = File(image!.path);
    });
    Customdialog.showDialogBox(context);
    await uploadImageToFirebase().then((value) {
      var documentReference = firebaseFirestore
          .collection('messages')
          .doc(groupChatId)
          .collection(groupChatId)
          .doc(DateTime.now().millisecondsSinceEpoch.toString());
      firebaseFirestore.runTransaction((transaction) async {
        await transaction.set(
          documentReference,
          {
            "senderId": firebaseAuth.currentUser!.uid,
            "receiverId": widget.receiverId,
            // "content": messageController.text,
            "time": DateTime.now(),
            'image': imageLink,
            'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
            // 'content': content,
            'type': 1
          },
        );
      });
    }).then((value) {
      Customdialog.closeDialog(context);
      FocusScope.of(context).unfocus();
      messageController.clear();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    if (firebaseAuth.currentUser!.uid.hashCode <= widget.receiverId.hashCode) {
      groupChatId = "${firebaseAuth.currentUser!.uid}-${widget.receiverId}";
    } else {
      groupChatId = "${widget.receiverId}-${firebaseAuth.currentUser!.uid}";
    }
    // firebaseFirestore.collection("users").doc(widget.receiverId).get().then((value) {
    //   setState(() {
    //     receiverimageLink= value.get("imageLink");
    //     receiverName=value.get("UserName");
    //   });
    // });
    var a = firebaseFirestore.collection("collectionPath");
    firebaseFirestore
        .collection("users")
        .doc(widget.receiverId)
        .get()
        .then((value) {
      setState(() {
        myStatus = value.get("status");
        // receiverName=value.get("UserName");
      });
    });
    super.initState();
  }

  var utils = AppUtils();

  String myStatus = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    // backgroundImage: NetworkImage(widget.receiverimageLink),
                    maxRadius: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            widget.receiverName,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          myStatus,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      optionsDialog(MediaQuery.of(context).size.width);
                    },
                    child: const Icon(
                      Icons.keyboard_control_sharp,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              StreamBuilder(
                  stream: firebaseFirestore
                      .collection("messages")
                      .doc(groupChatId)
                      .collection(groupChatId)
                      .orderBy("timestamp", descending: false)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!.docs == 0
                          ? Center(child: Text("Empty "))
                          : ListView.builder(
                              controller: scrollController,
                              itemCount: snapshot.data!.docs.length,
                              shrinkWrap: true,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                var ds = snapshot.data!.docs[index];
                                return ds.get("type") == 0
                                    ? Container(
                                        padding: EdgeInsets.only(
                                            left: 14,
                                            right: 14,
                                            // top: 10,
                                            bottom: 10),
                                        // child: Align(
                                        //   alignment: (ds.get("senderId") ==
                                        //           firebaseAuth.currentUser!.uid
                                        //       ? Alignment.bottomRight
                                        //       : Alignment.bottomLeft),
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       borderRadius:
                                        //           BorderRadius.circular(20),
                                        //       color: (ds.get("senderId") ==
                                        //               firebaseAuth
                                        //                   .currentUser!.uid
                                        //           ? Colors.grey.shade200
                                        //           : Colors.blue[200]),
                                        //     ),
                                        //     padding: EdgeInsets.all(16),
                                        //     child: Text(
                                        //       ds.get("content"),
                                        //       style: TextStyle(fontSize: 15),
                                        //     ),
                                        //   ),
                                        // ),
                                        child: ds.get("senderId") ==
                                                firebaseAuth.currentUser!.uid
                                            ? utils.myChatContainer(
                                                context: context,
                                                messageText: ds.get("content"))
                                            : utils.otherPersonChatContainer(
                                                context: context,
                                                messageText: ds.get("content"),
                                              ))
                                    : ds.get("type") == 1
                                        ? Container(
                                            padding: EdgeInsets.only(
                                                left: 14,
                                                right: 14,
                                                top: 10,
                                                bottom: 10),
                                            child: Align(
                                              alignment: (ds.get("senderId") ==
                                                      firebaseAuth
                                                          .currentUser!.uid
                                                  ? Alignment.bottomRight
                                                  : Alignment.bottomLeft),
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        ds.get("image"),
                                                      ),
                                                      fit: BoxFit.fill),
                                                  // color: (ds.get("senderId") == firebaseAuth.currentUser!.uid?Colors.grey.shade200:Colors.blue[200]),
                                                ),
                                                // padding: EdgeInsets.all(16),
                                              ),
                                            ),
                                          )
                                        : Container();
                              },
                            );
                    } else if (snapshot.hasError) {
                      return Center(child: Icon(Icons.error_outline));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: wantsVideoCallDialog,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: addImage,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          controller: messageController,
                          decoration: InputDecoration(
                              hintText: "Message",
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: "ProximaNova",
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          sendMessage(messageController.text.trim(), 0);
                        },
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Colors.blue,
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void sendMessage(String content, int type) {
    // type: 0 = text, 1 = image, 2 = sticker
    if (content.trim() != '') {
      messageController.clear();

      var documentReference = firebaseFirestore
          .collection('messages')
          .doc(groupChatId)
          .collection(groupChatId)
          .doc(DateTime.now().millisecondsSinceEpoch.toString());

      firebaseFirestore.runTransaction((transaction) async {
        await transaction.set(
          documentReference,
          {
            "senderId": firebaseAuth.currentUser!.uid,
            "receiverId": widget.receiverId,
            "time": DateTime.now(),
            'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
            'content': content,
            'type': type
          },
        );
      });
      scrollController.animateTo(0.0,
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    } else {
      // Fluttertoast.showToast(msg: 'Nothing to send');
    }
  }

  Future uploadImageToFirebase() async {
    File? fileName = imageUrl;
    var uuid = Uuid();
    firebase_storage.Reference firebaseStorageRef = firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('messages/images+${uuid.v4()}');
    firebase_storage.UploadTask uploadTask =
        firebaseStorageRef.putFile(fileName!);
    firebase_storage.TaskSnapshot taskSnapshot =
        await uploadTask.whenComplete(() async {
      print(fileName);
      String img = await uploadTask.snapshot.ref.getDownloadURL();
      setState(() {
        imageLink = img;
      });
    });
  }

  optionsDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      barrierDismissible: true,
      // transitionBuilder: _buildNewTransition,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: width > 415
                      ? MediaQuery.of(context).size.width * 1.63
                      : width < 376
                          ? MediaQuery.of(context).size.width * 1.23
                          : MediaQuery.of(context).size.width * 1.53,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        unMatchDialog(width);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Unmatch with Sana",
                            style: utils.smallHeadingTextStyle(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        reportDialog(width);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Report Sana",
                            style:
                                utils.smallHeadingTextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: utils.smallHeadingTextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  reportDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.40,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: width > 400 ? 580 : 550,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width > 400 ? 20 : 20,
                              right: width > 400 ? 10 : 10),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Report Sana",
                                style: utils.xMediumHeadingTextStyle(
                                    color: Colors.red),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "We won't tell them",
                                style: utils.mediumTitleTextStyle(),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fake profile or spam",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 1 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate messages",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 2 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate photo(s)",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 3 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 3,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Inappropriate bio",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 4 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 4,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Underaged user",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 5 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 5,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 15 : 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Offline behaviour",
                                    style: TextStyle(
                                      fontSize: width > 400 ? 18 : 16,
                                      fontFamily: "ProximaNova",
                                      color:
                                          val == 6 ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  Radio(
                                    value: 6,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                        Navigator.pop(context);
                                        reportDialog(width);
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: width > 400 ? 35 : 25,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    thankYouDialog();
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Report Sana",
                                        style: utils.smallHeadingTextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  thankYouDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.72,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(0, 1),
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/heartBroken.png",
                              scale: 4,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Thank you!",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "ProximaNova",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "To ensure Mashalatte maintains a safe \nenviroment, out team will review your report \nand take action as soon as possible.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.8),
                                fontFamily: "ProximaNova",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            utils.bigButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 45.0,
                                containerColor: Colors.blue,
                                textColor: Colors.white,
                                shadowColors: Colors.white,
                                text: "Dismiss",
                                fontSize: 16,
                                borderRadius: 8.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  unMatchDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: width > 400
                      ? MediaQuery.of(context).size.width * 0.70
                      : MediaQuery.of(context).size.width * 0.63,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 90,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 50,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/redHeartBroken.png",
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    left: 50,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/background.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Are you sure you want to \nunmatch with Sana?",
                              style: utils.mediumHeadingTextStyle(),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "This cannot be undone.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontFamily: "ProximaNova",
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: utils.bigButton(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height: 55.0,
                                  containerColor: Colors.red,
                                  textColor: Colors.white,
                                  shadowColors: Colors.white,
                                  text: "Unmatch with Sana",
                                  fontSize: 16,
                                  borderRadius: 7.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Nevermind",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                                fontFamily: "ProximaNova",
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  notAcceptingCallsDialog(width) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.52,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 315,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(0.3),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/noVideo.png",
                                          scale: 4,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/background.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Sana is not accepting video calls\nyet!",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Get to know people a little bit better before\nrequesting video calls.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: utils.bigButton(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 55.0,
                                    containerColor: Colors.blue,
                                    textColor: Colors.white,
                                    shadowColors: Colors.white,
                                    text: "Sounds Good",
                                    fontSize: 16,
                                    borderRadius: 7.0),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  wantsVideoCallDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.52,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(0.3),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/videoIcon.png",
                                          scale: 4,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/background.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Do you want to send a video\nchat request to Sana?",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Once she accepts it, you two can start video \nchatting.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: utils.bigButton(
                                    onTap: () {
                                      Navigator.pop(context);
                                      incomingVideoCallDialog();
                                    },
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 55.0,
                                    containerColor: Colors.blue,
                                    textColor: Colors.white,
                                    shadowColors: Colors.white,
                                    text: "Send Video Chat Request",
                                    fontSize: 16,
                                    borderRadius: 7.0),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Not now",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  incomingVideoCallDialog() {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 20),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.white60.withOpacity(0.3),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.66,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/videoIcon.png",
                                          scale: 4,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      left: 50,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/background.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Incoming video chat from Omer",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: utils.bigButton(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                          context, videoCallingScreenRoute);
                                    },
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 55.0,
                                    containerColor: Colors.blue,
                                    textColor: Colors.white,
                                    shadowColors: Colors.white,
                                    text: "Start Video Chat",
                                    fontSize: 16,
                                    borderRadius: 7.0),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: utils.bigButton(
                                    onTap: () {
                                      Navigator.pop(context);
                                      notAcceptingCallsDialog(
                                          MediaQuery.of(context).size.width);
                                    },
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 55.0,
                                    containerColor: Colors.red,
                                    textColor: Colors.white,
                                    shadowColors: Colors.white,
                                    text: "Decline",
                                    fontSize: 16,
                                    borderRadius: 7.0),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: double.infinity,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
