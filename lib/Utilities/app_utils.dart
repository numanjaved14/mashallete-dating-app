import 'package:audio_wave/audio_wave.dart';
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
    );
  }

  mediumTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 17,
      color: color,
    );
  }

  mediumTitleBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  smallTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
    );
  }

  smallTitleBoldTextStyle({color}) {
    return TextStyle(fontSize: 15, color: color, fontWeight: FontWeight.bold);
  }

  extraSmallTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 12,
      color: color,
    );
  }

  smallBoldTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  extraLargeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  largeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  largeTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  smallHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  extraSmallHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  mediumHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
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
                fontWeight: fontWeight ?? FontWeight.bold),
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
                  fontWeight: fontWeight ?? FontWeight.bold),
            ),
            const SizedBox(
              width: 2,
            ),
            Image.asset(
              image,
              scale: 30,
            ),
          ],
        ),
      ),
    );
  }

  textField({controller, hintText, width, fontSize}) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 5, left: 15),
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey, fontSize: fontSize),
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

  textFieldDOB({controller, hintText, width, fontSize}) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey, fontSize: fontSize),
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

  final focusedPinTheme = PinTheme(
    width: 78,
    height: 78,
    textStyle: const TextStyle(
        fontSize: 38,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w900),
    decoration: BoxDecoration(
      border: Border.all(color: blueColor),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final defaultPinTheme = PinTheme(
    width: 78,
    height: 78,
    textStyle: const TextStyle(
        fontSize: 38,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
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
            border: Border.all(color: blueColor.withOpacity(.5), width: 1.5)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              style: extraSmallTitleTextStyle(
                  color: selected == true ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  addPhotosWidget({onTap, enabled}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                        child: const Icon(
                          Icons.photo,
                          color: Colors.grey,
                          size: 20,
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
      ),
    );
  }

  generalRow({iconContainerColor, image, text, context, onTap, scale}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
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
            Text(
              text,
              style: smallHeadingTextStyle(color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
              size: 20,
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

  privacyWidget({text1, text2, value, onChanged}) {
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
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(
                  fontSize: 16,
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

  newChatWidget({image, senderName, lastMessage, time, onTap}) {
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
                  Text(
                    lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: smallHeadingTextStyle(color: blueColor),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.timer_sharp,
                  color: blueColor,
                  size: 19,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  time,
                  style: smallHeadingTextStyle(color: blueColor),
                ),
              ],
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
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: blueColor.withOpacity(0.05),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
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
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
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

  audioMessage({context, time}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.all(15),
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

  gifContainer({image}) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }
}
