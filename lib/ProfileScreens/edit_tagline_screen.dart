import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';

class EditTaglineScreen extends StatefulWidget {
  const EditTaglineScreen({Key? key}) : super(key: key);

  @override
  State<EditTaglineScreen> createState() => _EditTaglineScreenState();
}

class _EditTaglineScreenState extends State<EditTaglineScreen> {
  var utils = AppUtils();
  TextEditingController _taglineController = TextEditingController();

  @override
  void dispose() {
    _taglineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Tagline",
                    style: utils.mediumHeadingTextStyle(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    addData();
                  },
                  child: Text(
                    "Done",
                    style: utils.smallHeadingTextStyle(color: blueColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _taglineController,
              maxLines: 20,
              decoration: const InputDecoration(
                hintText: "Write a sentence that best describes yourself...",
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addData() async {
    String res = await Database().updateData(
      key: 'tagline',
      value: _taglineController.text,
    );
    if (res == 'success') {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
