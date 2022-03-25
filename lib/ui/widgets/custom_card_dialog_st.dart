import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardDialogSt extends StatelessWidget {
  final String stNumber;
  final String contractNumber;
  final bool iconDelete;
  final String notifText;
  final bool clickDetail;
  final Function()? onPressed;
  final Function()? onPressedDelete;

  const CustomCardDialogSt({
    Key? key,
    required this.stNumber,
    required this.contractNumber,
    this.iconDelete = false,
    this.notifText = '',
    this.clickDetail = false,
    this.onPressed,
    this.onPressedDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 18.h,
        ),
        margin: EdgeInsets.only(
          bottom: 12.h,
          right: defaultPadding.w,
          left: defaultPadding.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 27.w,
              height: 29.h,
              margin: EdgeInsets.only(
                left: 10.w,
                right: 22.w,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_number_st.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nomor ST : $stNumber",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Nomor Kontrak : $contractNumber",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  if (clickDetail == true)
                    SizedBox(
                      height: 6.h,
                    ),
                  if (clickDetail == true)
                    Text(
                      "Klik untuk lihat detail",
                      style: darkGreyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 11.sp,
                      ),
                    ),
                ],
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
