import 'package:flutter/material.dart';

///colors
const blueColor = Color(0xff3776FF);
const orangeColor = Color(0xffF0AD2B);
const purpleColor = Color(0xff5264FA);
const redColor = Color(0xffFF7575);
const greenColor = Color(0xff33D230);
const lightBlueColor = Color(0xff0085FF);
const extraLightBlueColor = Color(0xffD9E5FF);
const darkGreyColor = Color(0xff313131);
const greyColor = Color(0xffA6A6A6);
const callButtonBackgroundColor = Color(0xffDDDDDD);

///gradients
var linearGradientBlue = const LinearGradient(colors: [
  Color(0xff6B7BFA),
  Color(0xff3776FF),
]);

var linearGradientGrey = LinearGradient(
  colors: [
    const Color(0xff313131),
    const Color(0xff313131).withOpacity(0.8),
    const Color(0xff313131),
  ],
  begin: Alignment.center,
);

///routes for screens
const splashRoute = "/";
const landingScreenRoute = "/landingScreenRoute";
const videoCallingScreenRoute = "/videoCallingScreenRoute";
const onBoardingPhoneScreenRoute = "/onBoardingFirstMainScreenRoute";
const onBoardingNameScreenRoute = "/onBoardingNameScreenRoute";
const onBoardingDateOfBirthScreenRoute = "/onBoardingDateOfBirthScreenRoute";
const deleteAccountScreenRoute = "/deleteAccountScreenRoute";
const onBoardingEthnicityScreenRoute = "/onBoardingEthnicityScreenRoute";
const onBoardingReligiousScreenRoute = "/onBoardingReligiousScreenRoute";
const loginWithPhoneNumberScreenRoute = "/loginWithPhoneNumberScreenRoute";
const loginWithOtpScreenRoute = "/loginWithOtpScreenRoute";
const onBoardingThankYouScreenRoute = "/onBoardingThankYouScreenRoute";
const premiumAccessScreenRoute = "/premiumAccessScreenRoute";
const groundRuleOneScreenRoute = "/groundRuleOneScreenRoute";
const groundRuleTwoScreenRoute = "/groundRuleTwoScreenRoute";
const profileScreenRoute = "/profileScreenRoute";
const editTaglineScreenRoute = "/editTaglineScreenRoute";
const promptQuestionScreenRoute = "/promptQuestionScreenRoute";
const promptAnswerScreenRoute = "/promptAnswerScreenRoute";
const editInterestScreenRoute = "/editInterestScreenRoute";
const aboutMeEditScreenRoute = "/aboutMeScreenRoute";
// const groundRuleThreeScreenRoute = "/groundRuleThreeScreenRoute";
const onBoardingLookingGoodScreenRoute = "/onBoardingLookingGoodScreenRoute";
const preferencesScreenRoute = "/preferencesScreenRoute";
const privacyScreenRoute = "/privacyScreenRoute";
const chatBoxScreenRoute = "/chatBoxScreenRoute";
const editProfileTabBarScreenRoute = "/editProfileTabBarScreenRoute";
const helpAndSupportScreenRoute = "/helpAndSupportScreenRoute";
const profileViewScreenRoute = "/profileViewScreenRoute";
const onBoardingInterestsScreenRoute = "/onBoardingInterestsScreenRoute";
const onBoardingLocationScreenRoute = "/onBoardingLocationScreenRoute";
const welcomeNameScreenRoute = "/welcomeNameScreenRoute";
const onBoardingLookingForScreenRoute = "/onBoardingLookingForScreenRoute";
const onBoardingNotificationsScreenRoute =
    "/onBoardingNotificationsScreenRoute";
const onBoardingPhoneVerificationScreenRoute =
    "/onBoardingPhoneVerificationScreenRoute";
const onBoardingAddPhotosScreenRoute = "/onBoardingAddPhotosScreenRoute";
const onBoardingPhotoVerificationScreenRoute =
    "/onBoardingPhotoVerificationScreenRoute";
const bottomNavigationBarScreenRoute = "/bottomNavigationBarScreenRoute";
const homeScreenRoute = "/homeScreenRoute";
