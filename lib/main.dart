import 'package:flutter/material.dart';
import 'package:mashalatte/Onboarding/onboarding_first_screen/onboarding_first_main_screen.dart';
import 'Authentication/landing_page.dart';
import 'Authentication/splash_screen.dart';
import 'Constants/app_constants.dart';

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
        landingScreenRoute: (context) => const LandingScreen(),
        onBoardingFirstMainScreenRoute: (context) =>
            const OnBoardingFirstMainScreen(),
      },
    );
  }
}
