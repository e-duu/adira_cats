import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportDetailStResultDetailPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportDetailStResultDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Detail Surat Tugas",
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

    Widget box() {
      Widget icon() {
        return Center(
          child: Container(
            width: 57.w,
            height: 51.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              'assets/icon_number_st_detail.png',
            ))),
          ),
        );
      }

      Widget externalName() {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Kontrak : 9999 8888 7777',
                style: blackTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Nomor Surat : 123456',
                style: blackTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Detail Informasi',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Nama Nasabah : Steven Rogers',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'OD Hari : 7 hari',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Nama Excoll : Nicholas Fury',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Tanggal Serah Terima : 1 Maret 2022',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
          margin: EdgeInsets.symmetric(
            vertical: defaultPadding.h,
            horizontal: defaultPadding.w,
          ),
          padding: EdgeInsets.symmetric(
            vertical: defaultMargin.h,
            horizontal: defaultMargin.w,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kLigthGrayColor,
              width: 2.w,
            ),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon(),
              SizedBox(
                height: 34.h,
              ),
              externalName(),
            ],
          ));
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin.w,
          right: defaultMargin.w,
          top: 100.h,
          bottom: defaultMargin.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              titleColor: kDarkGreyColor,
              onPressed: () {},
              borderColor: kDarkGreyColor,
              borderWidth: 2.w,
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 300.w,
        height: 760.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                box(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
