import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final bool autocorrect;
  final bool filled;
  final double borderWidth;
  final EdgeInsets? margin;
  final double width;
  final Color hintColor;
  final bool readOnly;
  
  const CustomTextField({ 
    Key? key,
    required this.hintText,
    required this.hintColor,
    required this.maxLines,
    this.margin,
    this.borderWidth = 0,
    this.width = double.infinity,
    this.autocorrect = false,
    this.filled = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.h,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kGreyColor),
      child: TextField(
        readOnly: readOnly,
        maxLines: maxLines,
        autocorrect: true,
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 15.h,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor,
            fontWeight: light,
            fontSize: 12.sp,
          ),
          filled: filled,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kGreyColor, width: borderWidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kDarkGreyColor, width: borderWidth),
          ),
        ),
      ),
    );
  }
}
