import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_detail_report.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportDetailPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Detail Laporan",
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

    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.only(
            top: 68.h,
            bottom: 36.h,
            left: 36.w,
            right: 36.w,
          ),
          titleColor: kDarkGreyColor,
          borderColor: kDarkGreyColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () {},
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
      ),
    );
  }
}
