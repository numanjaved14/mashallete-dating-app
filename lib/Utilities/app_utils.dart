import 'package:dotted_border/dotted_border.dart';
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
        margin: EdgeInsets.symmetric(horizontal: 10),
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
}
