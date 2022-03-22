import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/create_st_contract_null_page.dart';
import 'package:adira_cats/ui/pages/create_st_cotract_number_page.dart';
import 'package:adira_cats/ui/pages/create_st_page.dart';
import 'package:adira_cats/ui/pages/error_page.dart';
import 'package:adira_cats/ui/pages/handover_st_detail_page.dart';
import 'package:adira_cats/ui/pages/handover_st_confirmed_page.dart';
import 'package:adira_cats/ui/pages/handover_st_page.dart';
import 'package:adira_cats/ui/pages/handover_st_search_nil_page.dart';
import 'package:adira_cats/ui/pages/handover_st_search_page.dart';
import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/pages/loading_page.dart';
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
import 'package:adira_cats/ui/pages/register_third_done_page.dart';
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
import 'package:adira_cats/ui/pages/request_unit_page.dart';
import 'package:adira_cats/ui/pages/reset_password_page.dart';
import 'package:adira_cats/ui/pages/share_unit_found_page.dart';
import 'package:adira_cats/ui/pages/share_unit_page.dart';
import 'package:adira_cats/ui/pages/st_done_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/unit_search_detail_page.dart';
import 'package:adira_cats/ui/pages/unit_search_found_page.dart';
import 'package:adira_cats/ui/pages/unit_search_nil_page.dart';
import 'package:adira_cats/ui/pages/unit_search_page.dart';
import 'package:adira_cats/ui/pages/unit_search_pull_page.dart';
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
          //   '/load': (context) => LoadPage(),
          //   '/login': (context) => LoginPage(),
          //   '/main': (context) => MainPage(),
          // },

          /// NOTE: INTEGRATION
          // home: SplashPage(),
          // home: LoginPage(),
          // home: ForgotPasswordPage(),
          // home: ResetPasswordPage(),

          /// NOTE : DONE
          // home: OtpPage(),
          // home: ProfilePage(),
          // home: RegisterPage(),
          // home: RegisterSecondPage(),
          // home: RegisterThirdPage(),
          home: RegisterThirdDonePage(),
          // home: RegisterFourthPage(),
          // home: CreateStPage(),
          // home: StDonePage(),
          // home: HandoverStPage(),
          // home: ReportDetailPage(),
          // home: HandoverStSearchPage(),
          // home: HandoverStDetailPage(),
          // home: HandoverStSearchNilPage(),
          // home: HandoverStConfirmedPage(),
          // home: CreateStContractNumberPage(),
          // home: CreateStContractNullPage(),
          // home: ReportDetailPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportPage(),
          // home: ReportPage(),
          // home: ReportDetailPage(),
          // home: ReportDetailProdexPage(),
          // home: ReportDetailProdexResultPage(),
          // home: ReportDetailVisitPage(),
          // home: UnitSearchPage(),
          // home: UnitSearchFoundPage(),
          // home: UnitSearchNilPage(),
          // home: ReportDetailPullFeePage(),
          // home: MessageRoomPage(),
          // home: ReportDetailVisitPage(),
          // home: ReportDetailVisitResultDetailPage(),
          // home: ReportDetailPullFeePage(),
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
          // home: UnitSearchDetailPage(),
          // home: UnitSearchPullPage(),
        ),
      ),
    );
  }
}
