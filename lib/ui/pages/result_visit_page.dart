import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class ResultVisitPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ResultVisitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Input Kunjungan",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
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

    Widget cardNotif() {
      return Container(
        child: Column(
          children: [
            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: defaultPadding.h,
                left: 12.w,
              ),
              child: Row(
                children: [
                  Text(
                    'Hari ini',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: CARD RESULT VISIT
            CustomCardNotification(
              icon: false,
              createTime: false,
              onTap: () {},
              title: 'Smith Erwin',
              message: 'Nomor Kontrak : 9999 8888 7777',
              fontWeight: semibold,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Zacharius Michael',
              message: 'Nomor Kontrak : 9999 8888 6666',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Ackermann Kenny',
              message: 'Nomor Kontrak : 9999 8888 1111',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Kirschtein Jean',
              message: 'Nomor Kontrak : 9999 8888 2222',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Shadis Keith',
              message: 'Nomor Kontrak : 9999 8888 3333',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Leonhart Annie',
              message: 'Nomor Kontrak : 9999 8888 4444',
              fontWeight: light,
            ),

            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: defaultPadding.h,
                left: 12.w,
              ),
              child: Row(
                children: [
                  Text(
                    '2 hari yang lalu',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: CARD RESULT VISIT
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Reiss Historia',
              message: 'Nomor Kontrak : 9999 8888 4444',
              time: '22.22',
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    Widget buttonBack() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: defaultMargin.h,
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
      key: _scaffoldKey,
      drawer: Container(
        width: 300.w,
        height: 760.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: defaultPadding.w,
                  ),
                  child: Column(
                    children: [
                      cardNotif(),
                      buttonBack(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
