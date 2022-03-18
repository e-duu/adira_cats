import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardSk extends StatelessWidget {

  final String skNumber;
  final String contractNumber;
  final bool notifNew;
  
  const CustomCardSk({ 
    Key? key,
    required this.skNumber,
    required this.contractNumber,
    this.notifNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: 18.h
      ),
      margin: EdgeInsets.only(
        bottom: 12.h,
        right: 24.w,
        left: 24.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrayColor,
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
                  "assets/icon_number_sk.png",
                )
              )
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nomor SK : $skNumber",
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
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Klik untuk lihat detail",
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
                )
              ],
            ),
          ),
          if (notifNew == true) Container(
            width: 59.w,
            height: 29.h,
            child: Container(
              width: 59.w,
              height: 29.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kPrimaryColor
              ),
              child: Center(
                child: Text(
                  "Baru",
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
    );
  }
}