import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/report_detail_page.dart';
import 'package:adira_cats/ui/widgets/custom_bar_chart.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_report_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Laporan",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {},
            child: Container(
              width: 21.w,
              height: 21.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget charts() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomReportChart(
              title: "Input Kunjungan",
              chart: CustomBarChart(
                listGrafik: [
                  Sales('1', 22),
                  Sales('2', 12),
                  Sales('3', 22),
                  Sales('4', 22),
                  Sales('5', 22),
                  Sales('5', 22),
                  Sales('6', 22),
                  Sales('7', 22),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Prodex",
              chart: CustomBarChart(
                listGrafik: [
                  Sales('1', 22),
                  Sales('2', 12),
                  Sales('3', 22),
                  Sales('4', 22),
                  Sales('7', 22),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Biaya Tarik",
              chart: CustomBarChart(
                listGrafik: [
                  Sales('1', 22),
                  Sales('2', 12),
                  Sales('3', 22),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Surat Tugas (ST)",
              chart: CustomBarChart(
                listGrafik: [
                  Sales('sen', 22),
                  Sales('sel', 12),
                  Sales('rab', 22),
                  Sales('kam', 100),
                  Sales('jum', 22),
                  Sales('sab', 22),
                  Sales('min', 22),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Monitoring Workflow",
              chart: CustomBarChart(
                listGrafik: [
                  Sales('1', 22),
                  Sales('2', 12),
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      );
    }

    Widget buttonDetail() {
      return Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 36.h,
          horizontal: 36.w,
        ),
        margin: EdgeInsets.zero,
        child: CustomButton(
          title: "Lihat Detail Laporan",
          color: kPrimaryColor,
          textStyle: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 12.sp,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReportDetailPage(),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer : Container(
        width: 300,
        height: 760,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35)
          ),
        child: CustomDrawer()
        ),
      ),
      drawerEnableOpenDragGesture : true,
      endDrawerEnableOpenDragGesture: false,
      floatingActionButton: buttonDetail(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                charts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
