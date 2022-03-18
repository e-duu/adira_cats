import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_chat_tile.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageRoomPage extends StatelessWidget {
  @override
  Widget navbar() {
    return Container(
      child: CustomNavbar(
        text: "Obrolan",
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
                )
              )
            )
          )
        )
      ),
    );
  }

  Widget user() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 24.h,
      ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  right: 18.w,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_cat6.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Domestic',
                    style: blackTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: bold,
                      ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Online',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'Anda',
                style: blackTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  left: 18.w,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image_user.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget chat() {
    return Container(
      child: Column(
        children: [
          Text(
            'Kemarin',
            style: darkGreyTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 13.sp,
            ),
          ),
          Container(
            color: kGrayColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
                vertical: 16.h,
              ),
            ),
          )
        ], 
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              user(),
              chat(),
            ],
          ),
        ),
      ),
    );
  }
}