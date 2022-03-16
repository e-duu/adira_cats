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
          preffixWidget: IconButton(onPressed: () => {}, icon: libraryIcon),
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

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 24.h, left: 36.w),
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
                    title(),
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
