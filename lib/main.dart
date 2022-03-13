<<<<<<< HEAD
import 'package:adira_cats/ui/pages/otp_page.dart';
=======
import 'package:adira_cats/ui/pages/login_page.dart';
>>>>>>> 27aabbba3382e698ff02cac62183477f92747a9a
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/success_page.dart';
import 'package:adira_cats/ui/pages/trial_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: OtpPage(),
=======
      // home: SplashPage(),
      home: SuccessPage(),
      // home: LoginPage(),
      // home: TrialPage(),
>>>>>>> 27aabbba3382e698ff02cac62183477f92747a9a
    );
  }
}
