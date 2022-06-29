import 'package:dating_app/Onboarding/onboarding_add_photos_screen.dart';
import 'package:dating_app/Onboarding/onboarding_dob_screen.dart';
import 'package:dating_app/Onboarding/onboarding_interests_screen.dart';
import 'package:dating_app/Onboarding/onboarding_location_screen.dart';
import 'package:dating_app/Onboarding/onboarding_looking_for_h_w_screen.dart';
import 'package:dating_app/Onboarding/onboarding_looking_good_screen.dart';
import 'package:dating_app/Onboarding/onboarding_notifications_screen.dart';
import 'package:dating_app/Onboarding/onboarding_religious_screen.dart';
import 'package:flutter/material.dart';
import 'Authentication/landing_page.dart';
import 'Authentication/splash_screen.dart';
import 'Constants/app_constants.dart';
import 'GroundRules/ground_rule_one_screen.dart';
import 'GroundRules/ground_rule_three_screen.dart';
import 'GroundRules/ground_rule_two_screen.dart';
import 'Onboarding/onboarding_confirm_dob_screen.dart';
import 'Onboarding/onboarding_ethnicity_screen.dart';
import 'Onboarding/onboarding_name_screen.dart';
import 'Onboarding/onboarding_phone_screen.dart';
import 'Onboarding/onboarding_phone_verification_screen.dart';
import 'Onboarding/onboarding_photo_verification_screen.dart';
import 'Onboarding/onboarding_thank_you_screen.dart';
import 'Onboarding/onboarding_welcome_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MashaLatte',
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      routes: {
        splashRoute: (context) => const SplashScreen(),
        onBoardingInterestsScreenRoute: (context) =>
            const OnBoardingInterestsScreen(),
        landingScreenRoute: (context) => const LandingScreen(),
        onBoardingReligiousScreenRoute: (context) =>
            const OnBoardingReligiousScreen(),
        welcomeNameScreenRoute: (context) => const WelcomeNameScreen(),
        onBoardingEthnicityScreenRoute: (context) =>
            const OnBoardingEthnicityScreen(),
        onBoardingLocationScreenRoute: (context) =>
            const OnBoardingLocationScreen(),
        onBoardingLookingForScreenRoute: (context) =>
            const OnBoardingLookingForScreen(),
        confirmAgeScreenRoute: (context) => const ConfirmAgeScreen(),
        onBoardingPhoneVerificationScreenRoute: (context) =>
            const OnBoardingPhoneVerificationScreen(),
        onBoardingPhoneScreenRoute: (context) => const OnBoardingPhoneScreen(),
        onBoardingNotificationsScreenRoute: (context) =>
            const OnBoardingNotificationsScreen(),
        onBoardingDateOfBirthScreenRoute: (context) =>
            const OnBoardingDateOfBirthScreen(),
        onBoardingNameScreenRoute: (context) => const OnBoardingNameScreen(),
        onBoardingLookingGoodScreenRoute: (context) =>
            const OnBoardingLookingGoodScreen(),
        onBoardingAddPhotosScreenRoute: (context) =>
            const OnBoardingAddPhotosScreen(),
        onBoardingPhotoVerificationScreenRoute: (context) =>
            const OnBoardingPhotoVerificationScreen(),
        onBoardingThankYouScreenRoute: (context) =>
            const OnBoardingThankYouScreen(),
        groundRuleOneScreenRoute: (context) => const GroundRuleOneScreen(),
        groundRuleTwoScreenRoute: (context) => const GroundRuleTwoScreen(),
        groundRuleThreeScreenRoute: (context) => const GroundRuleThreeScreen(),
      },
    );
  }
}
