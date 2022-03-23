import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLeftChatItem extends StatelessWidget {
  final String chat; 
  final String time; 
  final bool unread;

  const CustomLeftChatItem({
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
        ],
      ),
    );
  }
}