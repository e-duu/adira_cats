import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Notifikasi",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            child: Container(
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
        ),
      );
    }

    Widget cardNotif() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultBottom.h,
        ),
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

            // NOTE: CARD NOTIFICATION
            CustomCardNotification(
              onTap: () {},
              title: 'ST 14142 telah diterbitkan',
              message: 'klik untuk melihat',
              time: 'Baru Saja',
              fontWeight: semibold,
            ),
            CustomCardNotification(
              onTap: () {},
              title: 'ST 14141 telah dikonfirmasi',
              message: 'klik untuk melihat',
              time: '06.12',
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
                top: defaultPadding.h,
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
       key: _scaffoldKey,
       
          // drawer: CustomDrawer(),
          drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
               borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
              child: CustomDrawer()
              ),
          ),
              drawerEnableOpenDragGesture : true,
          endDrawerEnableOpenDragGesture: false,
      body: SafeArea(

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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
