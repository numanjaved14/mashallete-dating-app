import 'package:dating_app/Constants/app_constants.dart';
import 'package:dating_app/Utilities/app_utils.dart';
import 'package:flutter/material.dart';

class PremiumAccessScreen extends StatefulWidget {
  const PremiumAccessScreen({Key? key}) : super(key: key);

  @override
  State<PremiumAccessScreen> createState() => _PremiumAccessScreenState();
}

class _PremiumAccessScreenState extends State<PremiumAccessScreen> {
  var selected = 0;
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Text(
                    "Mashalatte Premium",
                    style: utils.smallHeadingTextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Image.asset(
              "assets/appIcon.png",
              scale: 4,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Feature 1",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "ProximaNova",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Mashalatte users that have premium end up \ngoing on 30% more matches!",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "ProximaNova",
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = 1;
                      setState(() {});
                    },
                    child: Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white.withOpacity(0.1),
                        border: Border.all(
                          color:
                              selected == 1 ? Colors.white : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              fontFamily: "ProximaNova",
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Week",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$8.99",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$8.99/week",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 240,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            selected = 2;
                            setState(() {});
                          },
                          child: Container(
                            width: 120,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              color: Colors.white.withOpacity(0.1),
                              border: Border.all(
                                color: selected == 2
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "ProximaNova",
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Month",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$38",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.7),
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor:
                                          Colors.white.withOpacity(0.7),
                                      decorationThickness: 4.0),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "\$24.99",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$24.99/month",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Center(
                              child: Text(
                                "POPULAR",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: purpleColor,
                                  fontFamily: "ProximaNova",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = 3;
                      setState(() {});
                    },
                    child: Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white.withOpacity(0.1),
                        border: Border.all(
                          color:
                              selected == 3 ? Colors.white : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              fontFamily: "ProximaNova",
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Month",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$115",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.7),
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white.withOpacity(0.7),
                                decorationThickness: 4.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$49.99",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$24.99/month",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = 4;
                      setState(() {});
                    },
                    child: Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white.withOpacity(0.1),
                        border: Border.all(
                          color:
                              selected == 4 ? Colors.white : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "6",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              fontFamily: "ProximaNova",
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Month",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$231",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.7),
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white.withOpacity(0.7),
                                decorationThickness: 4.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$79.99",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$24.99/month",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 240,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            selected = 5;
                            setState(() {});
                          },
                          child: Container(
                            width: 120,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              color: Colors.white.withOpacity(0.1),
                              border: Border.all(
                                color: selected == 5
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "∞",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "ProximaNova",
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Lifetime",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "\$149.99",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "that's it!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Center(
                              child: Text(
                                "BEST VALUE",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: purpleColor,
                                  fontFamily: "ProximaNova",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Recurring billing. Cancel anytime.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.6),
                fontFamily: "ProximaNova",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms and Conditions",
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    color: Colors.white.withOpacity(0.6),
                    decorationThickness: 1.5,
                    fontFamily: "ProximaNova",
                  ),
                ),
                Text(
                  " & ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.6),
                    fontFamily: "ProximaNova",
                  ),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.6),
                    decoration: TextDecoration.underline,
                    decorationThickness: 1.5,
                    fontFamily: "ProximaNova",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            utils.bigButton(
              width: MediaQuery.of(context).size.width * 0.9,
              textColor: blueColor,
              containerColor: Colors.white,
              borderRadius: 10.0,
              height: 50.0,
              text: "Continue",
              fontWeight: FontWeight.w900,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
