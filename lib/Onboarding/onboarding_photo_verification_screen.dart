import 'package:flutter/material.dart';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as Path;

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class OnBoardingPhotoVerificationScreen extends StatefulWidget {
  const OnBoardingPhotoVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingPhotoVerificationScreen> createState() =>
      _OnBoardingPhotoVerificationScreenState();
}

class _OnBoardingPhotoVerificationScreenState
    extends State<OnBoardingPhotoVerificationScreen> {
  var phoneNumberController = TextEditingController();
  var utils = AppUtils();
  bool enabled = false;

  bool uploading = false;
  double val = 0;
  CollectionReference? imgRef;
  firebase_storage.Reference? ref;

  File? _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: linearGradientBlue),
                  ),
                  Container(
                    width: 0,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "Let's make sure you're real with a selfie!",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  fontFamily: "ProximaNova",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () => chooseImage(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        image: _image != null
                            ? DecorationImage(
                                image: FileImage(_image!),
                                fit: BoxFit.cover,
                              )
                            : const DecorationImage(
                                image: AssetImage(
                                  "assets/background.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                        borderRadius: BorderRadius.circular(20.0)),
                    width: width > 414
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _image != null
                    ? () {
                        uploadFile().whenComplete(() => Navigator.pushNamed(
                            context, onBoardingThankYouScreenRoute));
                      }
                    : () {},
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  chooseImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile!.path);
    });
    if (pickedFile!.path == null) retrieveLostData();
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _image = File(response.file!.path);
      });
    } else {
      print(response.file);
    }
  }

  Future uploadFile() async {
    ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('profileImages/${Path.basename(_image!.path)}');

    await ref!.putFile(_image!).whenComplete(() async {
      await ref!.getDownloadURL().then((value) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .update({'profilePhotoURL': value});
      });
    });
  }

  @override
  void initState() {
    super.initState();
    imgRef = FirebaseFirestore.instance.collection('imageURLs');
  }
}
