///stack widget on top bar in every screen
// Positioned(
// top: 0,
// bottom: 0,
// left: MediaQuery.of(context).size.width * 0.0,
// child: Container(
// color: Colors.white,
// padding: const EdgeInsets.all(3),
// child: Container(
// width: 50,
// height: 50,
// decoration: BoxDecoration(
// color: Colors.white,
// shape: BoxShape.circle,
// border: Border.all(
// color: blueColor,
// width: 2,
// ),
// ),
// child: Image.asset(
// "assets/telephone.png",
// scale: 1.3,
// ),
// ),
// ),
// )

// Container(
//   width: 110,
//   height: 48,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(10),
//     border: Border.all(
//         color: Colors.black.withOpacity(0.4), width: 1.5),
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         "US +1",
//         style: utils.mediumTitleTextStyle(
//           color: blueColor,
//         ),
//       ),
//       const Icon(
//         Icons.keyboard_arrow_down_outlined,
//         color: Colors.black,
//         size: 30,
//       )
//     ],
//   ),
// ),

// utils.textField(
//   controller: phoneNumberController,
//   hintText: "Phone Number",
//   keyboardType: TextInputType.number,
//   fontSize: 17.0,
//   width: MediaQuery.of(context).size.width * 0.60,
// ),

// Row(
//   children: [
//     Container(
//       width: 110,
//       height: 48,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(
//             color: Colors.black.withOpacity(0.4), width: 1.5),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "US +1",
//             style: utils.mediumTitleTextStyle(
//               color: blueColor,
//             ),
//           ),
//           const Icon(
//             Icons.keyboard_arrow_down_outlined,
//             color: Colors.black,
//             size: 30,
//           )
//         ],
//       ),
//     ),
//     const SizedBox(
//       width: 10,
//     ),
//     utils.textField(
//       controller: phoneNumberController,
//       hintText: "Phone Number",
//       fontSize: 17.0,
//       keyboardType: TextInputType.number,
//       width: MediaQuery.of(context).size.width * 0.57,
//     ),
//   ],
// ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//     GestureDetector(
//       onTap: () {
//
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: const BoxDecoration(
//           color: blueColor,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),

// Row(
//   children: [
//     utils.textField(
//         width: MediaQuery.of(context).size.width * 0.16,
//         keyboardType: TextInputType.number,
//         hintText: "MM"),
//     const SizedBox(
//       width: 10,
//     ),
//     utils.textField(
//         width: MediaQuery.of(context).size.width * 0.16,
//         keyboardType: TextInputType.number,
//         hintText: "DD"),
//     const SizedBox(
//       width: 10,
//     ),
//     utils.textField(
//         width: MediaQuery.of(context).size.width * 0.23,
//         keyboardType: TextInputType.number,
//         hintText: "YYYY"),
//   ],
// ),

// const SizedBox(
//   height: 35,
// ),
// GestureDetector(
//   onTap: () {
//     Navigator.pop(context);
//   },
//   child: Container(
//     width:
//         MediaQuery.of(context).size.width * 0.5,
//     height: 50,
//     decoration: BoxDecoration(
//       color: blueColor,
//       borderRadius: BorderRadius.circular(35),
//     ),
//     child: Center(
//       child: Text(
//         "Dismiss",
//         style: utils.smallHeadingTextStyle(
//             color: Colors.white),
//       ),
//     ),
//   ),
// ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Row(
//       children: const [
//         Text(
//           "",
//         ),
//       ],
//     ),
//     GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, welcomeNameScreenRoute);
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: const BoxDecoration(
//           color: blueColor,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//     GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(
//             context, onBoardingEthnicityScreenRoute);
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: const BoxDecoration(
//           color: blueColor,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),

//
// utils.textField(
// controller: ethnicityController,
// width: MediaQuery.of(context).size.width * 0.9,
// hintText: "Search",
// fontSize: 18.0),
// const SizedBox(
// height: 25,
// ),
// Wrap(
// alignment: WrapAlignment.start,
// children: [
// utils.ethnicityWidget(icon1: Icons.flag, text: "Ethnicity 1"),
// utils.ethnicityWidget(icon1: Icons.flag, text: "Ethnicity 2"),
// ],
// ),
// const SizedBox(
// height: 25,
// ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Row(
//       children: [
//         GestureDetector(
//           onTap: () {
//             Navigator.pushNamed(
//                 context, onBoardingInterestsScreenRoute);
//           },
//           child: const Text(
//             "Skip for now",
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//               fontFamily: "ProximaNova",
//               color: blueColor,
//             ),
//           ),
//         ),
//       ],
//     ),
//     GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(
//             context, onBoardingInterestsScreenRoute);
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: const BoxDecoration(
//           color: blueColor,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),

// Align(
//   alignment: Alignment.centerLeft,
//   child: Text(
//     "INTERESTS",
//     style: utils.extraSmallHeadingTextStyle(color: Colors.grey),
//   ),
// ),
// const SizedBox(
//   height: 10,
// ),
// Wrap(
//   alignment: WrapAlignment.center,
//   children: [
//     for (int i = 0; i < arts.length; i++)
//       utils.interestsHomeWidget(
//         text: arts[i],
//         selected: false,
//         onTap: () {},
//       ),
//   ],
// ),
// const SizedBox(
//   height: 30,
// ),

// Align(
//   alignment: Alignment.center,
//   child: utils.bigButton(
//       onTap: () {
//         Navigator.pushNamed(context, onBoardingPhoneScreenRoute);
//       },
//       width: MediaQuery.of(context).size.width * 0.7,
//       height: 55.0,
//       containerColor: blueColor,
//       textColor: Colors.white,
//       text: "Create Account",
//       fontSize: 15,
//       borderRadius: 30.0),
// ),
// const SizedBox(
//   height: 20,
// ),

// SizedBox(
//   width: MediaQuery.of(context).size.width,
//   child: Pinput(
//     focusedPinTheme: utils.focusedPinTheme,
//     defaultPinTheme: utils.defaultPinTheme,
//     length: 4,
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   ),
// ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Row(
//       children: const [
//         Icon(
//           Icons.lock,
//           color: blueColor,
//         ),
//         SizedBox(
//           width: 5,
//         ),
//         Text(
//           "We'll never share this with anyone",
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w700,
//             color: blueColor,
//           ),
//         ),
//       ],
//     ),
//     GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, loginWithOtpScreenRoute);
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: const BoxDecoration(
//           color: blueColor,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),

//
// Widget _buildNewTransition(
//   BuildContext context,
//   Animation<double> animation,
//   Animation<double> secondaryAnimation,
//   Widget child,
// ) {
//   return ScaleTransition(
//     scale: CurvedAnimation(
//       parent: animation,
//       curve: Curves.ease,
//       reverseCurve: Curves.bounceIn,
//     ),
//     child: child,
//   );
// }

// import 'package:flutter/material.dart';
//
// import '../Constants/app_constants.dart';
// import '../Utilities/app_utils.dart';
//
// class GroundRuleThreeScreen extends StatefulWidget {
//   const GroundRuleThreeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<GroundRuleThreeScreen> createState() => _GroundRuleThreeScreenState();
// }
//
// class _GroundRuleThreeScreenState extends State<GroundRuleThreeScreen> {
//   var utils = AppUtils();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.3,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 52,
//                   height: 52,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.grey.withOpacity(0.6),
//                       width: 2,
//                     ),
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       "assets/screenshot.png",
//                       scale: 3,
//                       color: Colors.grey.withOpacity(0.6),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   width: 52,
//                   height: 52,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.grey.withOpacity(0.6),
//                       width: 2,
//                     ),
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       "assets/time.png",
//                       scale: 3,
//                       color: Colors.grey.withOpacity(0.6),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   width: 70,
//                   height: 70,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: blueColor,
//                       width: 3,
//                     ),
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       "assets/warning.png",
//                       scale: 2,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             const Text(
//               "Expiring Matches",
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.w600,
//                 fontFamily: "ProximaNova",
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               "If you don't message each other for 7 days, we'll unmatch you automatically. Don't worry, we'll send you some reminders!.",
//               style: TextStyle(
//                 fontSize: 17,
//                 height: 1.5,
//                 fontFamily: "ProximaNova",
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.34,
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: utils.bigButton(
//                   onTap: () {
//                     Navigator.pushNamed(
//                         context, bottomNavigationBarScreenRoute);
//                   },
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   height: 55.0,
//                   containerColor: blueColor,
//                   textColor: Colors.white,
//                   text: "Get Started",
//                   fontSize: 15,
//                   borderRadius: 30.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final List _widgetOptions = [
//   const HomeScreen(),
//   const LikedProfilesScreen(),
//   const ChatScreen(),
// ];

// Align(
//   alignment: Alignment.bottomCenter,
//   child: Container(
//     width: double.infinity,
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     height: 100,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           width: 70,
//           height: 70,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.withOpacity(0.4),
//                   offset: const Offset(0, 1),
//                   blurRadius: 6),
//             ],
//             shape: BoxShape.circle,
//           ),
//           child: const Center(
//             child: Icon(
//               Icons.close,
//               color: Colors.grey,
//               size: 40,
//             ),
//           ),
//         ),
//         Container(
//           width: 70,
//           height: 70,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.withOpacity(0.4),
//                   offset: const Offset(0, 1),
//                   blurRadius: 6),
//             ],
//             shape: BoxShape.circle,
//           ),
//           child: Center(
//             child: Icon(
//               CupertinoIcons.heart_fill,
//               color: Colors.red.withOpacity(0.4),
//               size: 40,
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// )

// utils.bigButton(
//     width: MediaQuery.of(context).size.width * 0.9,
//     containerColor: Colors.grey[200],
//     text: "Enable Notifications",
//     fontWeight: FontWeight.w500,
//     height: 50.0,
//     shadowColors: Colors.white,
//     borderRadius: 20.0),
// const SizedBox(
//   height: 16,
// ),
// utils.bigButton(
//     width: MediaQuery.of(context).size.width * 0.9,
//     containerColor: Colors.grey[200],
//     text: "Disable Notifications",
//     shadowColors: Colors.white,
//     fontWeight: FontWeight.w500,
//     height: 50.0,
//     borderRadius: 20.0),

// utils.bigButton(
//     width: MediaQuery.of(context).size.width * 0.9,
//     containerColor: Colors.grey[200],
//     text: "Enable Notifications",
//     fontWeight: FontWeight.w500,
//     height: 50.0,
//     shadowColors: Colors.white,
//     borderRadius: 20.0),
// const SizedBox(
//   height: 16,
// ),
// utils.bigButton(
//     width: MediaQuery.of(context).size.width * 0.9,
//     containerColor: Colors.grey[200],
//     text: "Disable Notifications",
//     shadowColors: Colors.white,
//     fontWeight: FontWeight.w500,
//     height: 50.0,
//     borderRadius: 20.0),

// helpAndSupportScreenRoute: (context) => const HelpAndSupportScreen(),

// deleteAccountScreenRoute: (context) => const DeleteAccountScreen(),
// groundRuleThreeScreenRoute: (context) => const GroundRuleThreeScreen(),
