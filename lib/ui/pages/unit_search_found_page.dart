import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_card_unit.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class UnitSearchFoundPage extends StatelessWidget {
  const UnitSearchFoundPage({ Key? key }) : super(key: key);

  Widget navbar() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 6.h,
      ),
      child: CustomNavbar(
        text: "Pencarian Unit",
        preffixWidget: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.subject_sharp,
          ),
        ),
        suffixWidget: Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                "assets/image_user.png",
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget formSearch(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      child: CustomInputSearch(
        onPressed: () {},
        margin: EdgeInsets.all(1),
        value: '9999',
        hintText: 'Cari Unit menggunakan Nomor Kontrak ...',
      ),
    );
  }

  Widget searchUnitPhoto(){
    return Container(
      margin: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: "Cari Lewat ST",
            onPressed: (){},
            color: kPrimaryColor,
            textStyle: blackTextStyle,
            width: 138.w,
          ),
          SizedBox(
            width: 12.w,
          ),
          CustomButton(
            title: "Scan Foto Plat",
            onPressed: (){},
            color: kPrimaryColor,
            textStyle: blackTextStyle,
            width: 138.w,
          ),
        ],
      ),
    );
  }

  Widget notif() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StyledText(
            text: '<bold>2<bold> Unit telah ditemukan.',
            tags: {
              'bold': StyledTextTag(
                style: TextStyle(
                  fontWeight: semibold,
                ),
              ),
            },
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 13.sp
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Klik untuk melihat detail",
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 13.sp,
            ),
          ),
        ],
      )
    );
  }

  Widget units(){
    return Container(
      child: Row(
        children: [
          CustomCardUnit(
            imageUrl: 'assets/image_car_1.png',
            contractNumber: '9999 9999 9999',
            policeNumber: 'AB 9999 XX',
          ),
          SizedBox(
            width: 12.w,
          ),
          CustomCardUnit(
            imageUrl: 'assets/image_car_2.png',
            contractNumber: '9999 8888 8888',
            policeNumber: 'AB 8888 XX',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    formSearch(),
                    searchUnitPhoto(),
                    notif(),
                    units(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}