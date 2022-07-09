import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class PremiumAccessScreen extends StatefulWidget {
  const PremiumAccessScreen({Key? key}) : super(key: key);

  @override
  State<PremiumAccessScreen> createState() => _PremiumAccessScreenState();
}

class _PremiumAccessScreenState extends State<PremiumAccessScreen> {
  var selected1 = false;
  var selected2 = false;
  var selected3 = false;
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Image.asset(
              "assets/crown.png",
              scale: 2.5,
            ),
            const Text(
              "UNLIMITED ACCESS",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: blueColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Unlock all premium content \nand pro features",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            utils.premiumButton(
              price: "\$3.99",
              duration: "1 month",
              save: false,
              offPrice: "",
              onTap: () {
                selected1 = true;
                selected2 = false;
                selected3 = false;
                setState(() {});
              },
              selected: selected1,
            ),
            const SizedBox(
              height: 15,
            ),
            utils.premiumButton(
              price: "\$39.99",
              duration: "1 year",
              save: true,
              offPrice: "Save 15%!!",
              onTap: () {
                selected1 = false;
                selected2 = true;
                selected3 = false;
                setState(() {});
              },
              selected: selected2,
            ),
            const SizedBox(
              height: 15,
            ),
            utils.premiumButton(
              price: "\$59.99",
              duration: "1 time purchase",
              save: false,
              offPrice: "",
              onTap: () {
                selected1 = false;
                selected2 = false;
                selected3 = true;
                setState(() {});
              },
              selected: selected3,
            ),
          ],
        ),
      ),
    );
  }
}
