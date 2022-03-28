import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_google_maps.dart';

class ShareUnitFoundPage extends StatelessWidget {
  const ShareUnitFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Bagikan",
          preffixWidget: SizedBox(),
          suffixWidget: SizedBox(),
        ),
      );
    }

    Widget formSearch() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
        ),
        child: CustomInputSearch(
          onPressed: () {},
          hintText: "Cari Cabang ...",
          value: 'New York',
          margin: EdgeInsets.only(
            top: defaultPadding.h,
          ),
        ),
      );
    }

    Widget goMap() {
      return Container(
        height: 360.h,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 18.h,
          left: defaultPadding.w,
          right: defaultPadding.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kGreyColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: CustomGoogleMaps(),
      );
    }

    Widget information() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding.w,
          vertical: defaultPadding.h,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding.w,
                vertical: 18.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kLigthGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 40.w,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_location.png',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Informan Sedang Dalam Perjalanan",
                          style: blackTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: bold,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          "Informan cabang New York sedang dalam perjalanan menuju unit yang dituju,",
                          style: darkGreyTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 11.sp,
                          ),
                          overflow: TextOverflow.visible,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    /// NOTE: BUTTON BACK
    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin.w,
            vertical: defaultMargin.h,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              formSearch(),
              goMap(),
              information(),
              buttonBack(),
            ],
          ),
        ),
      ),
    );
  }
}
