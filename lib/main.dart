import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/forgot_password_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/sk_done_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/verification_done_page.dart';
import 'package:adira_cats/ui/pages/testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,

        /// NOTE: DONE
        // home: SplashPage(),
        // home: VerificationDonePage(),
        // home: SkDonePage(),
        // home: ForgotPasswordPage(),
        // home: OtpPage(),

        /// NOTE: ON PROGRESS
        home: LoginPage(),
        // home: ProfilePage(),
        // home: TestingPage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}
