import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';
import 'package:wallet_sha/ui/pages/home_page.dart';
import 'package:wallet_sha/ui/pages/onboarding.dart';
import 'package:wallet_sha/ui/pages/sign_in_page.dart';
import 'package:wallet_sha/ui/pages/sign_up_page.dart';
import 'package:wallet_sha/ui/pages/sign_up_set_ktp_page.dart';
import 'package:wallet_sha/ui/pages/sign_up_success_page.dart';
import 'package:wallet_sha/ui/pages/sing_up_set_profile.dart';
import 'package:wallet_sha/ui/pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignupSuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreenPage(),
//     );
//   }
// }
