import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class ResultVisitPage extends StatelessWidget {
  const ResultVisitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Input Hasil Kunjungan",
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
        margin: EdgeInsets.only(
          bottom: 150.h,
        ),
        child: Column(
          children: [
            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: 24.h,
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

            // NOTE: CARD NOTIFICATION
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
              message: 'klik untuk melihat',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              title: 'Anda menerima pesan dari Anggora',
              message: 'klik untuk melihat',
              time: '03.45',
              fontWeight: light,
            ),

            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: 24.h,
                left: 12.w,
              ),
              child: Row(
                children: [
                  Text(
                    'Kemarin',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: CARD NOTIFICATION
            CustomCardNotification(
              onTap: () {},
              title: 'Anda menerima pesan dari Persia',
              message: 'klik untuk melihat',
              time: '22.22',
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
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24.w,
                  ),
                  child: Column(
                    children: [
                      cardNotif(),
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
