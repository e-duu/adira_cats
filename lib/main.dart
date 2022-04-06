import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/create_st_contract_null_page.dart';
import 'package:adira_cats/ui/pages/create_st_contract_number_page.dart';
import 'package:adira_cats/ui/pages/create_st_filled_page.dart';
import 'package:adira_cats/ui/pages/create_st_page.dart';
import 'package:adira_cats/ui/pages/error_page.dart';
import 'package:adira_cats/ui/pages/forgot_password_page.dart';
import 'package:adira_cats/ui/pages/handover_st_confirmed_page.dart';
import 'package:adira_cats/ui/pages/handover_st_detail_page.dart';
import 'package:adira_cats/ui/pages/handover_st_page.dart';
import 'package:adira_cats/ui/pages/handover_st_search_nil_page.dart';
import 'package:adira_cats/ui/pages/handover_st_search_page.dart';
import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/pages/home_page_option.dart';
import 'package:adira_cats/ui/pages/info_unit_page.dart';
import 'package:adira_cats/ui/pages/loading_page.dart';
import 'package:adira_cats/ui/pages/local_notification.dart';
import 'package:adira_cats/ui/pages/login_page.dart';
import 'package:adira_cats/ui/pages/main_page.dart';
import 'package:adira_cats/ui/pages/message_page.dart';
import 'package:adira_cats/ui/pages/message_room_page.dart';
import 'package:adira_cats/ui/pages/notification_page.dart';
import 'package:adira_cats/ui/pages/otp_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/pull_fee_done_page.dart';
import 'package:adira_cats/ui/pages/pull_fee_found_page.dart';
import 'package:adira_cats/ui/pages/pull_fee_page.dart';
import 'package:adira_cats/ui/pages/register_fourth_page.dart';
import 'package:adira_cats/ui/pages/register_page.dart';
import 'package:adira_cats/ui/pages/register_second_page.dart';
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
import 'package:adira_cats/ui/pages/reset_password_page.dart';
import 'package:adira_cats/ui/pages/result_visit_page.dart';
import 'package:adira_cats/ui/pages/save_page.dart';
import 'package:adira_cats/ui/pages/save_page_empty.dart';
import 'package:adira_cats/ui/pages/splash_page_new1.dart';
import 'package:adira_cats/ui/pages/splash_page_new2.dart';
import 'package:adira_cats/ui/pages/unit_send_pull_page.dart';
import 'package:adira_cats/ui/pages/unit_send_pull_final_page.dart';
import 'package:adira_cats/ui/pages/unit_send_pull_visit_page.dart';
import 'package:adira_cats/ui/pages/unit_send_pull_warehouse_page.dart';
import 'package:adira_cats/ui/pages/share_unit_found_page.dart';
import 'package:adira_cats/ui/pages/share_unit_page.dart';
import 'package:adira_cats/ui/pages/splash_page.dart';
import 'package:adira_cats/ui/pages/testing.dart';
import 'package:adira_cats/ui/pages/unit_search_detail_page.dart';
import 'package:adira_cats/ui/pages/unit_search_found_page.dart';
import 'package:adira_cats/ui/pages/unit_search_nil_page.dart';
import 'package:adira_cats/ui/pages/unit_search_page.dart';
import 'package:adira_cats/ui/pages/unit_search_process_page.dart';
import 'package:adira_cats/ui/pages/unit_search_pull_found_page.dart';
import 'package:adira_cats/ui/pages/unit_search_pull_page.dart';
import 'package:adira_cats/ui/pages/announcement_detail_page.dart';
import 'package:adira_cats/ui/pages/unit_send_pull_ceklis_page.dart';
import 'package:adira_cats/ui/pages/video_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() {
  // NOTE: Lock Potrait
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

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
          //   '/load': (context) => LoadPage(),
          //   '/main': (context) => MainPage(),
          //   '/home': (context) => HomePage(),
          //   '/profile': (context) => ProfilePage(),
          //   '/message': (context) => MessagePage(),
          //   '/unit_search': (context) => UnitSearchPage(),
          //   '/notification': (context) => NotificationPage(),
          // },

          /// NOTE: INTEGRATION
          // home: SplashPage(),
          // home: LoginPage(),
          // home: ForgotPasswordPage(),
          // home: ResetPasswordPage(),
          // home: OtpPage(),
          // home: ProfilePage(),

          /// NOTE : REGISTER PAGE
          // home: RegisterPage(),
          // home: RegisterSecondPage(),
          // home: RegisterThirdPage(),
          // home: RegisterThirdDonePage(),
          // home: RegisterFourthPage(),

          /// NOTE : DONE
          /// NOTE : MAIN PAGE
          // home: MessagePage(),
          // home: MessageRoomPage(),
          // home: ShareUnitPage(),
          // home: ShareUnitFoundPage(),
          // home: UnitSearchPage(),
          // home: UnitSearchNilPage(),
          // home: UnitSearchPullPage(),
          // home: UnitSearchFoundPage(),
          // home: UnitSearchDetailPage(),
          // home: UnitSearchProcessPage(),
          // home: UnitSearchPullFoundPage(),
          // home: UnitSendPullPage(),
          // home: UnitSendPullFoundPage(),
          // home: LocalNotification(),
          // home: NotificationPage(),
          // home: ProfilePage(),
          // home: HomePage(),
          // home: HomePageOption(),
          // home: ErrorPage(),
          // home: LoadPage(),
          // home: AnnouncementDetailPage(),
          // home: CheckUnit(),
          // home: CheckUnitWarehouse(),
          // home: CheckUnitVisit(),
          // home: CheckUnitVisit(),
          // home: CheckUnitFinal(),
          // home: AssetPlayerWidget(),

          /// NOTE : UNIT SEARCH
          home: UnitSearchPage(),
          // home: UnitSearchNilPage(),
          // home: UnitSearchFoundPage(),
          // home: UnitSearchPullPage(),
          // home: UnitSearchDetailPage(),
          // home: UnitSearchProcessPage(),
          // home: UnitSearchPullFoundPage(),
          // home: ShareUnitPage(),
          // home: ShareUnitFoundPage(),

          /// NOTE : ST CONTRACT PAGE
          // home: CreateStPage(),
          // home: CreateStFilledPage(),
          // home: CreateStContractNullPage(),
          // home: CreateStContractNumberPage(),

          /// NOTE : HANDOVER ST PAGE
          // home: HandoverStPage(),
          // home: HandoverStDetailPage(),
          // home: HandoverStSearchPage(),
          // home: HandoverStSearchNilPage(),
          // home: HandoverStConfirmedPage(),

          /// NOTE : REPORT PAGE
          // home: ReportPage(),
          // home: ReportDetailPage(),

          /// NOTE : VISIT PAGE
          // home: ReportDetailVisitPage(),
          // home: ReportDetailVisitNihilPage(),
          // home: ReportDetailVisitResultDetailPage(),

          /// NOTE : PRODEX PAGE
          // home: ReportDetailProdexPage(),
          // home: ReportDetailProdexNihilPage(),
          // home: ReportDetailProdexResultPage(),
          // home: ReportDetailProdexResultDetailPage(),

          /// NOTE : PULL FEE PAGE
          // home: ReportDetailPullFeePage(),
          // home: ReportDetailPullFeePage(),
          // home: ReportDetailPullFeeNihilPage(),
          // home: ReportDetailPullFeeResultDetailPage(),

          /// NOTE : ST PAGE
          // home: ReportDetailStPage(),
          // home: ReportDetailStNihilPage(),
          // home: ReportDetailStResultDetailPage(),

          /// NOTE : MONITORING FLOW PAGE
          // home: ReportDetailMvPage(),
          // home: ReportDetailMvResultPage(),

          /// NOTE : SUBMISSION PULL FEE PAGE
          // home: PullFeePage(),
          // home: PullFeeFoundPage(),
          // home: PullFeeDonePage(),

          /// NOTE : RESULT VISIT PAGE
          // home: ResultVisitPage(),
          // home: ReportDetailVisitResultPage(),

          /// NOTE : SAVED PAGE
          // home: SavePage(),
          // home: SavePageEmpty(),

          /// NOTE : UNIT SEND PULL PAGE
          // home: UnitSendPullPage(),
          // home: UnitSendPullVisitPage(),
          // home: UnitSendPullFinalPage(),
          // home: UnitSendPullCeklisPage(),
          // home: UnitSendPullWarehousePage(),

          /// NOTE : INFO UNIT PAGE
          // home: InfoUnitPage(),

          /// NOTE: ON PROGRESS
          // home: InfoUnitPage(),
          // home: TestingPage(),
          // home: SplashPageNewOne(),
          // home: SplashPageNewTwo(),
        ),
      ),
    );
  }
}
