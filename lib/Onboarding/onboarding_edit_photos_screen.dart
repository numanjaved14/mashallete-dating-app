import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Constants/app_constants.dart';
import '../Utilities/app_utils.dart';

class EditPhotosScreen extends StatefulWidget {
  const EditPhotosScreen({Key? key}) : super(key: key);

  @override
  State<EditPhotosScreen> createState() => _EditPhotosScreenState();
}

class _EditPhotosScreenState extends State<EditPhotosScreen> {
  var phoneNumberController = TextEditingController();
  var utils = AppUtils();
  final picker = ImagePicker();
  XFile? _image;
  List<bool> enabled = [false, false, false, false, false, false];

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
                    width: MediaQuery.of(context).size.width * 0.687,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: linearGradientBlue,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.0625,
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
              Text(
                "Edit photos",
                style: utils.largeHeadingTextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            // image: _image != null ? MemoryImage(_image!) : Container(),
                            image: AssetImage(
                              "assets/background.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(width: 400, height: 1, color: Colors.white),
                          Container(width: 400, height: 1, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 400, width: 1, color: Colors.white),
                          Container(height: 400, width: 1, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width > 415
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.height * 0.15,
              ),
              utils.gradientBigButton(
                width: double.infinity,
                shadowColors: Colors.white,
                textColor: Colors.white,
                borderRadius: 10.0,
                height: 50.0,
                text: "Done",
                fontWeight: FontWeight.w900,
                onTap: () {
                  Navigator.pop(context);
                },
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
    final pickedFile = await pickImage(ImageSource.gallery);
    setState(() {
      _image = pickedFile!;
    });
    // if (pickedFile!.path == null) retrieveLostData();
  }

  pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);
    if (_file != null) {
      return await _file.readAsBytes();
    }
    print('No Image Selected');
  }

  // Future<void> retrieveLostData() async {
  //   final LostDataResponse response = await picker.retrieveLostData();
  //   if (response.isEmpty) {
  //     return;
  //   }
  //   if (response.file != null) {
  //     setState(() {
  //       _image.add(File(response.file!.path));
  //     });
  //   } else {
  //     print(response.file);
  //   }
  // }
}
