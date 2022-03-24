import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/report_detail_page.dart';
import 'package:adira_cats/ui/widgets/custom_bar_chart.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_report_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Laporan",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.subject_sharp,
            ),
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
                itemValue1: 100,
                itemValue2: 633,
                itemValue3: 72,
                itemValue4: 10,
                itemValue5: 77,
                itemValue6: 12,
                itemValue7: 56,
                itemParent1: 'Mar',
                itemParent2: 'Apr',
                itemParent3: 'Mei',
                itemParent4: 'Jun',
                itemParent5: 'Jul',
                itemParent6: 'Agu',
                itemParent7: 'Sep',
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Prodex",
              chart: CustomBarChart(
                itemValue1: 100,
                itemValue2: 633,
                itemValue3: 72,
                itemValue4: 10,
                itemValue5: 77,
                itemValue6: 12,
                itemValue7: 56,
                itemParent1: '1',
                itemParent2: '2',
                itemParent3: '3',
                itemParent4: '4',
                itemParent5: '5',
                itemParent6: '6',
                itemParent7: '7',
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Biaya Tarik",
              chart: CustomBarChart(
                itemValue1: 100,
                itemValue2: 633,
                itemValue3: 72,
                itemValue4: 10,
                itemValue5: 77,
                itemValue6: 12,
                itemValue7: 56,
                itemParent1: 'Sen',
                itemParent2: 'Sel',
                itemParent3: 'Rab',
                itemParent4: 'Kam',
                itemParent5: 'Jum',
                itemParent6: 'Sab',
                itemParent7: 'Min',
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Surat Tugas (ST)",
              chart: CustomBarChart(
                itemValue1: 100,
                itemValue2: 633,
                itemValue3: 72,
                itemValue4: 10,
                itemValue5: 77,
                itemValue6: 12,
                itemValue7: 56,
                itemParent1: 'Sen',
                itemParent2: 'Sel',
                itemParent3: 'Rab',
                itemParent4: 'Kam',
                itemParent5: 'Jum',
                itemParent6: 'Sab',
                itemParent7: 'Min',
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Monitoring Workflow",
              chart: CustomBarChart(
                itemValue1: 100,
                itemValue2: 633,
                itemValue3: 72,
                itemValue4: 10,
                itemValue5: 77,
                itemValue6: 12,
                itemValue7: 56,
                itemParent1: 'Sen',
                itemParent2: 'Sel',
                itemParent3: 'Rab',
                itemParent4: 'Kam',
                itemParent5: 'Jum',
                itemParent6: 'Sab',
                itemParent7: 'Min',
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
