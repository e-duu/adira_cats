import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_unit.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class UnitSearchFoundPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSearchFoundPage({ Key? key }) : super(key: key);

  Widget navbar() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 6.h,
      ),
      child: CustomNavbar(
        text: "Pencarian Unit",
        preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
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
      padding: EdgeInsets.symmetric(
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icon_upload.png",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            "Cari Unit menggunakan\nFoto/Scan Plat Nomor",
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 12.sp,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget notif() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 36.h
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
      key: _scaffoldKey,
       
          drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
               borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
              child: CustomDrawer()
              ),
          ),
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