import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import '../widgets/custom_google_maps.dart';

class InfoUnitPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  InfoUnitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: 'Info Unit',
        preffixWidget: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: libraryIcon,
        ),
        suffixWidget: Container(
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
      );
    }

    Widget goMap() {
      return Container(
        height: 360.h,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultPadding.h,
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

    Widget optionButton() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 18.w,
          bottom: defaultPadding.h,
          left: defaultPadding.w,
          right: defaultPadding.w,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kLigthGrayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledText(
                    text: ' <bold>Nomor Polisi :</bold> AB 9999 XX',
                    tags: {
                      'bold': StyledTextTag(
                        style: TextStyle(
                          fontWeight: bold,
                        ),
                      ),
                    },
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Tipe : -',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// NOTE: CHAT
                      Container(
                        height: 50.h,
                        child: CustomButton(
                          title: 'Chat',
                          width: 80.w,
                          fontWeight: light,
                          color: kBlueColor,
                          textStyle: blackTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12.sp,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),

                      /// NOTE: TERIMA
                      Container(
                        height: 50.h,
                        child: CustomButton(
                          title: 'Terima',
                          fontWeight: light,
                          color: kGreenColor,
                          textStyle: whiteTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12.sp,
                          ),
                          width: 80.w,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),

                      /// NOTE: TOLAK
                      Container(
                        height: 50.h,
                        child: CustomButton(
                          title: 'Tolak',
                          fontWeight: light,
                          color: kRedColor,
                          textStyle: whiteTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12.sp,
                          ),
                          width: 80.w,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
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
            vertical: defaultPadding.h,
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
              goMap(),
              optionButton(),
              buttonBack(),
            ],
          ),
        ),
      ),
    );
  }
}
