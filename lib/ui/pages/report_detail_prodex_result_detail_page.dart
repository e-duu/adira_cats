import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_detail_report.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportDetailProdexResultDetailPage extends StatelessWidget {
  const ReportDetailProdexResultDetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Detail Prodex",
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

    Widget box(){
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 24.w,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 36.h,
          horizontal: 36.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          children: [
            Container(
              width: 57.w,
              height: 51.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_prodex.png',
                  )
                )
              ),
            ),
            SizedBox(height: 34.h,),
            Text(
              'Nama Eksternal : Prodex1234',
              style: blackTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: bold,
              ),
            ),
          ],
        )
      );
    }
    
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              navbar(),
              box(),
            ],
          ),
        ),
      )
    );
  }
}
