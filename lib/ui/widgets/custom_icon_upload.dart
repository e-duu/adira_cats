import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconUpload extends StatelessWidget {
  final String text;

  const CustomIconUpload({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 172.h,
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 64.w,
            height: 64.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icon_upload.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            text,
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
