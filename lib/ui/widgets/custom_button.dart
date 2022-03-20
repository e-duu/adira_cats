import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color color;
  final TextStyle textStyle;
  final bool border;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.textStyle,
    this.margin = EdgeInsets.zero,
    this.width = double.infinity,
    this.border = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.h,
      margin: margin,
      decoration: BoxDecoration(
        border: Border.all(
          color: border ? kDarkGreyColor : kTransparent,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          title,
          style: textStyle.copyWith(
            fontSize: 12.sp,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
