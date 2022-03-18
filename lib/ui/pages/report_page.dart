import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
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
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Input Kunjungan",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Biaya Tarik",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prodex",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Biaya Tarik",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Surat Tugas (ST)",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: double.infinity,
              height: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monitoring Workflow",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
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
                charts(),
              ],
            )
          ),
        ),
      )
    );
  }
}