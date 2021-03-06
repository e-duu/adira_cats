import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardNotification extends StatelessWidget {
  final String title;
  final String message;
  final bool createTime;
  final String time;
  final FontWeight fontWeight;
  final Function() onTap;
  final bool icon;
  final bool iconNew;
  final Function()? onPressedDelete;
  final bool iconDelete;

  const CustomCardNotification({
    Key? key,
    required this.title,
    required this.message,
    required this.fontWeight,
    required this.onTap,
    this.onPressedDelete,
    this.createTime = true,
    this.icon = true,
    this.iconNew = false,
    this.iconDelete = false,
    this.time = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 18.h,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: 18.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            if (icon == true)
              Container(
                width: defaultMargin.w,
                height: defaultMargin.h,
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
            if (createTime == true)
              Text(
                time,
                style: blackTextStyle.copyWith(
                  fontSize: 11.sp,
                  fontWeight: fontWeight,
                ),
              ),
            if (iconDelete == true)
              GestureDetector(
                onTap: onPressedDelete,
                child: Icon(
                  Icons.delete,
                  color: kDarkGreyColor,
                  size: 32,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
