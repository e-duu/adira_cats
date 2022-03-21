import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/create_st_contract_null_page.dart';
import 'package:adira_cats/ui/pages/create_st_cotract_number_page.dart';
import 'package:adira_cats/ui/pages/create_st_page.dart';
import 'package:adira_cats/ui/pages/error_page.dart';
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
import 'package:adira_cats/ui/pages/forgot_password_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/register_fourth_page.dart';
import 'package:adira_cats/ui/pages/register_page.dart';
import 'package:adira_cats/ui/pages/register_second_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/register_third_page.dart';
import 'package:adira_cats/ui/pages/report_detail_mv_page%20.dart';
import 'package:adira_cats/ui/pages/report_detail_mv_result_page.dart';
import 'package:adira_cats/ui/pages/report_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_nihil_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_result_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_prodex_result_page.dart';
import 'package:adira_cats/ui/pages/report_detail_pull_fee_nihil_page.dart';
import 'package:adira_cats/ui/pages/report_detail_pull_fee_page.dart';
import 'package:adira_cats/ui/pages/report_detail_pull_fee_result_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_pull_fee_result_page.dart';
import 'package:adira_cats/ui/pages/report_detail_st_nihil_page.dart';
import 'package:adira_cats/ui/pages/report_detail_st_page.dart';
import 'package:adira_cats/ui/pages/report_detail_st_result_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_st_result_page.dart';
import 'package:adira_cats/ui/pages/report_detail_visit_nihil_page.dart';
import 'package:adira_cats/ui/pages/report_detail_visit_page.dart';
import 'package:adira_cats/ui/pages/report_detail_visit_result_detail_page.dart';
import 'package:adira_cats/ui/pages/report_detail_visit_result_page.dart';
import 'package:adira_cats/ui/pages/report_page.dart';
import 'package:adira_cats/ui/pages/reset_password_page.dart';
import 'package:adira_cats/ui/pages/st_done_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/verification_done_page.dart';
import 'package:adira_cats/ui/pages/testing.dart';
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
          // routes: {
          //   '/': (context) => SplashPage(),
          //   '/login': (context) => LoginPage(),
          //   '/main': (context) => MainPage(),
          // },

          // TOTALLY DONE : 44

          /// NOTE: INTEGRATION
          // home: SplashPage(),
          // home: LoginPage(),
          // home: ForgotPasswordPage(),
          // home: ResetPasswordPage(),

          /// NOTE : DONE
          // home: OtpPage(),
          // home: ProfilePage(),
          home: RegisterPage(),
          // home: RegisterSecondPage(),
          // home: RegisterThirdPage(),
          // home: RegisterFourthPage(),
          // home: CreateStPage(),
          // home: StDonePage(),
          // home: HandoverSkPage(),
          // home: ReportDetailPage(),
          // home: HandoverSkSearchPage(),
          // home: HandoverSkDetailPage(),
          // home: HandoverSkSearchNilPage(),
          // home: HandoverSkConfirmedPage(),
          // home: CreateStContractNumberPage(),
          // home: CreateStContractNullPage(),
          // home: ReportDetailPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportPage(),
          // home: ReportDetailPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportDetailProdexResultPage(),
          // home: ReportDetailVisitPage(),
          // home: ReportDetailPullFeePage(),
          // home: MessageRoomPage(),
          // home: ReportDetailProdexNihilPage(),
          // home: ReportDetailProdexResultDetailPage(),
          // home: ReportDetailProdexResultPage(),
          // home: ReportDetailVisitPage(),
          // home: ReportDetailVisitNihilPage(),
          // home: ReportDetailVisitResultDetailPage(),
          // home: ReportDetailVisitResultPage(),
          // home: ReportDetailPullFeePage(),
          // home: ReportDetailPullFeeNihilPage(),
          // home: ReportDetailPullFeeResultDetailPage(),
          // home: ReportDetailPullFeeResultPage(),
          // home: ReportDetailStPage(),
          // home: ReportDetailStNihilPage(),
          // home: ReportDetailStResultDetailPage(),
          // home: ReportDetailStResultPage(),

          /// NOTE: ON PROGRESS
          // home: TestingPage(),
          // home: ReportDetailMvPage(),
          // home: ReportDetailMvResultPage(),
        ),
      ),
    );
  }
}
