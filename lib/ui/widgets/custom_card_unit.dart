import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomCardUnit extends StatelessWidget {
  final String imageUrl;
  final String contractNumber;
  final String policeNumber;

  const CustomCardUnit({
    Key? key,
    required this.imageUrl,
    required this.contractNumber,
    required this.policeNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138.w,
      margin: EdgeInsets.only(
        bottom: 100.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kLigthGrayColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultRadius),
                topRight: Radius.circular(defaultRadius),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultPadding.w,
              vertical: 18.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nomor Kontak:",
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 11.sp,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  contractNumber,
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Nomor Polisi",
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 11.sp,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  policeNumber,
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
