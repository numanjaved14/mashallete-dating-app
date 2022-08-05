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
