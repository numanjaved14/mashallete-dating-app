import 'package:dating_app/Authentication/login_with_otp_screen.dart';
import 'package:dating_app/Authentication/login_with_phone_number_screen.dart';
import 'package:dating_app/CallingScreens/video_calling_screen.dart';
import 'package:dating_app/HomeScreens/bottom_navigation_bar_screen.dart';
import 'package:dating_app/Onboarding/onboarding_add_photos_screen.dart';
import 'package:dating_app/Onboarding/onboarding_dob_screen.dart';
import 'package:dating_app/Onboarding/onboarding_interests_screen.dart';
import 'package:dating_app/Onboarding/onboarding_location_screen.dart';
import 'package:dating_app/Onboarding/onboarding_looking_for_h_w_screen.dart';
import 'package:dating_app/Onboarding/onboarding_looking_good_screen.dart';
import 'package:dating_app/Onboarding/onboarding_notifications_screen.dart';
import 'package:dating_app/Onboarding/onboarding_religious_screen.dart';
import 'package:dating_app/ProfileScreens/edit_interests_screen.dart';
import 'package:dating_app/ProfileScreens/edit_tagline_screen.dart';
import 'package:dating_app/ProfileScreens/preferences_screen.dart';
import 'package:dating_app/ProfileScreens/privacy_screen.dart';
import 'package:dating_app/ProfileScreens/profile_edit_tab_bar_screen.dart';
import 'package:dating_app/ProfileScreens/profile_screen.dart';
import 'package:dating_app/ProfileScreens/prompt_answer_screen.dart';
import 'package:dating_app/ProfileScreens/prompt_questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'Authentication/landing_page.dart';
import 'Authentication/splash_screen.dart';
import 'ChatScreens/chat_box_screen.dart';
import 'ChatScreens/likes_screen.dart';
import 'Constants/app_constants.dart';
import 'GroundRules/ground_rule_one_screen.dart';
import 'HomeScreens/home_screen.dart';
import 'HomeScreens/liked_profile_screen.dart';
import 'HomeScreens/view_profile_screen.dart';
import 'Onboarding/onboarding_edit_photos_screen.dart';
import 'Onboarding/onboarding_ethnicity_screen.dart';
import 'Onboarding/onboarding_men_women_screen.dart';
import 'Onboarding/onboarding_name_screen.dart';
import 'Onboarding/onboarding_phone_screen.dart';
import 'Onboarding/onboarding_phone_verification_screen.dart';
import 'Onboarding/onboarding_photo_verification_screen.dart';
import 'Onboarding/onboarding_thank_you_screen.dart';
import 'Onboarding/onboarding_welcome_screen.dart';
import 'ProfileScreens/about_me_edit_screen.dart';
import 'ProfileScreens/alcohol_screen.dart';
import 'ProfileScreens/delete_account_screen.dart';
import 'ProfileScreens/education_screen.dart';
import 'ProfileScreens/have_children_screen.dart';
import 'ProfileScreens/height_screen.dart';
import 'ProfileScreens/help_and_support_screen.dart';
import 'ProfileScreens/languages_screen.dart';
import 'ProfileScreens/married_screen.dart';
import 'ProfileScreens/premium_access_screen.dart';
import 'ProfileScreens/profession_screen.dart';
import 'ProfileScreens/sect_screen.dart';
import 'ProfileScreens/smoking_screen.dart';
import 'ProfileScreens/want_kids_screen.dart';
import 'ProfileScreens/willing_to_relocate_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MashaLatte',
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case helpAndSupportScreenRoute:
            return PageTransition(
                child: const HelpAndSupportScreen(),
                type: PageTransitionType.bottomToTop);
          case premiumAccessScreenRoute:
            return PageTransition(
                child: const PremiumAccessScreen(),
                type: PageTransitionType.bottomToTop);
          case deleteAccountScreenRoute:
            return PageTransition(
              child: const DeleteAccountScreen(),
              type: PageTransitionType.bottomToTop,
            );
          default:
            return null;
        }
      },
      routes: {
        splashRoute: (context) => const SplashScreen(),
        likedProfilesScreenRoute: (context) => const LikedProfilesScreen(),
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
        sectScreenRoute: (context) => const SectScreen(),
        aboutMeEditScreenRoute: (context) => const AboutMeEditScreen(),
        heightScreenRoute: (context) => const HeightScreen(),
        likesScreenRoute: (context) => const LikesScreen(),
        haveChildrenScreenRoute: (context) => const HaveChildrenScreen(),
        editPhotosScreenRoute: (context) => const EditPhotosScreen(),
        editTaglineScreenRoute: (context) => const EditTaglineScreen(),
        promptQuestionScreenRoute: (context) => const PromptQuestionScreen(),
        promptAnswerScreenRoute: (context) => const PromptAnswerScreen(),
        professionScreenRoute: (context) => const ProfessionScreen(),
        editInterestScreenRoute: (context) => const EditInterestScreen(),
        wantKidsScreenRoute: (context) => const WantKidsScreen(),
        educationScreenRoute: (context) => const EducationScreen(),
        smokingScreenRoute: (context) => const SmokingScreen(),
        alcoholScreenRoute: (context) => const AlcoholScreen(),
        marriedScreenRoute: (context) => const MarriedScreen(),
        willingToRelocateScreenRoute: (context) =>
            const WillingToRelocateScreen(),
        onBoardingMenWomenScreenRoute: (context) =>
            const OnBoardingMenWomenScreen(),
        videoCallingScreenRoute: (context) => const VideoCallingScreen(),
        preferencesScreenRoute: (context) => const PreferencesScreen(),
        chatBoxScreenRoute: (context) => const ChatBoxScreen(),
        privacyScreenRoute: (context) => const PrivacyScreen(),
        profileViewScreenRoute: (context) => const ViewProfileScreen(),
        languagesScreenRoute: (context) => const LanguagesScreen(),
        editProfileTabBarScreenRoute: (context) =>
            const ProfileEditTabBarScreen(),
        bottomNavigationBarScreenRoute: (context) =>
            const BottomNavigationBarScreen(),
        homeScreenRoute: (context) => const HomeScreen(),
        profileScreenRoute: (context) => const ProfileScreen(),
        loginWithPhoneNumberScreenRoute: (context) =>
            const LoginWithPhoneNumberScreen(),
        loginWithOtpScreenRoute: (context) => const LoginWithOtpScreen(),
      },
    );
  }
}
