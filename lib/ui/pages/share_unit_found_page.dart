import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ShareUnitFoundPage extends StatelessWidget {
  const ShareUnitFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar(){
      return Container(
        child: CustomNavbar(
          // text: "Bagikan", 
          // preffixWidget: SizedBox(), 
          // suffixWidget: SizedBox(),
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
          margin: EdgeInsets.all(1),
        ),
      );
    }

    Widget GoMap(){
      return Container(
        height: 360.h,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 18.h,
          left: 24.w,
          right: 24.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kGreyColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Image.asset(
          "assets/image_map2.png",
          fit: BoxFit.cover,
        ),
      );
    }

    Widget information(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
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
                    height: 33.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_location.png',
                        )
                      )
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Informan Sedang Dalam Perjalanan",
                        style: blackTextStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: bold,
                        ),
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
          child: Column(
            children: [
              navbar(),
              formSearch(),
              GoMap(),
              information(),
              buttonBack(),
            ],
          )
        ),
      )
    );
  }
}