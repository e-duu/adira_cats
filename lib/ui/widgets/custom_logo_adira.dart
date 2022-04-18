import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
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
          width: double.infinity,
          height: 114.h,
          padding: EdgeInsets.only(
            bottom: 30.h,
            top: defaultMargin.h,
            left: defaultMargin.w,
            right: defaultMargin.w,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.r),
              bottomRight: Radius.circular(18.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(),
              Container(
                width: 150.w,
                height: 32.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/adira_logo_white.png',
                    ),
                  ),
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 49.h,
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
