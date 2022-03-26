import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportDetailMvResultPage extends StatelessWidget {
  const ReportDetailMvResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Monitoring Workflow",
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

    Widget found() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin,
        ),
        child: StyledText(
          text: '<bold>Workflow Nomor 123</bold> telah ditemukan.',
          tags: {
            'bold': StyledTextTag(
              style: TextStyle(fontWeight: bold, fontSize: 13.sp),
            ),
          },
          style: darkGreyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 13.sp,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget box() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Workflow : 123',
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
                'Tanggal Pengajuan : 1 Februari 2022, pukul 13.00',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Nama Pengaju : Peter Jackson Quill',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Status Dokumen : Disetujui',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Biaya Diajukan : Rp. 10.000.000',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Biaya Disetujui : Rp. 10.000.000',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Kronologi : CCH, ARH',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
      );
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
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                SizedBox(
                  height: defaultPadding.h,
                ),
                CustomInputSearch(onPressed: () {}, hintText: '123'),
                found(),
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
