import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_detail_report.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportDetailPage extends StatelessWidget {
  const ReportDetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Detail Laporan",
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
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    
    Widget reportCard() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: Column(
          children: [
            CustomDetailReport(
              imageUrl: 'assets/icon_input_kunjungan.png',
              title: "Input Kunjungan",
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomDetailReport(
              imageUrl: 'assets/icon_prodex.png',
              title: "Prodex",
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomDetailReport(
              imageUrl: 'assets/icon_biaya_tarik.png',
              title: "Biaya Tarik",
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomDetailReport(
              imageUrl: 'assets/icon_surat_tugas.png',
              title: "Surat Tugas (ST)",
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomDetailReport(
              imageUrl: 'assets/icon_monitor.png',
              title: "Monitoring Workflow",
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      );
    }

    Widget buttonBack(){
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.only(
            top: 68.h,
            bottom: 36.h,
            left: 36.w,
            right: 36.w,
          ),
          titleColor: kGreyColor,
          borderColor: kGreyColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () {},
        ),
      );
    }
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                reportCard(),
                buttonBack(),
              ],
            ),
          ),
        ),
      )
    );
  }
}