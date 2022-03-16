import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/forgot_password_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/register_page.dart';
import 'package:adira_cats/ui/pages/register_second_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/sk_done_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/vertification_done_page.dart';
import 'package:adira_cats/ui/pages/trial_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// NOTE: DONE
      // home: SplashPage(),
      // home: LoginPage(),
      // home: TrialPage(),
      // home: OtpPage(),
      // home: SplashPage(),
      // home: SuccessPage(),
      // home: ForgotPasswordPage(),
      // home: LoginPage(),
      // home: RegisterSecondPage(),
      // home: VertifivationDonePage(),
      // home: SkDonePage(),
      // home: ForgotPasswordPage(),

      /// NOTE: ON PROGRESS
      // home: TrialPage(),
      // home: ProfilePage(),
      // home: OtpPage(),
      home: RegisterPage(),
    );
  }
}
