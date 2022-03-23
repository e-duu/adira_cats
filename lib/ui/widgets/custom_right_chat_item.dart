import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRightChatItem extends StatelessWidget {
  final String chat; 
  final String time; 
  final bool unread;

  const CustomRightChatItem({
    Key? key,
    required this.chat,
    required this.time,
    this.unread = true, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  unread ? 'Diterima' : 'Dibaca',
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