import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends StatelessWidget {
  final String text;
  final Widget preffixWidget;
  final Widget suffixWidget;

  const CustomNavbar({
    Key? key,
    required this.text,
    required this.preffixWidget,
    required this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 114.h,
      padding: EdgeInsets.only(
        bottom: 30.h,
        top: defaultMargin.h,
        left: defaultMargin.w,
        right: defaultMargin.w,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18.r),
          bottomRight: Radius.circular(18.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          preffixWidget,
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontSize: 18.sp,
              fontWeight: bold,
            ),
          ),
          suffixWidget
        ],
      ),
    );
  }
}
