import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/report_detail_page.dart';
import 'package:adira_cats/ui/widgets/custom_bar_chart.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_report_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({ Key? key }) : super(key: key);

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
              width: 27.w,
              height: 26.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  )
                )
              )
            )
          )
        ),
      );
    }
    
    Widget charts(){
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
                mon: 100,
                tue: 633,
                wed: 72,
                thu: 10,
                fri: 77,
                sat: 12,
                sun: 56,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Prodex", 
              chart: CustomBarChart(
                mon: 100,
                tue: 633,
                wed: 72,
                thu: 10,
                fri: 77,
                sat: 12,
                sun: 56,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Biaya Tarik", 
              chart: CustomBarChart(
                mon: 100,
                tue: 633,
                wed: 72,
                thu: 10,
                fri: 77,
                sat: 12,
                sun: 56,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Surat Tugas (ST)", 
              chart: CustomBarChart(
                mon: 100,
                tue: 633,
                wed: 72,
                thu: 10,
                fri: 77,
                sat: 12,
                sun: 56,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomReportChart(
              title: "Monitoring Workflow", 
              chart: CustomBarChart(
                mon: 100,
                tue: 633,
                wed: 72,
                thu: 10,
                fri: 77,
                sat: 12,
                sun: 56,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      );
    }

    Widget buttonDetail(){
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
           fontSize: 12.sp
          ),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ReportDetailPage(),
              ),
            );
          },
        )
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
            )
          ),
        ),
      )
    );
  }
}