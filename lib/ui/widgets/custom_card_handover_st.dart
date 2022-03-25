import 'dart:math';

import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardHandoverSt extends StatefulWidget {
  final String stNumber;
  final String contractNumber;
  final bool newHandover;
  final Function() onPressed;

  const CustomCardHandoverSt({
    Key? key,
    required this.stNumber,
    required this.contractNumber,
    required this.onPressed,
    this.newHandover = false,
  }) : super(key: key);

  @override
  _CustomCardHandoverStState createState() => _CustomCardHandoverStState();
}

class _CustomCardHandoverStState extends State<CustomCardHandoverSt> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
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
                    "Nomor ST : ${widget.stNumber}",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Nomor Kontrak : ${widget.contractNumber}",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
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
            if (widget.newHandover == true) Container(
              width: 59.w,
              height: 29.h,
              child: Container(
                width: 59.w,
                height: 29.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: kPrimaryColor,
                ),
                child: Center(
                  child: Text(
                    'Baru',
                    style: blackTextStyle.copyWith(
                      fontSize: 11.sp,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
