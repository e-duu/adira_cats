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

  const CustomCardNotification({
    Key? key,
    required this.title,
    required this.message,
    this.createTime = true,
    this.time = '',
    required this.fontWeight,
    required this.onTap,
    this.icon = true,
    this.iconNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => Container(
          child: AlertDialog(
            titlePadding: EdgeInsets.symmetric(
              vertical: defaultPadding.h,
            ),
            title: Container(
              margin: EdgeInsets.only(
                top: 48.h,
              ),
              child: Text(
                'Hapus?',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            content: Text(
              'Anda yakin ingin menghapus?',
              style: blackTextStyle.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              CustomButtonBorder(
                titleColor: kDarkGreyColor,
                title: 'Kembali',
                onPressed: () {},
                borderColor: kDarkGreyColor,
                borderWidth: 2.w,
                fontWeight: normal,
                width: 308.w,
                margin: EdgeInsets.only(
                  right: defaultMargin.w,
                  left: defaultMargin.w,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomButton(
                title: 'Hapus',
                onPressed: () => Navigator.pop(context, 'OK'),
                color: kRedColor,
                textStyle: blackTextStyle,
                width: 308.w,
                margin: EdgeInsets.only(
                  right: defaultMargin.w,
                  left: defaultMargin.w,
                  bottom: 48.h,
                ),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.r),
            ),
          ),
        ),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 18.h,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: defaultPadding.w,
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
            if (iconNew == true)
              Icon(
                Icons.delete,
                color: kDarkGreyColor,
              ),
          ],
        ),
      ),
    );
  }
}
