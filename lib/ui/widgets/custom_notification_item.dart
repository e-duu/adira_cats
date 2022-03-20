import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationItem extends StatelessWidget {
  final int count;
  const CustomNotificationItem({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 13.0.w,
      child: Container(
        padding: EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle,
        ),
        constraints: BoxConstraints(
          minHeight: 15.0.h,
          minWidth: 15.0.w,
        ),
        child: Center(
          child: Text(
            count.toString(),
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontSize: 10.sp,
              fontWeight: semibold,
            ),
          ),
        ),
      ),
    );
  }
}
