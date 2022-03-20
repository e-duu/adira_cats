import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/create_st_page.dart';
import 'package:adira_cats/ui/pages/handover_sk_detail_page.dart';
import 'package:adira_cats/ui/pages/handover_sk_confirmed_page.dart';
import 'package:adira_cats/ui/pages/handover_sk_page.dart';
import 'package:adira_cats/ui/pages/handover_sk_search_nil_page.dart';
import 'package:adira_cats/ui/pages/handover_sk_search_page.dart';
import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/main_page.dart';
import 'package:adira_cats/ui/pages/message_page.dart';
import 'package:adira_cats/ui/pages/message_room_page.dart';
import 'package:adira_cats/ui/pages/notification_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/forgot_password_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/register_fourth_page.dart';
import 'package:adira_cats/ui/pages/register_page.dart';
import 'package:adira_cats/ui/pages/register_second_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/register_third_page.dart';
import 'package:adira_cats/ui/pages/report_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_result_page.dart';
import 'package:adira_cats/ui/pages/report_detail_pull_fee_page.dart';
import 'package:adira_cats/ui/pages/report_detail_visit_page.dart';
import 'package:adira_cats/ui/pages/report_page.dart';
import 'package:adira_cats/ui/pages/reset_password_page.dart';
import 'package:adira_cats/ui/pages/sk_done_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/verification_done_page.dart';
import 'package:adira_cats/ui/pages/testing.dart';
import 'package:adira_cats/ui/widgets/custom_bar_chart.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            '/login': (context) => LoginPage(),
            '/main': (context) => MainPage(),
          },

          /// NOTE: INTEGRATION
          // home: SplashPage(),
          // home: LoginPage(),
          // home: ForgotPasswordPage(),
          // home: ResetPasswordPage(),

          /// NOTE : DONE
          // home: OtpPage(),
          // home: ProfilePage(),
          // home: RegisterPage(),
          // home: CreateStPage(),
          // home: HandoverSkPage(),
          // home: ReportDetailPage(),
          // home: NotificationPage(),
          // home: RegisterThirdPage(),
          // home: RegisterFourthPage(),
          // home: RegisterSecondPage(),
          // home: HandoverSkSearchPage(),
          // home: HandoverSkDetailPage(),
          // home: HandoverSkSearchNilPage(),
          // home: HandoverSkConfirmedPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportPage(),
          // home: ReportDetailPage(),

          /// NOTE: ON PROGRESS
          // home: TestingPage(),
          // home: MessageRoomPage(),
          // home: ReportDetailProdexNihilPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportDetailProdexResultDetailPage(),
          // home: ReportDetailProdexResultPage(),
          // home: ReportDetailVisitPage(),
          // home: ReportDetailPullFeePage(),
        ),
      ),
    );
  }
}
