import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';
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

  // Crop Image
  final cropKey = GlobalKey<CropState>();
  File? _file;
  File? _sample;
  File? _lastCropped;

  @override
  void dispose() {
    super.dispose();
    _file?.delete();
    _sample?.delete();
    _lastCropped?.delete();
  }

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
              InkWell(
                onTap: () => _openImage(),
                child: SizedBox(
                  width: 400,
                  height: 400,
                  child: _sample != null
                      ? Crop.file(_sample!, key: cropKey)
                      : Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: 400,
                                      height: 1,
                                      color: Colors.white),
                                  Container(
                                      width: 400,
                                      height: 1,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              height: 400,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 400,
                                      width: 1,
                                      color: Colors.white),
                                  Container(
                                      height: 400,
                                      width: 1,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                  Navigator.pop(context, _sample);
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

  Future<void> _openImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    final file = File(pickedFile!.path);
    final sample = await ImageCrop.sampleImage(
      file: file,
      preferredSize: context.size!.longestSide.ceil(),
    );

    _sample?.delete();
    _file?.delete();

    setState(() {
      _sample = sample;
      _file = file;
    });
  }

  Future<void> _cropImage() async {
    final scale = cropKey.currentState!.scale;
    final area = cropKey.currentState!.area;
    if (area == null) {
      // cannot crop, widget is not setup
      return;
    }

    // scale up to use maximum possible number of pixels
    // this will sample image in higher resolution to make cropped image larger
    final sample = await ImageCrop.sampleImage(
      file: _file!,
      preferredSize: (2000 / scale).round(),
    );

    final file = await ImageCrop.cropImage(
      file: sample,
      area: area,
    );

    sample.delete();

    _lastCropped?.delete();
    _lastCropped = file;

    debugPrint('$file');
  }
}
