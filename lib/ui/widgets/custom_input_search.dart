import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputSearch extends StatelessWidget {
  final Function() onPressed;
  final String hintText;
  final String value;
  final EdgeInsets margin;

  const CustomInputSearch({
    Key? key,
    required this.onPressed,
    required this.hintText,
    this.value = '',
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: margin == EdgeInsets.zero ? EdgeInsets.symmetric(
        horizontal: defaultMargin.w,
      ) : margin,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kGreyColor
      ),
      child: TextFormField(
        autocorrect: true,
        autofocus: false,
        initialValue: value,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 15.h,
          ),
          hintText: hintText,
          suffixIcon: IconButton(
            onPressed: onPressed,
            hoverColor: kTransparent,
            focusColor: kTransparent,
            highlightColor: kTransparent,
            icon: Icon(Icons.search_sharp),
          ),
          hintStyle: TextStyle(color: kDarkGreyColor),
          filled: true,
          fillColor: kWhiteColor,
          focusColor: kDarkGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius.r),
            borderSide: BorderSide(
              color: kLigthGrayColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius.r),
            borderSide: BorderSide(
              color: kDarkGreyColor,
              width: 2.w,
            ),
          ),
        ),
      ),
    );
  }
}
