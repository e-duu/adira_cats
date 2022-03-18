import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Notifikasi",
          preffixWidget: IconButton(
            onPressed: () => {},
            icon: libraryIcon,
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
          bottom: 50.h,
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
              onTap: () {},
              title: 'SK 14142 telah diterbitkan',
              message: 'klik untuk melihat',
              time: 'Baru Saja',
              fontWeight: semibold,
            ),
            CustomCardNotification(
              onTap: () {},
              title: 'SK 14141 telah dikonfirmasi',
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

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.symmetric(
            horizontal: 40.w,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24.r),
              topLeft: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: kGrayColor.withOpacity(1),
                spreadRadius: 3,
                blurRadius: 18.r,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_chat_button.png',
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 21.w,
                          height: 21.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_location_button.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_home_button.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: kGrayColor,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_user_button.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    cardNotif(),
                  ],
                ),
              ),
              customBottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }
}
