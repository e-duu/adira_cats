import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChatItem extends StatelessWidget {
  final String chat; 
  final String time;
  final bool auth;
  final bool read;

  const CustomChatItem({
    Key? key,
    required this.chat,
    required this.time,
    this.read = false, 
    this.auth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if (auth != true) {
      return Container(
        margin: EdgeInsets.only(
          top: 18.h,
          left: defaultPadding.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.only(
                  right: 18.w,
                ),
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r),
                    bottomLeft: Radius.circular(2.r),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 18.h,
                ),
                child: Text(
                  chat,
                  style: blackTextStyle.copyWith(
                    fontSize: 10.sp,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 18.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: blackTextStyle.copyWith(
                      fontSize: 10.sp,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    read ? 'Diterima' : 'Dibaca',
                    style: blackTextStyle.copyWith(
                      fontSize: 10.sp,
                      fontWeight: light,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(
          top: 18.h,
          left: defaultPadding.w,
          right: defaultPadding.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 18.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: blackTextStyle.copyWith(
                      fontSize: 10.sp,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    read ? 'Diterima' : 'Dibaca',
                    style: blackTextStyle.copyWith(
                      fontSize: 10.sp,
                      fontWeight: light,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: kLightYellowColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(2.r),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 18.h,
                ),
                child: Text(
                  chat,
                  style: blackTextStyle.copyWith(
                    fontSize: 10.sp,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    
  }
}