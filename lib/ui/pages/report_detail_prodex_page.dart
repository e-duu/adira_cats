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

class ReportDetailProdexPage extends StatelessWidget {
  const ReportDetailProdexPage({ Key? key }) : super(key: key);

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

    Widget inputSection() {
      Widget selectArea() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInput(
              hintText: 'Pilih Area ...',
              hintColor: kDarkGreyColor,
              filled: true,
              margin: EdgeInsets.only(
                bottom: 12.h,
              ),
            ),
          ],
        );
      }

      Widget selectBranch() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInput(
              hintText: 'Pilih Cabang ...',
              hintColor: kDarkGreyColor,
              filled: true,
              margin: EdgeInsets.only(
                bottom: 12.h,
              ),
            ),
          ],
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 24.h,
          right: 36.w,
          left: 36.w
        ),
        child: Column(
          children: [
            selectArea(),
            selectBranch(),
          ],
        ),
      );
    }

    Widget period(){
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 36.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Periode (Awal s/d Akhir)',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: semibold,
                ),
              ),
            )
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
              inputSection(),
              period(),
            ],
          ),
        ),
      )
    );
  }
}
