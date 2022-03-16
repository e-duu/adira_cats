import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog {
  final String title;
  final String text;
  final Widget preffixAction;
  final Widget suffixAction;
  final dynamic context;

  const CustomDialog({
    Key? key,
    required this.title,
    required this.text,
    required this.preffixAction,
    required this.suffixAction,
    required this.context,
  });

  dialog() => showDialog<String>(
        context: context,
        builder: (BuildContext context) => Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
            vertical: 48.h,
          ),
          child: AlertDialog(
            titlePadding: EdgeInsets.only(
              top: 10.h,
            ),
            title: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            content: Text(
              text,
              style: blackTextStyle.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[preffixAction, suffixAction],
            actionsPadding: EdgeInsets.only(
              bottom: 10.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.r),
            ),
          ),
        ),
      );
}
