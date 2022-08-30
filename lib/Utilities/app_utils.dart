import 'package:audio_wave/audio_wave.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../Constants/app_constants.dart';

class AppUtils {
  titleTextStyle({color}) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontFamily: "ProximaNova",
    );
  }

  mediumTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 17,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  xMediumTitleTextStyle({color, height}) {
    return TextStyle(
      fontSize: 23,
      fontFamily: "ProximaNova",
      height: height,
      color: color,
    );
  }

  mediumTitleBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.bold,
    );
  }

  smallTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
      fontFamily: "ProximaNova",
    );
  }

  smallTitleBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: "ProximaNova",
    );
  }

  extraSmallTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 12,
      color: color,
      fontFamily: "ProximaNova",
    );
  }

  smallBoldTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  extraLargeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w600,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  xxLargeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w900,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  xLargeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.w900,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  largeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 26,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  largeTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 30,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  smallHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  extraSmallHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontFamily: "ProximaNova",
      color: color,
    );
  }

  mediumHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 20,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  xMediumHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 24,
      fontFamily: "ProximaNova",
      fontWeight: FontWeight.w900,
      color: color,
    );
  }

  bigButton(
      {width,
      height,
      borderColor,
      onTap,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      shadowColors,
      textColor,
      fontSize,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth == null ? 2 : borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: shadowColors ?? Colors.black.withOpacity(0.2),
              blurRadius: 4,
            )
          ],
        ),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
              fontWeight: fontWeight ?? FontWeight.bold,
              fontFamily: "ProximaNova",
            ),
          ),
        ),
      ),
    );
  }

  gradientBigButton(
      {width,
      height,
      borderColor,
      onTap,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      enabled,
      shadowColors,
      textColor,
      fontSize,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth == null ? 2 : borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          gradient: enabled == true
              ? LinearGradient(colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.grey.withOpacity(0.5),
                ])
              : const LinearGradient(colors: [
                  blueColor,
                  purpleColor,
                ]),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: shadowColors ?? Colors.black.withOpacity(0.2),
              blurRadius: 4,
            )
          ],
        ),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
              fontWeight: fontWeight ?? FontWeight.bold,
              fontFamily: "ProximaNova",
            ),
          ),
        ),
      ),
    );
  }

  bigButtonWithIcon(
      {width,
      height,
      borderColor,
      onTap,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      shadowColors,
      textColor,
      fontSize,
      imageScale,
      image,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth == null ? 2 : borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: shadowColors ?? Colors.black.withOpacity(0.2),
              blurRadius: 4,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text.toString(),
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
                fontWeight: fontWeight ?? FontWeight.bold,
                fontFamily: "ProximaNova",
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Image.asset(
              image,
              scale: imageScale ?? 30,
            ),
          ],
        ),
      ),
    );
  }

  bigButtonWithPrefixIcon(
      {width,
      height,
      borderColor,
      onTap,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      shadowColors,
      textColor,
      fontSize,
      imageScale,
      image,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth == null ? 2 : borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: shadowColors ?? Colors.black.withOpacity(0.2),
              blurRadius: 4,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              scale: imageScale ?? 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text.toString(),
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
                fontWeight: fontWeight ?? FontWeight.bold,
                fontFamily: "ProximaNova",
              ),
            ),
          ],
        ),
      ),
    );
  }

  textField({controller, hintText, width, fontSize, keyboardType, height}) {
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 5, left: 15),
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: fontSize,
              fontFamily: "ProximaNova",
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: blueColor, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }

  textFieldDOB(
      {controller,
      hintText,
      maxLength,
      width,
      fontSize,
      keyboardType,
      onChanged,
      focusNode}) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextFormField(
        maxLength: maxLength,
        focusNode: focusNode,
        onChanged: onChanged,
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            counterText: "",
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(top: 5),
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: fontSize,
              fontFamily: "ProximaNova",
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: blueColor, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }

  otpTextField(
      {controller,
      hintText,
      maxLength,
      width,
      hintSize,
      keyboardType,
      onChanged,
      fontSize,
      bottomPadding,
      alignText,
      focusNode}) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextFormField(
        maxLength: maxLength,
        focusNode: focusNode,
        showCursor: false,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize ?? 50,
          fontWeight: FontWeight.bold,
        ),
        onChanged: onChanged,
        controller: controller,
        textAlign: alignText ?? TextAlign.center,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          counterText: "",
          hintText: hintText,
          contentPadding: EdgeInsets.only(bottom: bottomPadding ?? 20),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: hintSize,
            fontFamily: "ProximaNova",
          ),
        ),
      ),
    );
  }

  line({width}) {
    return Container(
      width: width,
      height: 1,
      color: Colors.grey[300],
    );
  }

  deliveriesWidget({context, date, orderId, from, to, address, onTap}) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width * 0.82,
      height: 220,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: smallHeadingTextStyle(color: Colors.grey),
                ),
                Text(
                  "",
                  style: smallHeadingTextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 1),
                    blurRadius: 3,
                  )
                ]),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order Id:",
                      style: smallHeadingTextStyle(color: Colors.grey),
                    ),
                    Text(
                      orderId,
                      style: smallHeadingTextStyle(color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "From:",
                      style: smallHeadingTextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          from,
                          overflow: TextOverflow.ellipsis,
                          style: smallHeadingTextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To:",
                      style: smallHeadingTextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          to,
                          overflow: TextOverflow.ellipsis,
                          style: smallHeadingTextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "View Details",
                    style: smallHeadingTextStyle(color: blueColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  singleStackWidget({context, text}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 3),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/rec.png",
            scale: 40,
            color: blueColor,
          ),
          Text(
            text,
            style: smallHeadingTextStyle(color: Colors.black),
          ),
          Container(),
        ],
      ),
    );
  }

  tripleStackWidget({context, text}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 1), blurRadius: 3),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 1), blurRadius: 3),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 1), blurRadius: 3),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/rec.png",
                    scale: 40,
                    color: blueColor,
                  ),
                  Text(
                    text,
                    style: smallHeadingTextStyle(color: Colors.black),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  detailsInformationWidget({context, text}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 4,
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: "ProximaNova",
          color: Colors.black,
        ),
      ),
    );
  }

  detailsDeliveryWidget({context, from, address, phone, addressTap, phoneTap}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 145,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 4,
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "From:",
                style: smallHeadingTextStyle(color: Colors.grey),
              ),
              Text(
                from,
                style: smallHeadingTextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Address:",
                style: smallHeadingTextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: GestureDetector(
                    onTap: addressTap,
                    child: Text(
                      address,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phone:",
                style: smallHeadingTextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: GestureDetector(
                    onTap: phoneTap,
                    child: Text(
                      phone,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: "ProximaNova",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  final focusedPinTheme = const PinTheme(
    width: 78,
    height: 78,
    textStyle: TextStyle(
        fontFamily: "ProximaNova",
        fontSize: 38,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w900),
  );

  final defaultPinTheme = PinTheme(
    width: 78,
    height: 78,
    textStyle: const TextStyle(
        fontFamily: "ProximaNova",
        fontSize: 38,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: const Border.fromBorderSide(
        BorderSide(
          color: Colors.grey,
          width: 10.0,
        ),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  ethnicityWidget({icon1, text}) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1.5)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon1,
            color: Colors.grey,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: extraSmallTitleTextStyle(),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "x",
            style: smallTitleTextStyle(color: Colors.grey.withOpacity(0.7)),
          )
        ],
      ),
    );
  }

  interestsWidget({text, selected, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: selected == true ? blueColor : Colors.white,
            border: Border.all(color: blueColor.withOpacity(0.5), width: 1.5)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(
            //   "assets/like.png",
            //   scale: 35,
            // ),
            // const SizedBox(
            //   width: 5,
            // ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: selected == true ? Colors.white : blueColor,
                fontFamily: "ProximaNova",
              ),
            ),
          ],
        ),
      ),
    );
  }

  interestsHomeWidget({text, selected, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selected == true ? blueColor : blueColor.withOpacity(0.05),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/like.png",
              scale: 35,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: smallTitleTextStyle(
                  color: selected == true ? Colors.white : blueColor),
            ),
          ],
        ),
      ),
    );
  }

  addPhotosWidget({onTap, enabled, width, image}) {
    return GestureDetector(
      onTap: onTap,
      child: width > 415
          ? Container(
              width: 115,
              height: 135,
              margin: const EdgeInsets.only(right: 10, bottom: 15),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: enabled == false
                        ? DottedBorder(
                            dashPattern: const [4, 4],
                            color: Colors.black.withOpacity(0.6),
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            strokeCap: StrokeCap.round,
                            child: Container(
                              width: 105,
                              height: 123,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Image.asset(
                                "assets/addImageIcon.png",
                                scale: 5,
                              ),
                            ),
                          )
                        : Container(
                            width: 110,
                            height: 128,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/background.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                          ),
                  ),
                  enabled == true
                      ? Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(3),
                            child: const Center(
                                child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 20,
                            )),
                          ),
                        )
                      : Container(),
                ],
              ),
            )
          : Container(
              width: 105,
              height: 120,
              margin: const EdgeInsets.only(right: 5, bottom: 10),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: enabled == false
                        ? DottedBorder(
                            dashPattern: const [4, 4],
                            color: Colors.black.withOpacity(0.6),
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            strokeCap: StrokeCap.round,
                            child: Container(
                              width: 95,
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: const Icon(
                                Icons.photo,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          )
                        : Container(
                            width: 100,
                            height: 115,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/background.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                          ),
                  ),
                  enabled == true
                      ? Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(3),
                            child: const Center(
                                child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 20,
                            )),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
    );
  }

  addPhotosHomeWidget({onTap, enabled, width}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width > 400 ? 110 : 105,
        height: width > 400 ? 135 : 125,
        margin: EdgeInsets.only(
            right: width > 400 ? 10 : 3, bottom: width > 400 ? 15 : 10),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: enabled == false
                  ? DottedBorder(
                      dashPattern: const [4, 4],
                      color: Colors.black.withOpacity(0.6),
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      strokeCap: StrokeCap.round,
                      child: Container(
                        width: width > 400 ? 105 : 95,
                        height: width > 400 ? 123 : 113,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        child: const Icon(
                          Icons.photo,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    )
                  : Container(
                      width: width > 400 ? 110 : 100,
                      height: width > 400 ? 128 : 118,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/background.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                    ),
            ),
            enabled == true
                ? Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 1,
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(3),
                      child: const Center(
                          child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20,
                      )),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  generalRow(
      {iconContainerColor,
      image,
      text,
      context,
      onTap,
      scale,
      premium,
      text2}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 50,
        child: Row(
          crossAxisAlignment: premium == true
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              image,
              scale: scale,
            ),
            const SizedBox(
              width: 20,
            ),
            premium == false
                ? Text(
                    text,
                    style: mediumTitleTextStyle(color: Colors.black),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: mediumTitleTextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        text2,
                        style: mediumTitleTextStyle(color: Colors.red),
                      ),
                    ],
                  ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
              size: 17,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  premiumButton({price, duration, save, offPrice, onTap, selected}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 55,
        decoration: BoxDecoration(
          color: selected == true ? blueColor : Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: selected == true ? Colors.white : Colors.grey,
                      width: 0.7,
                    ),
                    shape: BoxShape.circle,
                    color: selected == true ? Colors.white : Colors.transparent,
                  ),
                  child: Center(
                    child: selected == true
                        ? const Icon(
                            Icons.check,
                            color: blueColor,
                            size: 15,
                          )
                        : Container(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  duration,
                  style: smallHeadingTextStyle(
                      color: selected == true ? Colors.white : Colors.black),
                )
              ],
            ),
            Row(
              children: [
                save == true
                    ? Text(
                        offPrice,
                        style: smallHeadingTextStyle(
                            color:
                                selected == true ? Colors.white : Colors.green),
                      )
                    : Container(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  price,
                  style: smallHeadingTextStyle(
                      color: selected == true ? Colors.white : Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  preferencesWidget({text, text2}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: smallHeadingTextStyle(),
          ),
          Row(
            children: [
              Text(
                text2,
                style:
                    smallTitleTextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }

  privacyWidget({text1, text2, value, onChanged, width}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text1,
                style: TextStyle(
                  fontSize: width > 400 ? 18 : 16,
                  fontFamily: "ProximaNova",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: width > 400 ? 15 : 13,
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: blueColor,
          ),
        ],
      ),
    );
  }

  newChatWidget(
      {image,
      senderName,
      lastMessage,
      time,
      onTap,
      color,
      textColor,
      messageTextColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    senderName,
                    style: mediumHeadingTextStyle(color: Colors.black),
                  ),
                  Text(
                    lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: mediumTitleTextStyle(color: messageTextColor),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/hourGlass.png",
                    scale: 4,
                    color: textColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: extraSmallTitleTextStyle(color: textColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }

  oldChatWidget({image, senderName, lastMessage, time, sent, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    senderName,
                    style: mediumHeadingTextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      sent == true
                          ? const Icon(
                              CupertinoIcons.arrow_turn_up_left,
                              size: 15,
                            )
                          : Container(),
                      SizedBox(
                        width: sent == true ? 5 : 0,
                      ),
                      Text(
                        lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: smallTitleTextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sent == true
                ? Container()
                : Row(
                    children: [
                      const Icon(
                        Icons.timer_sharp,
                        color: Colors.grey,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: smallTitleTextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  otherPersonChatContainer({context, messageText}) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/boy.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: blueColor.withOpacity(0.05),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Text(
                messageText,
                style: mediumTitleTextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  myChatContainer({context, messageText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 15,
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          width: MediaQuery.of(context).size.width * 0.7,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          child: Text(
            messageText,
            style: mediumTitleTextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  audioMessageSent({context, time}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.pause,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                AudioWave(
                  height: 22,
                  width: 88,
                  animationLoop: 1,
                  spacing: 2.5,
                  bars: [
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.4,
                    ),
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.53,
                    ),
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.43,
                    ),
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.48,
                    ),
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.79,
                    ),
                    AudioWaveBar(
                      color: Colors.white,
                      heightFactor: 0.39,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.49,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.38,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.19,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.1,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.79,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.49,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.33,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.43,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.28,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.19,
                    ),
                    AudioWaveBar(
                      color: Colors.white.withOpacity(0.5),
                      heightFactor: 0.1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            time,
            style: extraSmallTitleTextStyle(),
          ),
        ],
      ),
    );
  }

  audioMessageReceived({context, time}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/boy.png"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: blueColor.withOpacity(0.05),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: blueColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.pause,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AudioWave(
                      height: 22,
                      width: 88,
                      animationLoop: 1,
                      spacing: 2.5,
                      bars: [
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.4,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.53,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.53,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.78,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.79,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.39,
                        ),
                        AudioWaveBar(
                          color: blueColor,
                          heightFactor: 0.49,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.38,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.19,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.1,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.79,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.49,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.33,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.23,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.38,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.39,
                        ),
                        AudioWaveBar(
                          color: blueColor.withOpacity(0.5),
                          heightFactor: 0.3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                time,
                style: extraSmallTitleTextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  gifContainer({image}) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  imageBigContainer({image, top, bottom}) {
    return Container(
      width: double.infinity,
      height: 430,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  imageBigHomeContainer(
      {image, top, bottom, name, age, profession, country, flagImage}) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 450,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$name,",
                style: xxLargeHeadingTextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "$age",
                style: xLargeHeadingTextStyle(color: Colors.white),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              profession,
              style: mediumTitleTextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      flagImage,
                      scale: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      country,
                      style: mediumTitleBoldTextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  personalInfoWidget(
      {image1, text1, image2, text2, image3, text3, image4, text4}) {
    return Container(
      padding: const EdgeInsets.only(left: 13),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: blueColor.withOpacity(0.07),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image1,
                scale: 3,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text1,
                style: mediumTitleTextStyle(),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                image2,
                scale: 3,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text2,
                style: mediumTitleTextStyle(),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                image3,
                scale: 3,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text3,
                style: mediumTitleTextStyle(),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                image4,
                scale: 3,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text4,
                style: mediumTitleTextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  aboutPersonScreen({name, answer}) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffF5F6FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: mediumHeadingTextStyle(color: blueColor),
              ),
              Image.asset(
                "assets/purpleComma.png",
                scale: 4,
              ),
            ],
          ),
          Text(
            answer,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              fontFamily: "ProximaNova",
            ),
          ),
        ],
      ),
    );
  }

  promptTitleWidget({promptTitle, promptBody}) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                promptTitle,
                style: const TextStyle(
                    fontSize: 17,
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.1),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            promptBody,
            style: const TextStyle(
              fontSize: 17,
              wordSpacing: 2.0,
              fontFamily: "ProximaNova",
            ),
          ),
        ],
      ),
    );
  }

  passionsWidget({title, widget}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.1,
              fontFamily: "ProximaNova",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          widget,
        ],
      ),
    );
  }

  editProfileWidget({title, body, isColorBlue, margin, color, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: margin ?? 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: color ?? Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ProximaNova",
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  body,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "ProximaNova",
                      color: isColorBlue != null
                          ? blueColor
                          : Colors.black.withOpacity(0.7)),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 20,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  blurredImageContainer({image, name, age, width, blurred}) {
    return Container(
      width: width > 415 ? 185 : 165,
      height: width > 415 ? 260 : 240,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: const Offset(0, 1),
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: width > 415 ? 185 : 165,
                height: width > 415 ? 260 : 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    )),
              ),
              blurred == true
                  ? Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: width > 415 ? 185 : 165,
                        height: width > 415 ? 260 : 240,
                        child: BlurryContainer(
                          color: Colors.black.withOpacity(0.04),
                          blur: 10,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(15),
                          height: 230,
                          child: Container(),
                        ),
                      ),
                    )
                  : Container(),
              Positioned(
                  bottom: 15,
                  left: 10,
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: mediumHeadingTextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        age,
                        style: const TextStyle(
                            fontSize: 19,
                            fontFamily: "ProximaNova",
                            color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }

  callSmallButtons({colorOfButton, assetImage, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: colorOfButton,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          assetImage,
          scale: 3.5,
        ),
      ),
    );
  }

  preferencesRowWidget({iconContainerColor, image, text, onTap, scale, text2}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: smallHeadingTextStyle(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: smallTitleTextStyle(),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
              size: 17,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  homeWidget({image, name}) {
    return Container(
      margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: blueColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 4,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: smallTitleTextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  infoInterestWidget({image, name}) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   image,
          //   scale: 30,
          // ),
          // const SizedBox(
          //   width: 5,
          // ),
          Text(
            name,
            style: smallTitleTextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
