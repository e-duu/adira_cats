import 'dart:math';

import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardSt extends StatefulWidget {
  final String stNumber;
  final String contractNumber;
  final bool clickDetail;
  final Function()? onPressed;

  const CustomCardSt({
    Key? key,
    required this.stNumber,
    required this.contractNumber,
    this.clickDetail = false,
    this.onPressed,
  }) : super(key: key);

  @override
  _CustomCardStState createState() => _CustomCardStState();
}

class _CustomCardStState extends State<CustomCardSt>{
  bool press = false;

  var random = Random();

  void changeColorIndex(){
    setState(() {
      if (press == true) {
        press = false;
      } else {
        press = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeColorIndex,
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
            color: press ? kPrimaryColor : kLigthGrayColor,
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
                  if (widget.clickDetail == true)
                    SizedBox(
                      height: 6.h,
                    ),
                  if (widget.clickDetail == true)
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
            if (press == true)
              Container(
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
                      'Dipilih',
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
