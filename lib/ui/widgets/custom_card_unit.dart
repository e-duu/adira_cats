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
      decoration: BoxDecoration(
        border: Border.all(
          color: kLigthGrayColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 110.h,
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
          ),
          Container(
            padding: EdgeInsets.only(
              top: 12.h,
              left: 12.w,
              right: 12.w,
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
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  contractNumber,
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Nomor Polisi",
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 11.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  policeNumber,
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
