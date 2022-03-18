import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardNotification extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final FontWeight fontWeight;

  const CustomCardNotification({
    Key? key,
    required this.title,
    required this.message,
    required this.time,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 18.h,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 18.h,
        horizontal: 24.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(
          color: kGrayColor,
          width: 2.w,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 36.w,
            height: 36.h,
            margin: EdgeInsets.only(
              right: 18.w,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/icon_bell.png'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.h),
                Text(
                  message,
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: blackTextStyle.copyWith(
              fontSize: 11.sp,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
