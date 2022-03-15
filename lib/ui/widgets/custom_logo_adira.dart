import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLogoAdira extends StatelessWidget {
  final String text;

  const CustomLogoAdira({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 72.h),
          width: 200.w,
          height: 34.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/adira_logo_yellow.png"))),
        ),
        SizedBox(
          height: 35.h,
        ),
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontSize: 18.w,
            fontWeight: bold,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
