import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/theme.dart';

class CustomUploadImage extends StatelessWidget {
  final String hintText;
  final String imageUrl;
  const CustomUploadImage(
      {Key? key, required this.hintText, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: defaultBottom.w,
      height: 200.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kGreyColor,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          Text(
            hintText,
            style: darkGreyTextStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
