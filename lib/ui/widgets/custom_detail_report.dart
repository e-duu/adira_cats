import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomDetailReport extends StatelessWidget {

  final String imageUrl;
  final String title;
  
  const CustomDetailReport({ 
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 27.w,
        vertical: 23.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrayColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl
                ),
              ),
            ),
          ),
          SizedBox(
            width: 21.w,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "Klik untuk lihat detail",
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 11.sp,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}