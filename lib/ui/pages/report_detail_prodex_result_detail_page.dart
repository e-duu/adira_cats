import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportDetailProdexResultDetailPage extends StatelessWidget {
  const ReportDetailProdexResultDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Prodex",
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

    Widget box() {
      Widget icon() {
        return Center(
          child: Container(
            width: 57.w,
            height: 51.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              'assets/icon_prodex.png',
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
                'Nama Eksternal : Prodex1234',
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
                'N-1 : 555',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '< 61 : 555',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '61 - 90 : 555',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '91 - 120 : 555',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '> 121 : 555',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Total : its over 3000',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'SKP proses : lorem',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Tarik : mamang',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Bayar : ngutang dulu',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Gagal : restart from last checkpoint',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Total Hasil : legendary mythic',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Total Bayar ( Tarik + Bayar ) : segunung',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Total Bayar dalam % : 101%',
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
